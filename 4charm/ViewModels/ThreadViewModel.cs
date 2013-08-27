﻿using _4charm.Models;
using System.Linq;
using System.Windows.Media;

namespace _4charm.ViewModels
{
    class ThreadViewModel : ViewModelBase
    {
        public string BoardName
        {
            get { return GetProperty<string>(); }
            set { SetProperty(value); }
        }
        public bool IsWatchlisted
        {
            get { return TransitorySettingsManager.Current.Watchlist.Count(x => x.BoardName == _thread.Board.Name && x.Number == _thread.Number) > 0; }
        }
        public ulong Number
        {
            get { return GetProperty<ulong>(); }
            set { SetProperty(value); }
        }

        public Brush Background
        {
            get { return _thread.Board.Brush; }
        }

        public PostViewModel InitialPost
        {
            get { return GetProperty<PostViewModel>(); }
            set { SetProperty(value); }
        }

        private Thread _thread;

        public ThreadViewModel(Thread t)
        {
            _thread = t;

            BoardName = t.Board.Name;
            Number = t.Number;

            Post initial = t.Posts.FirstOrDefault().Value;
            if (initial != null) InitialPost = new PostViewModel(initial, null);
        }

        ~ThreadViewModel()
        {
            //System.Diagnostics.Debug.WriteLine("Disposing thread VM");
        }

        public void LoadImage(int displayWidth = 100)
        {
            if (InitialPost != null) InitialPost.LoadImage(displayWidth);
        }

        public void UnloadImage()
        {
            if (InitialPost != null) InitialPost.UnloadImage();
        }
    }
}
