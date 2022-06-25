package §5!G§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §"Q§:Dictionary;
      
      private static const §3'§:Dictionary;
      
      private static const §`v§:Dictionary;
      
      private static const §;!>§:int = 4;
      
      private static const §#!4§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §7!3§:uint = 12;
      
      private static const §8!C§:uint = 16;
      
      private static const §<!N§:uint = 20;
      
      private static const §0^§:uint = 24;
      
      private static const §#!_§:uint = 28;
      
      private static const §]!V§:uint = 1;
      
      private static const § H§:uint = 2;
      
      private static const §5=§:uint = 32;
      
      private static const §+O§:uint = 64;
      
      private static const §"!;§:uint = 1;
      
      private static const § r§:uint = 2;
      
      private static const §-!D§:uint = 4;
      
      private static const §1!%§:uint = 8;
      
      private static const §=J§:uint = 16;
      
      private static const §#x§:uint = 32;
      
      private static const §^!h§:uint = 128;
      
      private static const §67§:String = "mov";
      
      private static const §[!c§:String = "add";
      
      private static const §1C§:String = "sub";
      
      private static const §`!3§:String = "mul";
      
      private static const § !'§:String = "div";
      
      private static const §=!B§:String = "rcp";
      
      private static const §,!§:String = "min";
      
      private static const §6!H§:String = "max";
      
      private static const §=!V§:String = "frc";
      
      private static const §'!5§:String = "sqt";
      
      private static const §try§:String = "rsq";
      
      private static const §]l§:String = "pow";
      
      private static const §5c§:String = "log";
      
      private static const §>R§:String = "exp";
      
      private static const §"J§:String = "nrm";
      
      private static const §#S§:String = "sin";
      
      private static const §`k§:String = "cos";
      
      private static const §^!Z§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §9Q§:String = "abs";
      
      private static const §2§:String = "neg";
      
      private static const §<G§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §;D§:String = "ifz";
      
      private static const §each §:String = "inz";
      
      private static const §+!A§:String = "ife";
      
      private static const §3f§:String = "ine";
      
      private static const §]!!§:String = "ifg";
      
      private static const §6!k§:String = "ifl";
      
      private static const §9e§:String = "ieg";
      
      private static const §8!f§:String = "iel";
      
      private static const §7!^§:String = "els";
      
      private static const §=j§:String = "eif";
      
      private static const §&X§:String = "rep";
      
      private static const §3q§:String = "erp";
      
      private static const §4!#§:String = "brk";
      
      private static const §>!!§:String = "kil";
      
      private static const §`!N§:String = "tex";
      
      private static const §#!5§:String = "sge";
      
      private static const § !?§:String = "slt";
      
      private static const §?!6§:String = "sgn";
      
      private static const §3!%§:String = "va";
      
      private static const §]!9§:String = "vc";
      
      private static const §]!'§:String = "vt";
      
      private static const §]!H§:String = "op";
      
      private static const §0,§:String = "v";
      
      private static const §#?§:String = "fc";
      
      private static const § f§:String = "ft";
      
      private static const §9c§:String = "fs";
      
      private static const §',§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §"q§:String = "cube";
      
      private static const §`B§:String = "mipnearest";
      
      private static const §4e§:String = "miplinear";
      
      private static const §^!i§:String = "mipnone";
      
      private static const §2!X§:String = "nomip";
      
      private static const §7!N§:String = "nearest";
      
      private static const §>T§:String = "linear";
      
      private static const §<9§:String = "centroid";
      
      private static const §`!g§:String = "single";
      
      private static const §<P§:String = "depth";
      
      private static const §@!7§:String = "repeat";
      
      private static const §3!g§:String = "wrap";
      
      private static const §4L§:String = "clamp";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            initialized = false;
            loop0:
            while(true)
            {
               §"Q§ = new Dictionary();
               loop1:
               while(true)
               {
                  §3'§ = new Dictionary();
                  loop2:
                  while(true)
                  {
                     §`v§ = new Dictionary();
                     loop3:
                     while(true)
                     {
                        §;!>§ = 4;
                        loop4:
                        while(true)
                        {
                           §#!4§ = 256;
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
                                    §7!3§ = 12;
                                    while(true)
                                    {
                                       §8!C§ = 16;
                                       addr860:
                                       while(true)
                                       {
                                          §<!N§ = 20;
                                          addr855:
                                          while(true)
                                          {
                                             §0^§ = 24;
                                          }
                                       }
                                       addr598:
                                       if(_loc1_ && _loc1_)
                                       {
                                          continue;
                                       }
                                       §each § = "inz";
                                       loop51:
                                       while(_loc2_ || AGALMiniAssembler)
                                       {
                                          §+!A§ = "ife";
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
                                                §3f§ = "ine";
                                                while(true)
                                                {
                                                   §]!!§ = "ifg";
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
                                                            §0,§ = "v";
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
                                                            §;D§ = "ifz";
                                                            continue loop47;
                                                         }
                                                         loop43:
                                                         while(true)
                                                         {
                                                            §9Q§ = "abs";
                                                            addr648:
                                                            loop44:
                                                            while(!_loc1_)
                                                            {
                                                               addr650:
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  §2§ = "neg";
                                                                  while(true)
                                                                  {
                                                                     §<G§ = "sat";
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
                                                                     §+O§ = 64;
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §"!;§ = 1;
                                                                        addr820:
                                                                        while(true)
                                                                        {
                                                                           § r§ = 2;
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              §-!D§ = 4;
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 §1!%§ = 8;
                                                                                 break loop44;
                                                                                 addr440:
                                                                                 if(!(_loc2_ || _loc1_))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §#!5§ = "sge";
                                                                                 loop65:
                                                                                 for(; _loc2_; if(_loc1_ && _loc1_)
                                                                                 {
                                                                                    continue;
                                                                                 },§§goto(addr51))
                                                                                 {
                                                                                    § !?§ = "slt";
                                                                                    loop66:
                                                                                    while(true)
                                                                                    {
                                                                                       §?!6§ = "sgn";
                                                                                       loop67:
                                                                                       while(true)
                                                                                       {
                                                                                          §3!%§ = "va";
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
                                                                                                §]!9§ = "vc";
                                                                                                continue;
                                                                                             }
                                                                                             addr514:
                                                                                             loop57:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc1_ && _loc1_))
                                                                                                {
                                                                                                   §7!^§ = "els";
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
                                                                                                      §=j§ = "eif";
                                                                                                      loop59:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc1_ && AGALMiniAssembler))
                                                                                                         {
                                                                                                            §&X§ = "rep";
                                                                                                            addr476:
                                                                                                            while(!(_loc1_ && AGALMiniAssembler))
                                                                                                            {
                                                                                                               §3q§ = "erp";
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §4!#§ = "brk";
                                                                                                                  addr466:
                                                                                                                  addr271:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §>!!§ = "kil";
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
                                                                                                                           §`!N§ = "tex";
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
                                                                                                                                    §>R§ = "exp";
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
                                                                                                                           §9e§ = "ieg";
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
                                                                                                               §5c§ = "log";
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
                                                                                                               §`B§ = "mipnearest";
                                                                                                               §§goto(addr212);
                                                                                                            }
                                                                                                            §§goto(addr691);
                                                                                                         },§§goto(addr860))
                                                                                                         {
                                                                                                            §#?§ = "fc";
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
                                                                                                                  § f§ = "ft";
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(!_loc1_)
                                                                                                                     {
                                                                                                                        addr315:
                                                                                                                        if(_loc1_ && AGALMiniAssembler)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §9c§ = "fs";
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
                                                                                                                              §4L§ = "clamp";
                                                                                                                              addr90:
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 addr30:
                                                                                                                                 if(!(_loc2_ || AGALMiniAssembler))
                                                                                                                                 {
                                                                                                                                    loop86:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §`!g§ = "single";
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
                                                                                                                                                   §<P§ = "depth";
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                addr186:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §2!X§ = "nomip";
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
                                                                                                                                                                              §'!5§ = "sqt";
                                                                                                                                                                              addr729:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §try§ = "rsq";
                                                                                                                                                                                 break loop52;
                                                                                                                                                                                 §§goto(addr329);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        while(_loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           §`k§ = "cos";
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
                                                                                                                                                                  §"q§ = "cube";
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
                                                                                                                                                               §,!§ = "min";
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
                                                                                                                                                      §7!N§ = "nearest";
                                                                                                                                                      addr116:
                                                                                                                                                      if(_loc2_ || AGALMiniAssembler)
                                                                                                                                                      {
                                                                                                                                                         if(_loc2_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               §@!7§ = "repeat";
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc2_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc1_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §3!g§ = "wrap";
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
                                                                                                                                                      §#!_§ = 28;
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §]!V§ = 1;
                                                                                                                                                         addr840:
                                                                                                                                                         addr691:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            § H§ = 2;
                                                                                                                                                            break loop49;
                                                                                                                                                         }
                                                                                                                                                         while(_loc2_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            §#S§ = "sin";
                                                                                                                                                            §§goto(addr684);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr136);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §>T§ = "linear";
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §<9§ = "centroid";
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
                                                                                                                           §]!H§ = "op";
                                                                                                                           continue loop48;
                                                                                                                        }
                                                                                                                        §§goto(addr438);
                                                                                                                        §§goto(addr79);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §#x§ = 32;
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §^!h§ = 128;
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
                                                                                                                     § !'§ = "div";
                                                                                                                     addr754:
                                                                                                                     while(!_loc1_)
                                                                                                                     {
                                                                                                                        §=!B§ = "rcp";
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
                                                                                                         §"J§ = "nrm";
                                                                                                         §§goto(addr691);
                                                                                                         §§goto(addr488);
                                                                                                      }
                                                                                                      addr488:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §`!3§ = "mul";
                                                                                                         §§goto(addr761);
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §1C§ = "sub";
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
                                                                                                §^!Z§ = "crs";
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
                                                                                    §8!f§ = "iel";
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
                                                               §=J§ = 16;
                                                               §§goto(addr798);
                                                            }
                                                            §§goto(addr820);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §5=§ = 32;
                                                         §§goto(addr830);
                                                         §§goto(addr612);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §6!H§ = "max";
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
                                             §]l§ = "pow";
                                             §§goto(addr715);
                                             §§goto(addr560);
                                          }
                                       }
                                       while(true)
                                       {
                                          §=!V§ = "frc";
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
                                 §4e§ = "miplinear";
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
      
      private var §"_§:ByteArray = null;
      
      private var §7E§:String = "";
      
      private var §86§:Boolean = false;
      
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
            this.§86§ = param1;
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
               §"Q§[§67§] = new OpCode(§67§,2,0,0);
               loop1:
               while(true)
               {
                  §"Q§[§[!c§] = new OpCode(§[!c§,3,1,0);
                  while(true)
                  {
                     §"Q§[§1C§] = new OpCode(§1C§,3,2,0);
                     loop3:
                     while(true)
                     {
                        §"Q§[§`!3§] = new OpCode(§`!3§,3,3,0);
                        loop4:
                        while(true)
                        {
                           §"Q§[§ !'§] = new OpCode(§ !'§,3,4,0);
                           loop5:
                           while(true)
                           {
                              §"Q§[§=!B§] = new OpCode(§=!B§,2,5,0);
                              while(true)
                              {
                                 §"Q§[§,!§] = new OpCode(§,!§,3,6,0);
                                 loop7:
                                 while(true)
                                 {
                                    §"Q§[§6!H§] = new OpCode(§6!H§,3,7,0);
                                    loop8:
                                    while(true)
                                    {
                                       §"Q§[§=!V§] = new OpCode(§=!V§,2,8,0);
                                       loop9:
                                       while(true)
                                       {
                                          §"Q§[§'!5§] = new OpCode(§'!5§,2,9,0);
                                          loop10:
                                          while(true)
                                          {
                                             §"Q§[§try§] = new OpCode(§try§,2,10,0);
                                             loop11:
                                             while(true)
                                             {
                                                §"Q§[§]l§] = new OpCode(§]l§,3,11,0);
                                                while(true)
                                                {
                                                   §"Q§[§5c§] = new OpCode(§5c§,2,12,0);
                                                   loop18:
                                                   for(; !(_loc1_ && _loc1_); while(_loc2_ || _loc2_)
                                                   {
                                                      §"Q§[§3q§] = new OpCode(§3q§,0,37,§^!h§ | §-!D§);
                                                      §§goto(addr832);
                                                      §§goto(addr753);
                                                   })
                                                   {
                                                      §"Q§[DP3] = new OpCode(DP3,3,18,0);
                                                      loop19:
                                                      while(true)
                                                      {
                                                         §"Q§[DP4] = new OpCode(DP4,3,19,0);
                                                         loop20:
                                                         while(true)
                                                         {
                                                            §"Q§[§9Q§] = new OpCode(§9Q§,2,20,0);
                                                            loop21:
                                                            while(true)
                                                            {
                                                               §"Q§[§2§] = new OpCode(§2§,2,21,0);
                                                               while(true)
                                                               {
                                                                  §"Q§[§<G§] = new OpCode(§<G§,2,22,0);
                                                                  continue loop19;
                                                                  loop40:
                                                                  while(!(_loc1_ && _loc1_))
                                                                  {
                                                                     §"Q§[§`!N§] = new OpCode(§`!N§,3,40,§#x§ | §1!%§);
                                                                     loop41:
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_ || _loc1_)
                                                                        {
                                                                           addr760:
                                                                           if(!(_loc1_ && _loc2_))
                                                                           {
                                                                              §"Q§[§#!5§] = new OpCode(§#!5§,3,41,0);
                                                                              loop42:
                                                                              while(_loc2_)
                                                                              {
                                                                                 §"Q§[§ !?§] = new OpCode(§ !?§,3,42,0);
                                                                                 loop43:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc1_)
                                                                                    {
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §"Q§[§?!6§] = new OpCode(§?!6§,2,43,0);
                                                                                       while(_loc2_)
                                                                                       {
                                                                                          §3'§[§3!%§] = new Register(§3!%§,"vertex attribute",0,7,§+O§ | § H§);
                                                                                          while(!_loc1_)
                                                                                          {
                                                                                             §3'§[§]!9§] = new Register(§]!9§,"vertex constant",1,127,§+O§ | § H§);
                                                                                             loop46:
                                                                                             while(true)
                                                                                             {
                                                                                                §3'§[§]!'§] = new Register(§]!'§,"vertex temporary",2,7,§+O§ | §]!V§ | § H§);
                                                                                                loop47:
                                                                                                while(true)
                                                                                                {
                                                                                                   §3'§[§]!H§] = new Register(§]!H§,"vertex output",3,0,§+O§ | §]!V§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §3'§[§0,§] = new Register(§0,§,"varying",4,7,§+O§ | §5=§ | § H§ | §]!V§);
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
                                                                                                               §`v§[§3!g§] = new Sampler(§3!g§,§<!N§,1);
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
                                                                                                                     §`v§[D3] = new Sampler(D3,§7!3§,2);
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
                                                                                                            §"Q§[§;D§] = new OpCode(§;D§,1,26,§^!h§ | § r§ | §"!;§);
                                                                                                            continue loop20;
                                                                                                         }
                                                                                                         addr1100:
                                                                                                      },while(true)
                                                                                                      {
                                                                                                         §`v§[D2] = new Sampler(D2,§7!3§,0);
                                                                                                         §§goto(addr426);
                                                                                                         §§goto(addr113);
                                                                                                      })
                                                                                                      {
                                                                                                         §`v§[§4e§] = new Sampler(§4e§,§0^§,2);
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
                                                                                                                        §"Q§[§>R§] = new OpCode(§>R§,2,13,0);
                                                                                                                        addr1302:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §"Q§[§"J§] = new OpCode(§"J§,2,14,0);
                                                                                                                           addr1288:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §"Q§[§#S§] = new OpCode(§#S§,2,15,0);
                                                                                                                              addr1272:
                                                                                                                              while(_loc2_)
                                                                                                                              {
                                                                                                                                 §"Q§[§`k§] = new OpCode(§`k§,2,16,0);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §"Q§[§^!Z§] = new OpCode(§^!Z§,3,17,0);
                                                                                                                                    continue loop18;
                                                                                                                                    addr807:
                                                                                                                                    while(_loc2_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       §"Q§[§>!!§] = new OpCode(§>!!§,1,39,§^!h§ | §#x§);
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
                                                                                                                                    §`v§[§<9§] = new Sampler(§<9§,§8!C§,1 << 0);
                                                                                                                                    loop63:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc1_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          addr211:
                                                                                                                                          if(_loc2_ || AGALMiniAssembler)
                                                                                                                                          {
                                                                                                                                             §`v§[§`!g§] = new Sampler(§`!g§,§8!C§,1 << 1);
                                                                                                                                             continue loop41;
                                                                                                                                          }
                                                                                                                                          addr1036:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §"Q§[§3f§] = new OpCode(§3f§,2,29,§^!h§ | § r§ | §"!;§);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §"Q§[§]!!§] = new OpCode(§]!!§,2,30,§^!h§ | § r§ | §"!;§);
                                                                                                                                                addr992:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc1_)
                                                                                                                                                   {
                                                                                                                                                      §"Q§[§6!k§] = new OpCode(§6!k§,2,31,§^!h§ | § r§ | §"!;§);
                                                                                                                                                      break loop58;
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                   addr384:
                                                                                                                                                   if(!(_loc1_ && _loc1_))
                                                                                                                                                   {
                                                                                                                                                      §`v§[§`B§] = new Sampler(§`B§,§0^§,1);
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
                                                                                                                                             §"Q§[§4!#§] = new OpCode(§4!#§,0,38,§^!h§);
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
                                                                                                               §`v§[§2!X§] = new Sampler(§2!X§,§0^§,0);
                                                                                                               loop60:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc2_ || AGALMiniAssembler))
                                                                                                                  {
                                                                                                                     while(!_loc1_)
                                                                                                                     {
                                                                                                                        §3'§[§9c§] = new Register(§9c§,"texture sampler",5,7,§5=§ | § H§);
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
                                                                                                               §`v§[§@!7§] = new Sampler(§@!7§,§<!N§,1);
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
                                                                                                            §"Q§[§9e§] = new OpCode(§9e§,2,32,§^!h§ | § r§ | §"!;§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §"Q§[§8!f§] = new OpCode(§8!f§,2,33,§^!h§ | § r§ | §"!;§);
                                                                                                               break loop41;
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop5;
                                                                                                      }
                                                                                                   }
                                                                                                   while(_loc2_ || _loc1_)
                                                                                                   {
                                                                                                      §`v§[§"q§] = new Sampler(§"q§,§7!3§,1);
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
                                                                                 §"Q§[§&X§] = new OpCode(§&X§,1,36,§^!h§ | § r§ | §"!;§);
                                                                                 continue loop18;
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop18;
                                                                     }
                                                                     while(_loc2_ || _loc2_)
                                                                     {
                                                                        §"Q§[§7!^§] = new OpCode(§7!^§,0,34,§^!h§ | § r§ | §-!D§);
                                                                        §§goto(addr899);
                                                                        §§goto(addr760);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §"Q§[§+!A§] = new OpCode(§+!A§,2,28,§^!h§ | § r§ | §"!;§);
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
                     §3'§[§#?§] = new Register(§#?§,"fragment constant",1,27,§5=§ | § H§);
                     §§goto(addr525);
                  }
               }
            }
         }
         §§goto(addr1316);
      }
      
      public function get error() : String
      {
         return this.§7E§;
      }
      
      public function get §<x§() : ByteArray
      {
         return this.§"_§;
      }
      
      public function §#!G§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
