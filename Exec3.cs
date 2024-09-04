// See https://aka.ms/new-console-template for more information

namespace TargetResposta
{

    
   class Exercicio1
    {
        static void Main(string[] args)
        {
            int INDICE = 13, SOMA = 0, K = 0;
            while (K < INDICE)
            {
                K = (K + 1);
                SOMA = (K + SOMA);
            }
            Console.WriteLine(SOMA);
        }
    }
}
