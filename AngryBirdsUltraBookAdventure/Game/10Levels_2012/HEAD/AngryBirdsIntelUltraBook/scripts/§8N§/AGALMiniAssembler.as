package §8N§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §2A§:Dictionary;
      
      private static const §"O§:Dictionary;
      
      private static const §5!=§:Dictionary;
      
      private static const §0U§:int = 4;
      
      private static const §]D§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §]n§:uint = 12;
      
      private static const §!b§:uint = 16;
      
      private static const §3g§:uint = 20;
      
      private static const §&@§:uint = 24;
      
      private static const §-!g§:uint = 28;
      
      private static const §;!§:uint = 1;
      
      private static const §1!k§:uint = 2;
      
      private static const § !D§:uint = 32;
      
      private static const §,u§:uint = 64;
      
      private static const §=!i§:uint = 1;
      
      private static const §=3§:uint = 2;
      
      private static const §!Y§:uint = 4;
      
      private static const §2<§:uint = 8;
      
      private static const §[0§:uint = 16;
      
      private static const §=v§:uint = 32;
      
      private static const §=!E§:uint = 128;
      
      private static const §0!,§:String = "mov";
      
      private static const §&!+§:String = "add";
      
      private static const §,!C§:String = "sub";
      
      private static const §[!^§:String = "mul";
      
      private static const §`4§:String = "div";
      
      private static const §2!W§:String = "rcp";
      
      private static const §8O§:String = "min";
      
      private static const §6o§:String = "max";
      
      private static const §9!i§:String = "frc";
      
      private static const §`!>§:String = "sqt";
      
      private static const §&o§:String = "rsq";
      
      private static const §+!#§:String = "pow";
      
      private static const §^t§:String = "log";
      
      private static const §2=§:String = "exp";
      
      private static const §#H§:String = "nrm";
      
      private static const §'!2§:String = "sin";
      
      private static const §,!1§:String = "cos";
      
      private static const §`!,§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §4Z§:String = "abs";
      
      private static const §7!A§:String = "neg";
      
      private static const §%J§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §]!"§:String = "ifz";
      
      private static const §1l§:String = "inz";
      
      private static const §-!G§:String = "ife";
      
      private static const §3M§:String = "ine";
      
      private static const §9!_§:String = "ifg";
      
      private static const §%§:String = "ifl";
      
      private static const § F§:String = "ieg";
      
      private static const §?X§:String = "iel";
      
      private static const §,i§:String = "els";
      
      private static const §for §:String = "eif";
      
      private static const §!!0§:String = "rep";
      
      private static const §^!"§:String = "erp";
      
      private static const §@V§:String = "brk";
      
      private static const §,!N§:String = "kil";
      
      private static const §break§:String = "tex";
      
      private static const §23§:String = "sge";
      
      private static const §`!D§:String = "slt";
      
      private static const § Y§:String = "sgn";
      
      private static const §7X§:String = "va";
      
      private static const §>J§:String = "vc";
      
      private static const §#!Q§:String = "vt";
      
      private static const §`q§:String = "op";
      
      private static const §-!%§:String = "v";
      
      private static const §1!!§:String = "fc";
      
      private static const §9q§:String = "ft";
      
      private static const §'!C§:String = "fs";
      
      private static const §`?§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §=! §:String = "cube";
      
      private static const §%!P§:String = "mipnearest";
      
      private static const §8$§:String = "miplinear";
      
      private static const §8t§:String = "mipnone";
      
      private static const §0!X§:String = "nomip";
      
      private static const §#!3§:String = "nearest";
      
      private static const §`8§:String = "linear";
      
      private static const §0`§:String = "centroid";
      
      private static const §-j§:String = "single";
      
      private static const § ! §:String = "depth";
      
      private static const §8! §:String = "repeat";
      
      private static const §'!e§:String = "wrap";
      
      private static const §;u§:String = "clamp";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            initialized = false;
            loop0:
            while(true)
            {
               §2A§ = new Dictionary();
               loop1:
               while(true)
               {
                  §"O§ = new Dictionary();
                  loop2:
                  while(true)
                  {
                     §5!=§ = new Dictionary();
                     loop3:
                     while(true)
                     {
                        §0U§ = 4;
                        loop4:
                        while(true)
                        {
                           §]D§ = 256;
                           loop5:
                           while(true)
                           {
                              FRAGMENT = "fragment";
                              while(true)
                              {
                                 VERTEX = "vertex";
                                 loop7:
                                 while(true)
                                 {
                                    §]n§ = 12;
                                    while(true)
                                    {
                                       §!b§ = 16;
                                       addr860:
                                       while(true)
                                       {
                                          §3g§ = 20;
                                          addr855:
                                          while(true)
                                          {
                                             §&@§ = 24;
                                          }
                                       }
                                       addr598:
                                       if(_loc1_ && _loc1_)
                                       {
                                          continue;
                                       }
                                       §1l§ = "inz";
                                       loop51:
                                       while(_loc2_ || AGALMiniAssembler)
                                       {
                                          §-!G§ = "ife";
                                          loop52:
                                          while(true)
                                          {
                                             if(!(_loc1_ && _loc1_))
                                             {
                                                addr560:
                                                if(_loc1_ && _loc2_)
                                                {
                                                   break;
                                                }
                                                §3M§ = "ine";
                                                while(true)
                                                {
                                                   §9!_§ = "ifg";
                                                   continue loop3;
                                                }
                                                addr548:
                                             }
                                             loop46:
                                             while(true)
                                             {
                                                M33 = "m33";
                                                loop47:
                                                while(true)
                                                {
                                                   M44 = "m44";
                                                   loop48:
                                                   for(; _loc2_; while(true)
                                                   {
                                                      if(!(_loc1_ && _loc1_))
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            §-!%§ = "v";
                                                            §§goto(addr343);
                                                         }
                                                         break;
                                                      }
                                                      continue loop48;
                                                      §§goto(addr143);
                                                   },§§goto(addr648))
                                                   {
                                                      if(_loc1_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      M34 = "m34";
                                                      loop49:
                                                      while(true)
                                                      {
                                                         if(_loc2_)
                                                         {
                                                            addr612:
                                                            if(!(_loc2_ || _loc2_))
                                                            {
                                                               break;
                                                            }
                                                            §]!"§ = "ifz";
                                                            continue loop47;
                                                         }
                                                         loop43:
                                                         while(true)
                                                         {
                                                            §4Z§ = "abs";
                                                            addr648:
                                                            loop44:
                                                            while(!_loc1_)
                                                            {
                                                               addr650:
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  §7!A§ = "neg";
                                                                  while(true)
                                                                  {
                                                                     §%J§ = "sat";
                                                                     continue loop46;
                                                                     addr591:
                                                                     if(!(_loc2_ || AGALMiniAssembler))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§goto(addr598);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §,u§ = 64;
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §=!i§ = 1;
                                                                        addr820:
                                                                        while(true)
                                                                        {
                                                                           §=3§ = 2;
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              §!Y§ = 4;
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 §2<§ = 8;
                                                                                 break loop44;
                                                                                 addr440:
                                                                                 if(!(_loc2_ || _loc1_))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §23§ = "sge";
                                                                                 loop65:
                                                                                 for(; _loc2_; if(_loc1_ && _loc1_)
                                                                                 {
                                                                                    continue;
                                                                                 },§§goto(addr51))
                                                                                 {
                                                                                    §`!D§ = "slt";
                                                                                    loop66:
                                                                                    while(true)
                                                                                    {
                                                                                       § Y§ = "sgn";
                                                                                       loop67:
                                                                                       while(true)
                                                                                       {
                                                                                          §7X§ = "va";
                                                                                          loop68:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                continue loop67;
                                                                                             }
                                                                                             addr397:
                                                                                             if(!(_loc1_ && _loc2_))
                                                                                             {
                                                                                                if(_loc1_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §>J§ = "vc";
                                                                                                continue;
                                                                                             }
                                                                                             addr514:
                                                                                             loop57:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc1_ && _loc1_))
                                                                                                {
                                                                                                   §,i§ = "els";
                                                                                                   loop58:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc1_)
                                                                                                      {
                                                                                                         continue loop47;
                                                                                                      }
                                                                                                      if(!(_loc2_ || _loc1_))
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §for § = "eif";
                                                                                                      loop59:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc1_ && AGALMiniAssembler))
                                                                                                         {
                                                                                                            §!!0§ = "rep";
                                                                                                            addr476:
                                                                                                            while(!(_loc1_ && AGALMiniAssembler))
                                                                                                            {
                                                                                                               §^!"§ = "erp";
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §@V§ = "brk";
                                                                                                                  addr466:
                                                                                                                  addr271:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §,!N§ = "kil";
                                                                                                                     addr452:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc1_ && AGALMiniAssembler))
                                                                                                                        {
                                                                                                                           if(!_loc2_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                              addr438:
                                                                                                                           }
                                                                                                                           §break§ = "tex";
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 §§goto(addr440);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §2=§ = "exp";
                                                                                                                                    break loop59;
                                                                                                                                 }
                                                                                                                                 addr710:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop19;
                                                                                                                        }
                                                                                                                        addr531:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           § F§ = "ieg";
                                                                                                                           break loop65;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop16;
                                                                                                                  }
                                                                                                                  if(_loc2_ || _loc1_)
                                                                                                                  {
                                                                                                                     continue loop49;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                               §^t§ = "log";
                                                                                                               §§goto(addr710);
                                                                                                               §§goto(addr476);
                                                                                                            }
                                                                                                            addr476:
                                                                                                            addr715:
                                                                                                         }
                                                                                                         break;
                                                                                                         addr343:
                                                                                                         loop72:
                                                                                                         for(; !(_loc1_ && _loc2_); while(true)
                                                                                                         {
                                                                                                            if(!(_loc2_ || _loc1_))
                                                                                                            {
                                                                                                               continue loop72;
                                                                                                            }
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §%!P§ = "mipnearest";
                                                                                                               §§goto(addr212);
                                                                                                            }
                                                                                                            §§goto(addr691);
                                                                                                         },§§goto(addr860))
                                                                                                         {
                                                                                                            §1!!§ = "fc";
                                                                                                            loop73:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc2_)
                                                                                                               {
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                               addr329:
                                                                                                               if(_loc2_ || AGALMiniAssembler)
                                                                                                               {
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §9q§ = "ft";
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc1_)
                                                                                                                     {
                                                                                                                        addr315:
                                                                                                                        if(_loc1_ && AGALMiniAssembler)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §'!C§ = "fs";
                                                                                                                        continue loop73;
                                                                                                                     }
                                                                                                                     continue loop66;
                                                                                                                     addr72:
                                                                                                                     if(_loc1_ && _loc2_)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     addr79:
                                                                                                                     if(_loc2_ || AGALMiniAssembler)
                                                                                                                     {
                                                                                                                        if(_loc2_)
                                                                                                                        {
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              §;u§ = "clamp";
                                                                                                                              addr90:
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 addr30:
                                                                                                                                 if(!(_loc2_ || AGALMiniAssembler))
                                                                                                                                 {
                                                                                                                                    loop86:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §-j§ = "single";
                                                                                                                                       loop87:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc1_)
                                                                                                                                          {
                                                                                                                                             if(_loc2_)
                                                                                                                                             {
                                                                                                                                                addr136:
                                                                                                                                                if(!(_loc1_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   addr143:
                                                                                                                                                   if(!(_loc2_ || _loc2_))
                                                                                                                                                   {
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   § ! § = "depth";
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                addr186:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §0!X§ = "nomip";
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc1_)
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc2_)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc1_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop18;
                                                                                                                                                                           }
                                                                                                                                                                           addr734:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §`!>§ = "sqt";
                                                                                                                                                                              addr729:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §&o§ = "rsq";
                                                                                                                                                                                 break loop52;
                                                                                                                                                                                 §§goto(addr329);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        while(_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           §,!1§ = "cos";
                                                                                                                                                                           break loop57;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop4;
                                                                                                                                                                        addr684:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr466);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr452);
                                                                                                                                                               }
                                                                                                                                                               continue loop18;
                                                                                                                                                               addr212:
                                                                                                                                                            }
                                                                                                                                                            addr193:
                                                                                                                                                            if(!(_loc1_ && AGALMiniAssembler))
                                                                                                                                                            {
                                                                                                                                                               continue loop58;
                                                                                                                                                            }
                                                                                                                                                            addr255:
                                                                                                                                                            addr749:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc1_ && _loc1_))
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  §=! § = "cube";
                                                                                                                                                                  continue loop72;
                                                                                                                                                               }
                                                                                                                                                               addr667:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  DP4 = "dp4";
                                                                                                                                                                  continue loop43;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr193);
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §8O§ = "min";
                                                                                                                                                               break loop48;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop58;
                                                                                                                                                         addr191:
                                                                                                                                                      }
                                                                                                                                                      if(_loc1_)
                                                                                                                                                      {
                                                                                                                                                         continue loop72;
                                                                                                                                                      }
                                                                                                                                                      if(_loc1_ && _loc1_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      §#!3§ = "nearest";
                                                                                                                                                      addr116:
                                                                                                                                                      if(_loc2_ || AGALMiniAssembler)
                                                                                                                                                      {
                                                                                                                                                         if(_loc2_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               §8! § = "repeat";
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc2_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc1_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §'!e§ = "wrap";
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop87;
                                                                                                                                                               }
                                                                                                                                                               continue loop5;
                                                                                                                                                               addr95:
                                                                                                                                                            }
                                                                                                                                                            continue loop51;
                                                                                                                                                         }
                                                                                                                                                         continue loop52;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr672:
                                                                                                                                                   addr850:
                                                                                                                                                   while(_loc2_)
                                                                                                                                                   {
                                                                                                                                                      DP3 = "dp3";
                                                                                                                                                      §§goto(addr667);
                                                                                                                                                      §§goto(addr174);
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §-!g§ = 28;
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §;!§ = 1;
                                                                                                                                                         addr840:
                                                                                                                                                         addr691:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §1!k§ = 2;
                                                                                                                                                            break loop49;
                                                                                                                                                         }
                                                                                                                                                         while(_loc2_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            §'!2§ = "sin";
                                                                                                                                                            §§goto(addr684);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr136);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §`8§ = "linear";
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §0`§ = "centroid";
                                                                                                                                             continue loop86;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop48;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr37:
                                                                                                                                 if(_loc2_ || _loc1_)
                                                                                                                                 {
                                                                                                                                    continue loop65;
                                                                                                                                 }
                                                                                                                                 addr290:
                                                                                                                                 while(!_loc1_)
                                                                                                                                 {
                                                                                                                                    D2 = "2d";
                                                                                                                                    §§goto(addr269);
                                                                                                                                    §§goto(addr37);
                                                                                                                                 }
                                                                                                                                 continue loop68;
                                                                                                                              }
                                                                                                                              §§goto(addr63);
                                                                                                                           }
                                                                                                                           §§goto(addr788);
                                                                                                                        }
                                                                                                                        §§goto(addr476);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc2_)
                                                                                                                        {
                                                                                                                           addr371:
                                                                                                                           if(!(_loc2_ || _loc1_))
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §`q§ = "op";
                                                                                                                           continue loop48;
                                                                                                                        }
                                                                                                                        §§goto(addr438);
                                                                                                                        §§goto(addr79);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §=v§ = 32;
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §=!E§ = 128;
                                                                                                                           §§goto(addr788);
                                                                                                                           addr51:
                                                                                                                           if(_loc2_ || AGALMiniAssembler)
                                                                                                                           {
                                                                                                                              return;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr371);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §`4§ = "div";
                                                                                                                     addr754:
                                                                                                                     while(!_loc1_)
                                                                                                                     {
                                                                                                                        §2!W§ = "rcp";
                                                                                                                        §§goto(addr749);
                                                                                                                     }
                                                                                                                     §§goto(addr855);
                                                                                                                     §§goto(addr315);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr729);
                                                                                                            }
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                      }
                                                                                                      while(!_loc1_)
                                                                                                      {
                                                                                                         §#H§ = "nrm";
                                                                                                         §§goto(addr691);
                                                                                                         §§goto(addr488);
                                                                                                      }
                                                                                                      addr488:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §[!^§ = "mul";
                                                                                                         §§goto(addr761);
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §,!C§ = "sub";
                                                                                                      §§goto(addr766);
                                                                                                      §§goto(addr502);
                                                                                                   }
                                                                                                   addr771:
                                                                                                }
                                                                                                break;
                                                                                                §§goto(addr397);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §`!,§ = "crs";
                                                                                                §§goto(addr672);
                                                                                                §§goto(addr514);
                                                                                             }
                                                                                             addr514:
                                                                                          }
                                                                                          §§goto(addr548);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §?X§ = "iel";
                                                                                    §§goto(addr514);
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr650);
                                                                  }
                                                                  addr830:
                                                               }
                                                            }
                                                            while(!_loc1_)
                                                            {
                                                               §[0§ = 16;
                                                               §§goto(addr798);
                                                            }
                                                            §§goto(addr820);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         § !D§ = 32;
                                                         §§goto(addr830);
                                                         §§goto(addr612);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §6o§ = "max";
                                                      break loop51;
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             if(_loc1_)
                                             {
                                                continue loop0;
                                             }
                                             §+!#§ = "pow";
                                             §§goto(addr715);
                                             §§goto(addr560);
                                          }
                                       }
                                       while(true)
                                       {
                                          §9!i§ = "frc";
                                          §§goto(addr734);
                                          §§goto(addr572);
                                       }
                                       addr572:
                                    }
                                 }
                                 if(!(_loc2_ || AGALMiniAssembler))
                                 {
                                    continue;
                                 }
                                 §8$§ = "miplinear";
                                 §§goto(addr191);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr850);
      }
      
      private var §5k§:ByteArray = null;
      
      private var §[!A§:String = "";
      
      private var §=!M§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§=!M§ = param1;
            do
            {
               §§push(initialized);
               if(_loc2_)
               {
                  §§push(!§§pop());
               }
               if(!§§pop())
               {
                  break;
               }
               if(_loc2_ || param1)
               {
                  continue loop0;
               }
               addr67:
            }
            while(!_loc2_);
            
            return;
         }
      }
      
      private static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            initialized = true;
            loop0:
            while(true)
            {
               §2A§[§0!,§] = new OpCode(§0!,§,2,0,0);
               loop1:
               while(true)
               {
                  §2A§[§&!+§] = new OpCode(§&!+§,3,1,0);
                  while(true)
                  {
                     §2A§[§,!C§] = new OpCode(§,!C§,3,2,0);
                     loop3:
                     while(true)
                     {
                        §2A§[§[!^§] = new OpCode(§[!^§,3,3,0);
                        loop4:
                        while(true)
                        {
                           §2A§[§`4§] = new OpCode(§`4§,3,4,0);
                           loop5:
                           while(true)
                           {
                              §2A§[§2!W§] = new OpCode(§2!W§,2,5,0);
                              while(true)
                              {
                                 §2A§[§8O§] = new OpCode(§8O§,3,6,0);
                                 loop7:
                                 while(true)
                                 {
                                    §2A§[§6o§] = new OpCode(§6o§,3,7,0);
                                    loop8:
                                    while(true)
                                    {
                                       §2A§[§9!i§] = new OpCode(§9!i§,2,8,0);
                                       loop9:
                                       while(true)
                                       {
                                          §2A§[§`!>§] = new OpCode(§`!>§,2,9,0);
                                          loop10:
                                          while(true)
                                          {
                                             §2A§[§&o§] = new OpCode(§&o§,2,10,0);
                                             loop11:
                                             while(true)
                                             {
                                                §2A§[§+!#§] = new OpCode(§+!#§,3,11,0);
                                                while(true)
                                                {
                                                   §2A§[§^t§] = new OpCode(§^t§,2,12,0);
                                                   loop18:
                                                   for(; !(_loc1_ && _loc1_); while(_loc2_ || _loc2_)
                                                   {
                                                      §2A§[§^!"§] = new OpCode(§^!"§,0,37,§=!E§ | §!Y§);
                                                      §§goto(addr832);
                                                      §§goto(addr753);
                                                   })
                                                   {
                                                      §2A§[DP3] = new OpCode(DP3,3,18,0);
                                                      loop19:
                                                      while(true)
                                                      {
                                                         §2A§[DP4] = new OpCode(DP4,3,19,0);
                                                         loop20:
                                                         while(true)
                                                         {
                                                            §2A§[§4Z§] = new OpCode(§4Z§,2,20,0);
                                                            loop21:
                                                            while(true)
                                                            {
                                                               §2A§[§7!A§] = new OpCode(§7!A§,2,21,0);
                                                               while(true)
                                                               {
                                                                  §2A§[§%J§] = new OpCode(§%J§,2,22,0);
                                                                  continue loop19;
                                                                  loop40:
                                                                  while(!(_loc1_ && _loc1_))
                                                                  {
                                                                     §2A§[§break§] = new OpCode(§break§,3,40,§=v§ | §2<§);
                                                                     loop41:
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_ || _loc1_)
                                                                        {
                                                                           addr760:
                                                                           if(!(_loc1_ && _loc2_))
                                                                           {
                                                                              §2A§[§23§] = new OpCode(§23§,3,41,0);
                                                                              loop42:
                                                                              while(_loc2_)
                                                                              {
                                                                                 §2A§[§`!D§] = new OpCode(§`!D§,3,42,0);
                                                                                 loop43:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc1_)
                                                                                    {
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §2A§[§ Y§] = new OpCode(§ Y§,2,43,0);
                                                                                       while(_loc2_)
                                                                                       {
                                                                                          §"O§[§7X§] = new Register(§7X§,"vertex attribute",0,7,§,u§ | §1!k§);
                                                                                          while(!_loc1_)
                                                                                          {
                                                                                             §"O§[§>J§] = new Register(§>J§,"vertex constant",1,127,§,u§ | §1!k§);
                                                                                             loop46:
                                                                                             while(true)
                                                                                             {
                                                                                                §"O§[§#!Q§] = new Register(§#!Q§,"vertex temporary",2,7,§,u§ | §;!§ | §1!k§);
                                                                                                loop47:
                                                                                                while(true)
                                                                                                {
                                                                                                   §"O§[§`q§] = new Register(§`q§,"vertex output",3,0,§,u§ | §;!§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §"O§[§-!%§] = new Register(§-!%§,"varying",4,7,§,u§ | § !D§ | §1!k§ | §;!§);
                                                                                                      continue loop46;
                                                                                                      loop57:
                                                                                                      for(; _loc2_ || AGALMiniAssembler; if(!(_loc2_ || _loc2_))
                                                                                                      {
                                                                                                         continue;
                                                                                                      },addr113:,if(!(_loc1_ && _loc2_))
                                                                                                      {
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            if(!_loc1_)
                                                                                                            {
                                                                                                               §5!=§[§'!e§] = new Sampler(§'!e§,§3g§,1);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc1_)
                                                                                                                  {
                                                                                                                     if(_loc1_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  addr426:
                                                                                                                  addr426:
                                                                                                                  while(!(_loc1_ && _loc1_))
                                                                                                                  {
                                                                                                                     §5!=§[D3] = new Sampler(D3,§]n§,2);
                                                                                                                     continue loop47;
                                                                                                                  }
                                                                                                                  continue loop46;
                                                                                                               }
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                            §§goto(addr1288);
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §2A§[§]!"§] = new OpCode(§]!"§,1,26,§=!E§ | §=3§ | §=!i§);
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         addr1100:
                                                                                                      },while(true)
                                                                                                      {
                                                                                                         §5!=§[D2] = new Sampler(D2,§]n§,0);
                                                                                                         §§goto(addr426);
                                                                                                         §§goto(addr113);
                                                                                                      })
                                                                                                      {
                                                                                                         §5!=§[§8$§] = new Sampler(§8$§,§&@§,2);
                                                                                                         loop58:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               continue loop43;
                                                                                                            }
                                                                                                            addr471:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc1_)
                                                                                                               {
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     continue loop11;
                                                                                                                  }
                                                                                                                  addr1137:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc1_)
                                                                                                                     {
                                                                                                                        continue loop10;
                                                                                                                     }
                                                                                                                     addr1316:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §2A§[§2=§] = new OpCode(§2=§,2,13,0);
                                                                                                                        addr1302:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §2A§[§#H§] = new OpCode(§#H§,2,14,0);
                                                                                                                           addr1288:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §2A§[§'!2§] = new OpCode(§'!2§,2,15,0);
                                                                                                                              addr1272:
                                                                                                                              while(_loc2_)
                                                                                                                              {
                                                                                                                                 §2A§[§,!1§] = new OpCode(§,!1§,2,16,0);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §2A§[§`!,§] = new OpCode(§`!,§,3,17,0);
                                                                                                                                    continue loop18;
                                                                                                                                    addr807:
                                                                                                                                    while(_loc2_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §2A§[§,!N§] = new OpCode(§,!N§,1,39,§=!E§ | §=v§);
                                                                                                                                       continue loop40;
                                                                                                                                       if(!(_loc1_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          addr573:
                                                                                                                                          if(!(_loc1_ && _loc2_))
                                                                                                                                          {
                                                                                                                                             continue loop8;
                                                                                                                                          }
                                                                                                                                          continue loop19;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(!(_loc1_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    §5!=§[§0`§] = new Sampler(§0`§,§!b§,1 << 0);
                                                                                                                                    loop63:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc1_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          addr211:
                                                                                                                                          if(_loc2_ || AGALMiniAssembler)
                                                                                                                                          {
                                                                                                                                             §5!=§[§-j§] = new Sampler(§-j§,§!b§,1 << 1);
                                                                                                                                             continue loop41;
                                                                                                                                          }
                                                                                                                                          addr1036:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §2A§[§3M§] = new OpCode(§3M§,2,29,§=!E§ | §=3§ | §=!i§);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §2A§[§9!_§] = new OpCode(§9!_§,2,30,§=!E§ | §=3§ | §=!i§);
                                                                                                                                                addr992:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc1_)
                                                                                                                                                   {
                                                                                                                                                      §2A§[§%§] = new OpCode(§%§,2,31,§=!E§ | §=3§ | §=!i§);
                                                                                                                                                      break loop58;
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                   addr384:
                                                                                                                                                   if(!(_loc1_ && _loc1_))
                                                                                                                                                   {
                                                                                                                                                      §5!=§[§%!P§] = new Sampler(§%!P§,§&@§,1);
                                                                                                                                                      continue loop57;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr211);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §2A§[§@V§] = new OpCode(§@V§,0,38,§=!E§);
                                                                                                                                             §§goto(addr807);
                                                                                                                                             continue loop63;
                                                                                                                                          }
                                                                                                                                          addr832:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop0;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop3;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop10;
                                                                                                               }
                                                                                                               continue loop20;
                                                                                                            }
                                                                                                            addr310:
                                                                                                            continue loop11;
                                                                                                            while(_loc2_ || _loc2_)
                                                                                                            {
                                                                                                               §5!=§[§0!X§] = new Sampler(§0!X§,§&@§,0);
                                                                                                               loop60:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc2_ || AGALMiniAssembler))
                                                                                                                  {
                                                                                                                     while(!_loc1_)
                                                                                                                     {
                                                                                                                        §"O§[§'!C§] = new Register(§'!C§,"texture sampler",5,7,§ !D§ | §1!k§);
                                                                                                                        §§goto(addr471);
                                                                                                                        continue loop60;
                                                                                                                     }
                                                                                                                     continue loop42;
                                                                                                                     addr504:
                                                                                                                  }
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     continue loop1;
                                                                                                                  }
                                                                                                                  §§goto(addr1302);
                                                                                                               }
                                                                                                               continue loop1;
                                                                                                               if(!(_loc2_ || _loc2_))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §5!=§[§8! §] = new Sampler(§8! §,§3g§,1);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc1_)
                                                                                                                  {
                                                                                                                     continue loop57;
                                                                                                                  }
                                                                                                                  §§goto(addr204);
                                                                                                               }
                                                                                                               §§goto(addr1288);
                                                                                                            }
                                                                                                         }
                                                                                                         while(_loc2_)
                                                                                                         {
                                                                                                            §2A§[§ F§] = new OpCode(§ F§,2,32,§=!E§ | §=3§ | §=!i§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §2A§[§?X§] = new OpCode(§?X§,2,33,§=!E§ | §=3§ | §=!i§);
                                                                                                               break loop41;
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop5;
                                                                                                      }
                                                                                                   }
                                                                                                   while(_loc2_ || _loc1_)
                                                                                                   {
                                                                                                      §5!=§[§=! §] = new Sampler(§=! §,§]n§,1);
                                                                                                      §§goto(addr377);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          continue loop21;
                                                                                       }
                                                                                       continue loop9;
                                                                                    }
                                                                                    §§goto(addr948);
                                                                                 }
                                                                                 continue loop4;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §2A§[§!!0§] = new OpCode(§!!0§,1,36,§=!E§ | §=3§ | §=!i§);
                                                                                 continue loop18;
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop18;
                                                                     }
                                                                     while(_loc2_ || _loc2_)
                                                                     {
                                                                        §2A§[§,i§] = new OpCode(§,i§,0,34,§=!E§ | §=3§ | §!Y§);
                                                                        §§goto(addr899);
                                                                        §§goto(addr760);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §2A§[§-!G§] = new OpCode(§-!G§,2,28,§=!E§ | §=3§ | §=!i§);
                                                                        §§goto(addr1036);
                                                                        §§goto(addr920);
                                                                     }
                                                                     addr920:
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     if(!(_loc2_ || _loc1_))
                     {
                        continue;
                     }
                     §"O§[§1!!§] = new Register(§1!!§,"fragment constant",1,27,§ !D§ | §1!k§);
                     §§goto(addr525);
                  }
               }
            }
         }
         §§goto(addr1316);
      }
      
      public function get error() : String
      {
         return this.§[!A§;
      }
      
      public function get §default§() : ByteArray
      {
         return this.§5k§;
      }
      
      public function §"!T§(param1:String, param2:String, param3:Boolean = false) : ByteArray
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Tip: You can try enabling "Automatic deobfuscation" in Settings
          * Error type: ExecutionException (java.lang.StackOverflowError)
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
   }
}

class OpCode
{
    
   
   private var _emitCode:uint;
   
   private var _flags:uint;
   
   private var _name:String;
   
   private var _numRegister:uint;
   
   function OpCode(param1:String, param2:uint, param3:uint, param4:uint)
   {
      super();
      this._name = param1;
      this._numRegister = param2;
      this._emitCode = param3;
      this._flags = param4;
   }
   
   public function get emitCode() : uint
   {
      return this._emitCode;
   }
   
   public function get flags() : uint
   {
      return this._flags;
   }
   
   public function get name() : String
   {
      return this._name;
   }
   
   public function get numRegister() : uint
   {
      return this._numRegister;
   }
   
   public function toString() : String
   {
      return "[OpCode name=\"" + this._name + "\", numRegister=" + this._numRegister + ", emitCode=" + this._emitCode + ", flags=" + this._flags + "]";
   }
}

class Register
{
    
   
   private var _emitCode:uint;
   
   private var _name:String;
   
   private var _longName:String;
   
   private var _flags:uint;
   
   private var _range:uint;
   
   function Register(param1:String, param2:String, param3:uint, param4:uint, param5:uint)
   {
      super();
      this._name = param1;
      this._longName = param2;
      this._emitCode = param3;
      this._range = param4;
      this._flags = param5;
   }
   
   public function get emitCode() : uint
   {
      return this._emitCode;
   }
   
   public function get longName() : String
   {
      return this._longName;
   }
   
   public function get name() : String
   {
      return this._name;
   }
   
   public function get flags() : uint
   {
      return this._flags;
   }
   
   public function get range() : uint
   {
      return this._range;
   }
   
   public function toString() : String
   {
      return "[Register name=\"" + this._name + "\", longName=\"" + this._longName + "\", emitCode=" + this._emitCode + ", range=" + this._range + ", flags=" + this._flags + "]";
   }
}

class Sampler
{
    
   
   private var _flag:uint;
   
   private var _mask:uint;
   
   private var _name:String;
   
   function Sampler(param1:String, param2:uint, param3:uint)
   {
      super();
      this._name = param1;
      this._flag = param2;
      this._mask = param3;
   }
   
   public function get flag() : uint
   {
      return this._flag;
   }
   
   public function get mask() : uint
   {
      return this._mask;
   }
   
   public function get name() : String
   {
      return this._name;
   }
   
   public function toString() : String
   {
      return "[Sampler name=\"" + this._name + "\", flag=\"" + this._flag + "\", mask=" + this.mask + "]";
   }
}
