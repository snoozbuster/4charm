﻿using System.IO;
using System.Threading;
using System.Threading.Tasks;

namespace _4charm.Controls
{
    interface IPreloadedImage
    {
        Task SetStreamSource(Stream source, string fileType);
        void UnloadStreamSource();
    }
}
