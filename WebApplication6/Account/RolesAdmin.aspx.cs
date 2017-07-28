using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication6.Models;

namespace WebApplication6.Account
{
    public partial class RolesAdmin : System.Web.UI.Page
    {
        ApplicationDbContext context = new ApplicationDbContext();
        IdentityResult IdRoleResult;
        IdentityResult IdUserResult;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonRolechuangjian_Click(object sender, EventArgs e)
        {
            var roleStore = new RoleStore<IdentityRole>(context);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            if (!roleManager.RoleExists(TextBoxRoleName.Text))
            {
                var IdRoleResult = roleManager.Create(new IdentityRole { Name = TextBoxRoleName.Text });
                Labelcjts.Text = "角色已经创建完成";
            }
            else
            {
                Labelcjts.Text = "该角色已存在，无需创建。";
            }
        }

        protected void Buttonjuesefenpei_Click(object sender, EventArgs e)
        {
            var roleStore = new RoleStore<IdentityRole>(context);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            var userManager = new UserManager<ApplicationUser>(new UserStore<ApplicationUser>(context));
            if (!userManager.IsInRole(userManager.FindByName(yonghumingcheng.Text).Id, juesemingcheng.Text))
            {
                IdUserResult = userManager.AddToRole(userManager.FindByName(yonghumingcheng.Text).Id, juesemingcheng.Text);
                Labelhrts.Text = "用户划入角色完成";
            }
        }

        protected void Buttonjueseshanchu_Click(object sender, EventArgs e)
        {
            var roleStore = new RoleStore<IdentityRole>(context);
            var roleManager = new RoleManager<IdentityRole>(roleStore);
            IdRoleResult = roleManager.Delete(new IdentityRole { Name = TextBoxjueseshanchu.Text });
            Labelcjts.Text = "角色已经删除完成";
        }
    }
}