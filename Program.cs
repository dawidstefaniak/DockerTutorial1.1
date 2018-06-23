using System;

namespace DockerTutorial1._1
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Write your name: ");
            var name = Console.ReadLine();
            Console.WriteLine($"Hello {name}!");
            Console.WriteLine($"Your environment is: " + Environment.OSVersion);
            Console.ReadKey();
        }
    }
}