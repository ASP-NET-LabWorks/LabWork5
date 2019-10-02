using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections.Generic;

namespace LabWork5
{
    public partial class _Default : Page
    {
        private Dictionary<string, TableRow> controls = new Dictionary<string, TableRow>();

        protected void Page_Load(object sender, EventArgs e)
        {
            controls.Add("reset", TableControls.Rows[1]);
            controls.Add("button", TableControls.Rows[2]);
            controls.Add("submit", TableControls.Rows[3]);
            controls.Add("file", TableControls.Rows[4]);
            controls.Add("text", TableControls.Rows[5]);
            controls.Add("password", TableControls.Rows[6]);
            controls.Add("checkbox", TableControls.Rows[7]);
            controls.Add("radio", TableControls.Rows[8]);
            controls.Add("textarea", TableControls.Rows[9]);
            controls.Add("select", TableControls.Rows[10]);

            foreach (TableRow row in controls.Values)
            {
                var cell3 = new TableCell();
                cell3.Text = "✖";
                var cell4 = new TableCell();
                cell4.Text = "✖";
                row.Cells.Add(cell3);
                row.Cells.Add(cell4);
            }
        }

        protected void OnServerClick(object sender, EventArgs e)
        {
            var controlName = ((Control)sender).ID.ToLower();
            if (controlName.Contains("radio"))
                controlName = "radio";
            controls[controlName].Cells[2].Text = "✔";
        }

        protected void OnServerChange(object sender, EventArgs e)
        {
            var controlName = ((Control)sender).ID.ToLower();
            if (controlName.Contains("radio"))
                controlName = "radio";
            controls[controlName].Cells[3].Text = "✔";
        }
    }
}