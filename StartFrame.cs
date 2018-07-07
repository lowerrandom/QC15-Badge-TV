﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows.Forms;

using QC15_TV_Forms;

namespace QC15_TV_Forms
{
    public partial class StartFrame : Form
    {
        FormState formState = new FormState();
        private Thread workerThread = null;
        private bool stopProcess = false;

        // Declare a delegate used to communicate with the UI thread
        private delegate void UpdateStatusDelegate();
        private UpdateStatusDelegate updateStatusDelegate = null;

        public StartFrame()
        {
            InitializeComponent();
            // Initialise the delegate
            this.updateStatusDelegate = new UpdateStatusDelegate(this.UpdateStatus);
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            headingCenter.Hide();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            formState.Maximize(this);
            btnFullScreen.Hide();
            btnRestore.Hide();
            headingCenter.Show();

            displayFile.Text = "Some Cool Test";


            this.stopProcess = false;

            // Initialise and start worker thread
            this.workerThread = new Thread(new ThreadStart(this.HeavyOperation));
            this.workerThread.Start();

        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            this.stopProcess = true;
            formState.Restore(this);
            btnFullScreen.Show();
            btnRestore.Show();
            headingCenter.Hide();

        }

        private void HeavyOperation()
        {
            // Example heavy operation
            for (int i = 0; i <= 999999; i++)
            {
                // Check if Stop button was clicked
                if (!this.stopProcess)
                {
                    // Show progress
                    this.Invoke(this.updateStatusDelegate);
                }
                else
                {
                    // Stop heavy operation
                    this.workerThread.Abort();
                }
            }
        }

        private void UpdateStatus()
        {
            this.displayFile.Text += "*";
        }

    }
}