package §4!F§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §%@§:Dictionary;
      
      private static const §@A§:Dictionary;
      
      private static const §;!z§:Dictionary;
      
      private static const §=M§:int = 4;
      
      private static const §#!"§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §09§:uint = 12;
      
      private static const §9U§:uint = 16;
      
      private static const §%n§:uint = 20;
      
      private static const §!!C§:uint = 24;
      
      private static const §3a§:uint = 28;
      
      private static const §8!u§:uint = 1;
      
      private static const §=-§:uint = 2;
      
      private static const §+!s§:uint = 32;
      
      private static const §8Q§:uint = 64;
      
      private static const §4=§:uint = 1;
      
      private static const §,S§:uint = 2;
      
      private static const §-!q§:uint = 4;
      
      private static const §49§:uint = 8;
      
      private static const §#H§:uint = 16;
      
      private static const §+!9§:uint = 32;
      
      private static const §"!@§:uint = 128;
      
      private static const §15§:String = "mov";
      
      private static const §"k§:String = "add";
      
      private static const §1!J§:String = "sub";
      
      private static const §,!l§:String = "mul";
      
      private static const §@C§:String = "div";
      
      private static const §27§:String = "rcp";
      
      private static const §<U§:String = "min";
      
      private static const §4!N§:String = "max";
      
      private static const §0!$§:String = "frc";
      
      private static const §'!!§:String = "sqt";
      
      private static const §>X§:String = "rsq";
      
      private static const § !F§:String = "pow";
      
      private static const §"!c§:String = "log";
      
      private static const § T§:String = "exp";
      
      private static const §-&§:String = "nrm";
      
      private static const §>!G§:String = "sin";
      
      private static const §,%§:String = "cos";
      
      private static const §9!T§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §`x§:String = "abs";
      
      private static const §[!W§:String = "neg";
      
      private static const §;" §:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §#!^§:String = "ifz";
      
      private static const §=!e§:String = "inz";
      
      private static const §1!=§:String = "ife";
      
      private static const §8!l§:String = "ine";
      
      private static const §`0§:String = "ifg";
      
      private static const §!&§:String = "ifl";
      
      private static const §3c§:String = "ieg";
      
      private static const §=" §:String = "iel";
      
      private static const §8!§:String = "els";
      
      private static const §',§:String = "eif";
      
      private static const §9!Q§:String = "rep";
      
      private static const §%!h§:String = "erp";
      
      private static const §=!h§:String = "brk";
      
      private static const §>T§:String = "kil";
      
      private static const §4[§:String = "tex";
      
      private static const §67§:String = "sge";
      
      private static const §1""§:String = "slt";
      
      private static const §8!+§:String = "sgn";
      
      private static const §`i§:String = "va";
      
      private static const §+!n§:String = "vc";
      
      private static const §#!i§:String = "vt";
      
      private static const §]_§:String = "op";
      
      private static const §4S§:String = "v";
      
      private static const §^!Y§:String = "fc";
      
      private static const §"!$§:String = "ft";
      
      private static const §0!5§:String = "fs";
      
      private static const §7!+§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §-!D§:String = "cube";
      
      private static const §,I§:String = "mipnearest";
      
      private static const §%!f§:String = "miplinear";
      
      private static const §1!V§:String = "mipnone";
      
      private static const §+!;§:String = "nomip";
      
      private static const §9!s§:String = "nearest";
      
      private static const §?n§:String = "linear";
      
      private static const §+![§:String = "centroid";
      
      private static const §#Q§:String = "single";
      
      private static const §=V§:String = "depth";
      
      private static const §-!l§:String = "repeat";
      
      private static const §?<§:String = "wrap";
      
      private static const §8!B§:String = "clamp";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            initialized = false;
            loop0:
            while(true)
            {
               §%@§ = new Dictionary();
               loop1:
               while(true)
               {
                  §@A§ = new Dictionary();
                  loop2:
                  while(true)
                  {
                     §;!z§ = new Dictionary();
                     loop3:
                     while(true)
                     {
                        §=M§ = 4;
                        while(true)
                        {
                           §#!"§ = 256;
                           addr865:
                           loop25:
                           for(; _loc2_ || _loc1_; while(_loc2_ || _loc2_)
                           {
                              if(!_loc1_)
                              {
                                 §4!N§ = "max";
                                 §§goto(addr693);
                              }
                              else
                              {
                                 §§goto(addr865);
                              }
                           })
                           {
                              §1!J§ = "sub";
                              loop26:
                              while(true)
                              {
                                 §,!l§ = "mul";
                                 loop27:
                                 while(true)
                                 {
                                    §@C§ = "div";
                                    addr717:
                                    while(_loc2_ || AGALMiniAssembler)
                                    {
                                       §27§ = "rcp";
                                       while(true)
                                       {
                                          §<U§ = "min";
                                          continue loop25;
                                       }
                                    }
                                    loop16:
                                    while(true)
                                    {
                                       §4=§ = 1;
                                       loop17:
                                       while(true)
                                       {
                                          §,S§ = 2;
                                          addr781:
                                          loop18:
                                          while(!(_loc1_ && _loc2_))
                                          {
                                             §-!q§ = 4;
                                             loop19:
                                             while(true)
                                             {
                                                §49§ = 8;
                                                loop20:
                                                while(true)
                                                {
                                                   §#H§ = 16;
                                                   loop21:
                                                   while(true)
                                                   {
                                                      §+!9§ = 32;
                                                      loop22:
                                                      while(true)
                                                      {
                                                         §"!@§ = 128;
                                                         while(true)
                                                         {
                                                            §15§ = "mov";
                                                            addr751:
                                                            while(true)
                                                            {
                                                               §"k§ = "add";
                                                               continue loop25;
                                                            }
                                                            loop55:
                                                            for(; _loc2_ || AGALMiniAssembler; if(_loc1_ && _loc1_)
                                                            {
                                                               continue;
                                                            },if(_loc2_)
                                                            {
                                                               if(!_loc1_)
                                                               {
                                                                  continue loop20;
                                                               }
                                                               §§goto(addr659);
                                                            },§§goto(addr549))
                                                            {
                                                               §3c§ = "ieg";
                                                               loop56:
                                                               while(_loc2_ || _loc2_)
                                                               {
                                                                  §=" § = "iel";
                                                                  continue loop3;
                                                                  addr155:
                                                                  if(!(_loc2_ || _loc2_))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!_loc2_)
                                                                  {
                                                                     continue loop21;
                                                                  }
                                                                  §?n§ = "linear";
                                                                  loop85:
                                                                  for(; !(_loc1_ && AGALMiniAssembler); while(true)
                                                                  {
                                                                     if(!(_loc2_ || _loc1_))
                                                                     {
                                                                        continue loop85;
                                                                     }
                                                                     if(!_loc1_)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           §§goto(addr88);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §-!D§ = "cube";
                                                                              §§goto(addr232);
                                                                           }
                                                                           addr246:
                                                                        }
                                                                        §§goto(addr256);
                                                                     }
                                                                     §§goto(addr225);
                                                                     §§goto(addr35);
                                                                  },continue loop18)
                                                                  {
                                                                     §+![§ = "centroid";
                                                                     loop86:
                                                                     while(true)
                                                                     {
                                                                        if(_loc2_ || _loc2_)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §#Q§ = "single";
                                                                           loop87:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc1_)
                                                                              {
                                                                                 if(!_loc1_)
                                                                                 {
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §=V§ = "depth";
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          addr104:
                                                                                          if(_loc1_ && AGALMiniAssembler)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §-!l§ = "repeat";
                                                                                          continue loop85;
                                                                                       }
                                                                                       continue loop86;
                                                                                       addr42:
                                                                                       if(!(_loc2_ || _loc2_))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc2_)
                                                                                       {
                                                                                          addr51:
                                                                                          if(!(_loc1_ && AGALMiniAssembler))
                                                                                          {
                                                                                             if(!_loc1_)
                                                                                             {
                                                                                                return;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             loop47:
                                                                                             while(_loc2_)
                                                                                             {
                                                                                                M44 = "m44";
                                                                                                while(!_loc1_)
                                                                                                {
                                                                                                   M34 = "m34";
                                                                                                   loop49:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §#!^§ = "ifz";
                                                                                                      loop50:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §=!e§ = "inz";
                                                                                                         addr563:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §1!=§ = "ife";
                                                                                                            addr549:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc1_)
                                                                                                               {
                                                                                                                  addr551:
                                                                                                                  if(!(_loc1_ && AGALMiniAssembler))
                                                                                                                  {
                                                                                                                     §8!l§ = "ine";
                                                                                                                     loop53:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc2_ || _loc1_)
                                                                                                                        {
                                                                                                                           §`0§ = "ifg";
                                                                                                                           while(_loc2_)
                                                                                                                           {
                                                                                                                              §!&§ = "ifl";
                                                                                                                              continue loop55;
                                                                                                                           }
                                                                                                                           while(!(_loc1_ && _loc2_))
                                                                                                                           {
                                                                                                                              §,%§ = "cos";
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §9!T§ = "crs";
                                                                                                                                 loop41:
                                                                                                                                 while(!_loc1_)
                                                                                                                                 {
                                                                                                                                    DP3 = "dp3";
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc1_)
                                                                                                                                       {
                                                                                                                                          if(_loc2_)
                                                                                                                                          {
                                                                                                                                             DP4 = "dp4";
                                                                                                                                             break loop86;
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       continue loop41;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §!!C§ = 24;
                                                                                                                                       break loop47;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr751);
                                                                                                                                 addr213:
                                                                                                                                 if(_loc2_ || AGALMiniAssembler)
                                                                                                                                 {
                                                                                                                                    §1!V§ = "mipnone";
                                                                                                                                    break loop85;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           loop36:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              § T§ = "exp";
                                                                                                                              addr659:
                                                                                                                              while(_loc2_)
                                                                                                                              {
                                                                                                                                 §-&§ = "nrm";
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §>!G§ = "sin";
                                                                                                                                    continue loop36;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr686:
                                                                                                                              while(_loc2_)
                                                                                                                              {
                                                                                                                                 §'!!§ = "sqt";
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §>X§ = "rsq";
                                                                                                                                    addr676:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       § !F§ = "pow";
                                                                                                                                       break loop53;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop16;
                                                                                                                           }
                                                                                                                           addr642:
                                                                                                                           addr666:
                                                                                                                           addr530:
                                                                                                                        }
                                                                                                                        break;
                                                                                                                        addr399:
                                                                                                                        if(!(_loc2_ || _loc1_))
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           continue loop50;
                                                                                                                        }
                                                                                                                        §67§ = "sge";
                                                                                                                        loop65:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §1""§ = "slt";
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!_loc1_)
                                                                                                                              {
                                                                                                                                 addr375:
                                                                                                                                 if(!(_loc2_ || _loc2_))
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                    addr355:
                                                                                                                                 }
                                                                                                                                 §8!+§ = "sgn";
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       continue loop65;
                                                                                                                                    }
                                                                                                                                    if(_loc1_)
                                                                                                                                    {
                                                                                                                                       continue loop19;
                                                                                                                                    }
                                                                                                                                    if(!_loc1_)
                                                                                                                                    {
                                                                                                                                       continue loop22;
                                                                                                                                    }
                                                                                                                                    addr604:
                                                                                                                                    while(_loc2_)
                                                                                                                                    {
                                                                                                                                       §;" § = "sat";
                                                                                                                                       while(!(_loc1_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          M33 = "m33";
                                                                                                                                          §§goto(addr51);
                                                                                                                                          continue loop47;
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §%n§ = 20;
                                                                                                                                          §§goto(addr828);
                                                                                                                                          §§goto(addr592);
                                                                                                                                       }
                                                                                                                                       addr592:
                                                                                                                                    }
                                                                                                                                    §§goto(addr621);
                                                                                                                                 }
                                                                                                                                 continue loop22;
                                                                                                                              }
                                                                                                                              continue loop49;
                                                                                                                              addr88:
                                                                                                                              if(!(_loc1_ && _loc1_))
                                                                                                                              {
                                                                                                                                 if(!_loc1_)
                                                                                                                                 {
                                                                                                                                    §?<§ = "wrap";
                                                                                                                                    continue loop87;
                                                                                                                                 }
                                                                                                                                 continue loop18;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr838:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §9U§ = 16;
                                                                                                                              §§goto(addr833);
                                                                                                                              §§goto(addr375);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §"!c§ = "log";
                                                                                                                        §§goto(addr666);
                                                                                                                        §§goto(addr537);
                                                                                                                     }
                                                                                                                     addr537:
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               continue loop27;
                                                                                                            }
                                                                                                            addr813:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §=-§ = 2;
                                                                                                               addr808:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §+!s§ = 32;
                                                                                                                  addr803:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §8Q§ = 64;
                                                                                                                     continue loop16;
                                                                                                                     addr468:
                                                                                                                     if(!(_loc2_ || _loc1_))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §%!h§ = "erp";
                                                                                                                     while(!_loc1_)
                                                                                                                     {
                                                                                                                        §=!h§ = "brk";
                                                                                                                        loop62:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc1_ && _loc2_))
                                                                                                                           {
                                                                                                                              continue loop26;
                                                                                                                           }
                                                                                                                           addr611:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §[!W§ = "neg";
                                                                                                                              §§goto(addr604);
                                                                                                                              continue loop62;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        continue loop26;
                                                                                                                     }
                                                                                                                     §§goto(addr654);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr551);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   while(_loc2_ || _loc1_)
                                                                                                   {
                                                                                                      §4[§ = "tex";
                                                                                                      §§goto(addr392);
                                                                                                   }
                                                                                                }
                                                                                                continue loop2;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §3a§ = 28;
                                                                                                break loop56;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr808);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr413);
                                                                                       }
                                                                                    }
                                                                                    loop83:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc2_ || _loc2_)
                                                                                       {
                                                                                          if(_loc1_)
                                                                                          {
                                                                                             break;
                                                                                             addr153:
                                                                                          }
                                                                                          §9!s§ = "nearest";
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                §§goto(addr155);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                loop75:
                                                                                                while(_loc2_)
                                                                                                {
                                                                                                   §7!+§ = "oc";
                                                                                                   loop76:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc1_ && _loc1_))
                                                                                                      {
                                                                                                         continue loop55;
                                                                                                      }
                                                                                                      addr843:
                                                                                                      addr485:
                                                                                                      addr339:
                                                                                                      while(_loc2_)
                                                                                                      {
                                                                                                         §#!i§ = "vt";
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc1_)
                                                                                                            {
                                                                                                               if(!_loc1_)
                                                                                                               {
                                                                                                                  §]_§ = "op";
                                                                                                                  loop71:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §4S§ = "v";
                                                                                                                        loop72:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §^!Y§ = "fc";
                                                                                                                           while(_loc2_)
                                                                                                                           {
                                                                                                                              §"!$§ = "ft";
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc2_)
                                                                                                                                 {
                                                                                                                                    addr297:
                                                                                                                                    if(!(_loc2_ || _loc1_))
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §0!5§ = "fs";
                                                                                                                                    continue loop75;
                                                                                                                                 }
                                                                                                                                 §§goto(addr454);
                                                                                                                                 addr197:
                                                                                                                                 if(_loc2_ || _loc1_)
                                                                                                                                 {
                                                                                                                                    §+!;§ = "nomip";
                                                                                                                                    continue loop83;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §9!Q§ = "rep";
                                                                                                                                 continue loop19;
                                                                                                                                 §§goto(addr297);
                                                                                                                              }
                                                                                                                              addr234:
                                                                                                                              if(_loc2_ || AGALMiniAssembler)
                                                                                                                              {
                                                                                                                                 §,I§ = "mipnearest";
                                                                                                                                 while(_loc2_)
                                                                                                                                 {
                                                                                                                                    §%!f§ = "miplinear";
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc1_)
                                                                                                                                       {
                                                                                                                                          if(!_loc2_)
                                                                                                                                          {
                                                                                                                                             continue loop71;
                                                                                                                                          }
                                                                                                                                          §§goto(addr213);
                                                                                                                                       }
                                                                                                                                       continue loop72;
                                                                                                                                    }
                                                                                                                                    §§goto(addr637);
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       continue loop76;
                                                                                                                                    }
                                                                                                                                    §§goto(addr234);
                                                                                                                                 }
                                                                                                                                 addr232:
                                                                                                                                 addr225:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr355);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr563);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §0!$§ = "frc";
                                                                                                                     §§goto(addr686);
                                                                                                                  }
                                                                                                                  addr693:
                                                                                                               }
                                                                                                               break;
                                                                                                            }
                                                                                                            continue loop3;
                                                                                                         }
                                                                                                         §§goto(addr530);
                                                                                                         continue loop76;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            if(_loc1_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §',§ = "eif";
                                                                                                            §§goto(addr480);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr592);
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §09§ = 12;
                                                                                                         §§goto(addr838);
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop17;
                                                                                                }
                                                                                                §§goto(addr676);
                                                                                             }
                                                                                          }
                                                                                          continue loop21;
                                                                                       }
                                                                                       addr346:
                                                                                       while(_loc2_)
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             §+!n§ = "vc";
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr712);
                                                                                          }
                                                                                          continue loop83;
                                                                                       }
                                                                                       continue loop25;
                                                                                       §§goto(addr339);
                                                                                    }
                                                                                    §§goto(addr392);
                                                                                 }
                                                                                 §§goto(addr681);
                                                                              }
                                                                              §§goto(addr153);
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                        §§goto(addr330);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §`x§ = "abs";
                                                                        §§goto(addr611);
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc1_ && AGALMiniAssembler))
                                                                     {
                                                                        addr190:
                                                                        if(!(_loc1_ && AGALMiniAssembler))
                                                                        {
                                                                           §§goto(addr197);
                                                                        }
                                                                        else
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              D3 = "3d";
                                                                              §§goto(addr246);
                                                                              §§goto(addr190);
                                                                           }
                                                                           addr251:
                                                                        }
                                                                        §§goto(addr256);
                                                                     }
                                                                     §§goto(addr209);
                                                                     §§goto(addr141);
                                                                  }
                                                                  addr141:
                                                                  §§goto(addr295);
                                                               }
                                                               while(true)
                                                               {
                                                                  §8!u§ = 1;
                                                                  §§goto(addr813);
                                                                  §§goto(addr506);
                                                               }
                                                               addr506:
                                                            }
                                                         }
                                                      }
                                                   }
                                                   if(!(_loc2_ || AGALMiniAssembler))
                                                   {
                                                      continue;
                                                   }
                                                   if(!_loc2_)
                                                   {
                                                      continue loop17;
                                                   }
                                                   D2 = "2d";
                                                   §§goto(addr251);
                                                }
                                             }
                                          }
                                          continue loop0;
                                       }
                                    }
                                 }
                              }
                           }
                           while(true)
                           {
                              FRAGMENT = "fragment";
                              continue loop0;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr843);
      }
      
      private var §5c§:ByteArray = null;
      
      private var §"!S§:String = "";
      
      private var §"!6§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§"!6§ = param1;
            while(true)
            {
               if(_loc2_)
               {
                  if(!initialized)
                  {
                     if(_loc2_)
                     {
                        if(!_loc2_)
                        {
                           continue;
                        }
                        init();
                     }
                     break;
                  }
                  break;
               }
               continue loop0;
            }
            return;
         }
      }
      
      private static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            initialized = true;
            while(true)
            {
               §%@§[§15§] = new OpCode(§15§,2,0,0);
               while(true)
               {
                  §%@§[§"k§] = new OpCode(§"k§,3,1,0);
                  while(true)
                  {
                     §%@§[§1!J§] = new OpCode(§1!J§,3,2,0);
                     while(true)
                     {
                        §%@§[§,!l§] = new OpCode(§,!l§,3,3,0);
                        while(true)
                        {
                           §%@§[§@C§] = new OpCode(§@C§,3,4,0);
                           while(true)
                           {
                              §%@§[§27§] = new OpCode(§27§,2,5,0);
                              loop6:
                              while(true)
                              {
                                 §%@§[§<U§] = new OpCode(§<U§,3,6,0);
                                 addr1094:
                                 while(true)
                                 {
                                    §%@§[§4!N§] = new OpCode(§4!N§,3,7,0);
                                    addr1083:
                                    while(true)
                                    {
                                       §%@§[§0!$§] = new OpCode(§0!$§,2,8,0);
                                       continue loop6;
                                    }
                                 }
                              }
                              if(!(_loc1_ || AGALMiniAssembler))
                              {
                                 continue;
                              }
                              §;!z§[§,I§] = new Sampler(§,I§,§!!C§,1);
                              §§goto(addr303);
                           }
                           while(!(_loc2_ && _loc2_))
                           {
                              §@A§[§^!Y§] = new Register(§^!Y§,"fragment constant",1,27,§+!s§ | §=-§);
                              §§goto(addr457);
                           }
                        }
                        while(!(_loc2_ && _loc2_))
                        {
                           §%@§[§"!c§] = new OpCode(§"!c§,2,12,0);
                           §§goto(addr1005);
                           §§goto(addr390);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr605);
      }
      
      public function get error() : String
      {
         return this.§"!S§;
      }
      
      public function get §;!M§() : ByteArray
      {
         return this.§5c§;
      }
      
      public function §9!+§(param1:String, param2:String, param3:Boolean = false) : ByteArray
      {
         var _loc50_:Boolean = true;
         var _loc51_:Boolean = false;
         var _loc9_:int = 0;
         var _loc11_:String = null;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:Array = null;
         var _loc15_:Array = null;
         var _loc16_:OpCode = null;
         var _loc17_:Array = null;
         var _loc18_:Boolean = false;
         var _loc19_:uint = 0;
         var _loc20_:uint = 0;
         var _loc21_:int = 0;
         var _loc22_:Boolean = false;
         var _loc23_:Array = null;
         var _loc24_:Array = null;
         var _loc25_:Register = null;
         var _loc26_:Array = null;
         var _loc27_:uint = 0;
         var _loc28_:uint = 0;
         var _loc29_:Array = null;
         var _loc30_:Boolean = false;
         var _loc31_:Boolean = false;
         var _loc32_:uint = 0;
         var _loc33_:uint = 0;
         var _loc34_:int = 0;
         var _loc35_:uint = 0;
         var _loc36_:uint = 0;
         var _loc37_:int = 0;
         var _loc38_:Array = null;
         var _loc39_:Register = null;
         var _loc40_:Array = null;
         var _loc41_:Array = null;
         var _loc42_:uint = 0;
         var _loc43_:uint = 0;
         var _loc44_:Number = NaN;
         var _loc45_:Sampler = null;
         var _loc46_:String = null;
         var _loc47_:uint = 0;
         var _loc48_:uint = 0;
         var _loc49_:String = null;
         var _loc4_:uint = getTimer();
         if(_loc50_)
         {
            this.§5c§ = new ByteArray();
            if(!_loc51_)
            {
               this.§"!S§ = "";
            }
         }
         var _loc5_:Boolean = false;
         if(_loc50_)
         {
            §§push(param1);
            if(!_loc51_)
            {
               §§push(FRAGMENT);
               loop0:
               while(§§pop() != §§pop())
               {
                  §§push(param1);
                  if(!(_loc51_ && param3))
                  {
                     §§push(VERTEX);
                     if(!_loc50_)
                     {
                        continue;
                     }
                     if(§§pop() != §§pop())
                     {
                        while(true)
                        {
                           §§push(this);
                           §§push("ERROR: mode needs to be \"");
                           if(_loc50_ || param2)
                           {
                              §§push(FRAGMENT);
                              if(_loc50_ || param3)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!_loc51_)
                                 {
                                    §§push("\" or \"");
                                    if(_loc50_ || param2)
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc50_)
                                       {
                                          §§push(VERTEX);
                                          if(_loc50_)
                                          {
                                             addr254:
                                             §§push(§§pop() + §§pop());
                                             if(!_loc51_)
                                             {
                                                addr257:
                                                §§push("\" but is \"");
                                                if(_loc50_ || param2)
                                                {
                                                   addr265:
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc50_ || param1)
                                                   {
                                                      addr279:
                                                      §§push(§§pop() + param1);
                                                      if(_loc50_)
                                                      {
                                                         addr277:
                                                         §§push("\".");
                                                      }
                                                      §§pop().§"!S§ = §§pop();
                                                      loop2:
                                                      while(true)
                                                      {
                                                         if(!(_loc51_ && param3))
                                                         {
                                                            while(true)
                                                            {
                                                               addr191:
                                                               while(true)
                                                               {
                                                                  this.§;!M§.endian = Endian.LITTLE_ENDIAN;
                                                                  continue loop2;
                                                               }
                                                            }
                                                            addr287:
                                                         }
                                                         else
                                                         {
                                                            addr295:
                                                            while(true)
                                                            {
                                                               §§goto(addr191);
                                                               break loop0;
                                                            }
                                                            addr295:
                                                         }
                                                         §§goto(addr191);
                                                      }
                                                   }
                                                }
                                                §§goto(addr279);
                                                §§push(§§pop() + §§pop());
                                             }
                                          }
                                          §§goto(addr279);
                                       }
                                       §§goto(addr257);
                                    }
                                    §§goto(addr265);
                                 }
                                 §§goto(addr277);
                              }
                              §§goto(addr254);
                           }
                           §§goto(addr279);
                        }
                     }
                     §§goto(addr191);
                  }
                  §§goto(addr297);
               }
               while(true)
               {
                  _loc5_ = true;
                  §§goto(addr295);
               }
            }
            §§goto(addr297);
         }
         §§goto(addr287);
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
