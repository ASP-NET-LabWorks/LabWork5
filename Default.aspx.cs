using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabWork5
{
    public partial class _Default : Page
    {
        private string[] controls = {
            "reset",
            "button",
            "submit",
            "file",
            "text",
            "password",
            "checkbox",
            "radio",
            "textarea",
            "select"
        };

        protected void Page_Load(object sender, EventArgs e)
        {
            for (var i = 1; i < Table.Rows.Count; i++)
            {
                var cell3 = new TableCell();
                cell3.Text = "✖";
                var cell4 = new TableCell();
                cell4.Text = "✖";
                Table.Rows[i].Cells.Add(cell3);
                Table.Rows[i].Cells.Add(cell4);
            }
        }

        protected void OnServerClick(object sender, EventArgs e)
        {
            var controlName = ((Control)sender).ID.ToLower();
            if (controlName.Contains("radio"))
                controlName = "radio";
            Table.Rows[Array.IndexOf(controls, controlName) + 1].Cells[2].Text = "✔";
        }

        protected void OnServerChange(object sender, EventArgs e)
        {
            var controlName = ((Control)sender).ID.ToLower();
            if (controlName.Contains("radio"))
                controlName = "radio";
            Table.Rows[Array.IndexOf(controls, controlName) + 1].Cells[3].Text = "✔";
        }
    }
}