package §@@§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §5j§
   {
      
      private static var initialized:Boolean = false;
      
      private static const § `§:Dictionary;
      
      private static const § !K§:Dictionary;
      
      private static const §>";§:Dictionary;
      
      private static const §>"#§:int = 4;
      
      private static const §#!o§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §!!D§:uint = 12;
      
      private static const §8!%§:uint = 16;
      
      private static const §2+§:uint = 20;
      
      private static const §3f§:uint = 24;
      
      private static const §4!k§:uint = 28;
      
      private static const §-j§:uint = 1;
      
      private static const §4,§:uint = 2;
      
      private static const §"@§:uint = 32;
      
      private static const §0!H§:uint = 64;
      
      private static const §5?§:uint = 1;
      
      private static const §4F§:uint = 2;
      
      private static const §&!J§:uint = 4;
      
      private static const §>U§:uint = 8;
      
      private static const §+!K§:uint = 16;
      
      private static const §@!$§:uint = 32;
      
      private static const §]U§:uint = 128;
      
      private static const §#2§:String = "mov";
      
      private static const ADD:String = "add";
      
      private static const §5&§:String = "sub";
      
      private static const §5!+§:String = "mul";
      
      private static const §#!`§:String = "div";
      
      private static const §,A§:String = "rcp";
      
      private static const §]+§:String = "min";
      
      private static const §9t§:String = "max";
      
      private static const §3t§:String = "frc";
      
      private static const §&[§:String = "sqt";
      
      private static const §9!%§:String = "rsq";
      
      private static const §`&§:String = "pow";
      
      private static const §!U§:String = "log";
      
      private static const §@!_§:String = "exp";
      
      private static const §=!K§:String = "nrm";
      
      private static const §7!=§:String = "sin";
      
      private static const §@!b§:String = "cos";
      
      private static const §true§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const § do§:String = "abs";
      
      private static const §@I§:String = "neg";
      
      private static const §4"1§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §9!9§:String = "ifz";
      
      private static const §1`§:String = "inz";
      
      private static const §#!u§:String = "ife";
      
      private static const §-!W§:String = "ine";
      
      private static const §]m§:String = "ifg";
      
      private static const §+_§:String = "ifl";
      
      private static const §3y§:String = "ieg";
      
      private static const §%@§:String = "iel";
      
      private static const §9!a§:String = "els";
      
      private static const §3!D§:String = "eif";
      
      private static const §2!O§:String = "rep";
      
      private static const §=!^§:String = "erp";
      
      private static const §]!<§:String = "brk";
      
      private static const §=!D§:String = "kil";
      
      private static const §>!w§:String = "tex";
      
      private static const §`I§:String = "sge";
      
      private static const §]!l§:String = "slt";
      
      private static const §4!c§:String = "sgn";
      
      private static const §?!n§:String = "va";
      
      private static const §?!7§:String = "vc";
      
      private static const §3=§:String = "vt";
      
      private static const § x§:String = "op";
      
      private static const V:String = "v";
      
      private static const §4+§:String = "fc";
      
      private static const §,v§:String = "ft";
      
      private static const §%G§:String = "fs";
      
      private static const §3b§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §0!L§:String = "cube";
      
      private static const §=!q§:String = "mipnearest";
      
      private static const §%t§:String = "miplinear";
      
      private static const §]X§:String = "mipnone";
      
      private static const §3"?§:String = "nomip";
      
      private static const §+!#§:String = "nearest";
      
      private static const §@r§:String = "linear";
      
      private static const §6Z§:String = "centroid";
      
      private static const §0!s§:String = "single";
      
      private static const §6!n§:String = "depth";
      
      private static const §"!=§:String = "repeat";
      
      private static const §!i§:String = "wrap";
      
      private static const §<!?§:String = "clamp";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            initialized = false;
            loop0:
            while(true)
            {
               § `§ = new Dictionary();
               loop1:
               while(true)
               {
                  § !K§ = new Dictionary();
                  loop2:
                  while(true)
                  {
                     §>";§ = new Dictionary();
                     loop3:
                     while(true)
                     {
                        §>"#§ = 4;
                        loop4:
                        while(true)
                        {
                           §#!o§ = 256;
                           loop5:
                           while(_loc2_)
                           {
                              FRAGMENT = "fragment";
                              loop6:
                              while(true)
                              {
                                 VERTEX = "vertex";
                                 while(true)
                                 {
                                    §!!D§ = 12;
                                    continue loop4;
                                    addr644:
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       continue;
                                    }
                                    DP4 = "dp4";
                                    loop43:
                                    while(true)
                                    {
                                       § do§ = "abs";
                                       loop44:
                                       while(true)
                                       {
                                          §@I§ = "neg";
                                          loop45:
                                          while(true)
                                          {
                                             §4"1§ = "sat";
                                             loop46:
                                             for(; !_loc1_; if(_loc1_ && _loc1_)
                                             {
                                                continue;
                                             },§§goto(addr60))
                                             {
                                                M33 = "m33";
                                                loop47:
                                                while(true)
                                                {
                                                   M44 = "m44";
                                                   addr591:
                                                   addr690:
                                                   loop48:
                                                   for(; _loc2_ || _loc2_; if(!(_loc2_ || _loc1_))
                                                   {
                                                      continue;
                                                   },§§goto(addr180))
                                                   {
                                                      addr598:
                                                      if(_loc2_ || _loc1_)
                                                      {
                                                         M34 = "m34";
                                                         loop49:
                                                         while(true)
                                                         {
                                                            if(!_loc2_)
                                                            {
                                                               continue loop47;
                                                            }
                                                            if(!_loc2_)
                                                            {
                                                               break;
                                                            }
                                                            §9!9§ = "ifz";
                                                            loop50:
                                                            while(true)
                                                            {
                                                               §1`§ = "inz";
                                                               loop51:
                                                               while(true)
                                                               {
                                                                  §#!u§ = "ife";
                                                                  addr567:
                                                                  addr301:
                                                                  while(true)
                                                                  {
                                                                     §-!W§ = "ine";
                                                                     continue loop44;
                                                                  }
                                                                  if(!(_loc2_ || §5j§))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc2_)
                                                                  {
                                                                     if(!_loc1_)
                                                                     {
                                                                        §=!q§ = "mipnearest";
                                                                        loop81:
                                                                        for(; !(_loc1_ && _loc2_); if(!(_loc2_ || _loc2_))
                                                                        {
                                                                           continue;
                                                                        },§6!n§ = "depth",§§goto(addr104))
                                                                        {
                                                                           §%t§ = "miplinear";
                                                                           loop82:
                                                                           while(!(_loc1_ && _loc1_))
                                                                           {
                                                                              addr268:
                                                                              if(!(_loc1_ && §5j§))
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    §]X§ = "mipnone";
                                                                                    loop83:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc2_ || _loc2_)
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             addr233:
                                                                                             if(!(_loc2_ || §5j§))
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue loop49;
                                                                                          }
                                                                                          loop79:
                                                                                          while(!(_loc1_ && §5j§))
                                                                                          {
                                                                                             if(!_loc1_)
                                                                                             {
                                                                                                §0!L§ = "cube";
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §,A§ = "rcp";
                                                                                                   loop29:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §]+§ = "min";
                                                                                                      addr743:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §9t§ = "max";
                                                                                                         addr731:
                                                                                                         loop31:
                                                                                                         for(; !(_loc1_ && _loc1_); if(!(_loc2_ || _loc2_))
                                                                                                         {
                                                                                                            continue;
                                                                                                         },§6Z§ = "centroid",§§goto(addr146))
                                                                                                         {
                                                                                                            §3t§ = "frc";
                                                                                                            loop32:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §&[§ = "sqt";
                                                                                                               addr719:
                                                                                                               addr844:
                                                                                                               while(!_loc1_)
                                                                                                               {
                                                                                                                  §9!%§ = "rsq";
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §`&§ = "pow";
                                                                                                                     addr707:
                                                                                                                     while(_loc2_)
                                                                                                                     {
                                                                                                                        §!U§ = "log";
                                                                                                                        continue loop6;
                                                                                                                     }
                                                                                                                     addr180:
                                                                                                                     continue loop0;
                                                                                                                     if(!(_loc1_ && §5j§))
                                                                                                                     {
                                                                                                                        continue loop31;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §4,§ = 2;
                                                                                                                  addr839:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §"@§ = 32;
                                                                                                                     addr834:
                                                                                                                     loop15:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §0!H§ = 64;
                                                                                                                        addr829:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §5?§ = 1;
                                                                                                                           loop17:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §4F§ = 2;
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §&!J§ = 4;
                                                                                                                                 addr814:
                                                                                                                                 addr383:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §>U§ = 8;
                                                                                                                                    break loop31;
                                                                                                                                 }
                                                                                                                                 loop72:
                                                                                                                                 while(!(_loc1_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §4+§ = "fc";
                                                                                                                                    loop73:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc1_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          if(!_loc2_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §,v§ = "ft";
                                                                                                                                          continue loop50;
                                                                                                                                       }
                                                                                                                                       continue loop72;
                                                                                                                                       addr83:
                                                                                                                                       if(!(_loc2_ || _loc2_))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(_loc2_)
                                                                                                                                       {
                                                                                                                                          §<!?§ = "clamp";
                                                                                                                                          addr92:
                                                                                                                                          if(!_loc1_)
                                                                                                                                          {
                                                                                                                                             addr30:
                                                                                                                                             if(_loc1_ && _loc2_)
                                                                                                                                             {
                                                                                                                                                loop89:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc1_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      if(_loc2_)
                                                                                                                                                      {
                                                                                                                                                         addr113:
                                                                                                                                                         if(!(_loc2_ || _loc1_))
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         addr120:
                                                                                                                                                         if(_loc2_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            §"!=§ = "repeat";
                                                                                                                                                            loop90:
                                                                                                                                                            while(!_loc1_)
                                                                                                                                                            {
                                                                                                                                                               §!i§ = "wrap";
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc2_ || _loc1_))
                                                                                                                                                                  {
                                                                                                                                                                     continue loop90;
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc1_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc1_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop83;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr83);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(!_loc1_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc1_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop2;
                                                                                                                                                                        }
                                                                                                                                                                        addr212:
                                                                                                                                                                        if(_loc2_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           §+!#§ = "nearest";
                                                                                                                                                                           addr199:
                                                                                                                                                                           loop85:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc1_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr166:
                                                                                                                                                                                    break;
                                                                                                                                                                                    addr491:
                                                                                                                                                                                    addr792:
                                                                                                                                                                                 }
                                                                                                                                                                                 §@r§ = "linear";
                                                                                                                                                                                 while(!(_loc1_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop48;
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc1_ && _loc1_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop44;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!(_loc2_ || _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    §2!O§ = "rep";
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §=!^§ = "erp";
                                                                                                                                                                                       break loop85;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr166);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr166:
                                                                                                                                                                                 while(_loc2_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §#2§ = "mov";
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       ADD = "add";
                                                                                                                                                                                       continue loop0;
                                                                                                                                                                                       §§goto(addr120);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr498);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop5;
                                                                                                                                                                              }
                                                                                                                                                                              addr331:
                                                                                                                                                                              addr331:
                                                                                                                                                                              while(!(_loc1_ && §5j§))
                                                                                                                                                                              {
                                                                                                                                                                                 D3 = "3d";
                                                                                                                                                                                 continue loop79;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop50;
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §]!<§ = "brk";
                                                                                                                                                                              while(_loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc1_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §=!D§ = "kil";
                                                                                                                                                                                    break loop79;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop1;
                                                                                                                                                                                 while(_loc2_ || _loc1_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §3=§ = "vt";
                                                                                                                                                                                    break loop90;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop43;
                                                                                                                                                                           }
                                                                                                                                                                           addr199:
                                                                                                                                                                           addr481:
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §2+§ = 20;
                                                                                                                                                                              break loop49;
                                                                                                                                                                              §§goto(addr212);
                                                                                                                                                                           }
                                                                                                                                                                           addr871:
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr814);
                                                                                                                                                                     addr208:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr92);
                                                                                                                                                               }
                                                                                                                                                               continue loop73;
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               § x§ = "op";
                                                                                                                                                               break loop83;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr787);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            D2 = "2d";
                                                                                                                                                         }
                                                                                                                                                         addr343:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr331);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      loop87:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc1_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop29;
                                                                                                                                                                  }
                                                                                                                                                                  addr510:
                                                                                                                                                                  while(_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     §3!D§ = "eif";
                                                                                                                                                                     §§goto(addr491);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop17;
                                                                                                                                                               }
                                                                                                                                                               addr419:
                                                                                                                                                               addr804:
                                                                                                                                                               while(_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §?!7§ = "vc";
                                                                                                                                                                  break loop87;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §@!$§ = 32;
                                                                                                                                                                  addr799:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §]U§ = 128;
                                                                                                                                                                     §§goto(addr598);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr792);
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr199);
                                                                                                                                                         §§goto(addr481);
                                                                                                                                                         continue loop89;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr407);
                                                                                                                                                      addr146:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr199);
                                                                                                                                                }
                                                                                                                                                continue loop32;
                                                                                                                                                addr104:
                                                                                                                                             }
                                                                                                                                             addr37:
                                                                                                                                             if(_loc2_ || _loc1_)
                                                                                                                                             {
                                                                                                                                                if(_loc2_)
                                                                                                                                                {
                                                                                                                                                   addr46:
                                                                                                                                                   if(!(_loc1_ && _loc2_))
                                                                                                                                                   {
                                                                                                                                                      continue loop46;
                                                                                                                                                   }
                                                                                                                                                   addr522:
                                                                                                                                                   while(!_loc1_)
                                                                                                                                                   {
                                                                                                                                                      §%@§ = "iel";
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §9!a§ = "els";
                                                                                                                                                         §§goto(addr510);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr46);
                                                                                                                                                   }
                                                                                                                                                   continue loop45;
                                                                                                                                                }
                                                                                                                                                continue loop82;
                                                                                                                                             }
                                                                                                                                             addr132:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc2_)
                                                                                                                                                {
                                                                                                                                                   continue loop81;
                                                                                                                                                }
                                                                                                                                                §§goto(addr166);
                                                                                                                                                §§goto(addr37);
                                                                                                                                             }
                                                                                                                                             continue loop81;
                                                                                                                                             §§goto(addr166);
                                                                                                                                          }
                                                                                                                                          §§goto(addr72);
                                                                                                                                       }
                                                                                                                                       §§goto(addr567);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §`I§ = "sge";
                                                                                                                                       continue loop15;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           break loop81;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §+!K§ = 16;
                                                                                                            §§goto(addr804);
                                                                                                            §§goto(addr731);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr753:
                                                                                             }
                                                                                             §§goto(addr743);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §>!w§ = "tex";
                                                                                             §§goto(addr462);
                                                                                             §§goto(addr317);
                                                                                          }
                                                                                          addr317:
                                                                                       }
                                                                                       loop80:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc2_ || _loc1_)
                                                                                          {
                                                                                             §§goto(addr301);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(_loc2_)
                                                                                             {
                                                                                                if(!_loc1_)
                                                                                                {
                                                                                                   §3b§ = "oc";
                                                                                                   §§goto(addr343);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §4!k§ = 28;
                                                                                                      continue loop2;
                                                                                                   }
                                                                                                   addr861:
                                                                                                }
                                                                                                continue loop80;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §true§ = "crs";
                                                                                                addr656:
                                                                                                while(_loc2_ || _loc1_)
                                                                                                {
                                                                                                   DP3 = "dp3";
                                                                                                   break loop46;
                                                                                                }
                                                                                                continue loop6;
                                                                                             }
                                                                                             addr668:
                                                                                             addr348:
                                                                                          }
                                                                                          §§goto(addr834);
                                                                                       }
                                                                                       continue loop51;
                                                                                    }
                                                                                    while(!_loc1_)
                                                                                    {
                                                                                       V = "v";
                                                                                       §§goto(addr383);
                                                                                       §§goto(addr233);
                                                                                    }
                                                                                    §§goto(addr517);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc1_)
                                                                                       {
                                                                                          addr543:
                                                                                          if(_loc1_ && _loc1_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §+_§ = "ifl";
                                                                                          §§goto(addr529);
                                                                                       }
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §#!`§ = "div";
                                                                                       §§goto(addr753);
                                                                                       §§goto(addr543);
                                                                                    }
                                                                                    addr541:
                                                                                    addr758:
                                                                                 }
                                                                                 §§goto(addr707);
                                                                              }
                                                                              §§goto(addr433);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(!_loc1_)
                                                                              {
                                                                                 §?!n§ = "va";
                                                                                 §§goto(addr419);
                                                                              }
                                                                              break;
                                                                              §§goto(addr261);
                                                                           }
                                                                           addr261:
                                                                           §§goto(addr486);
                                                                        }
                                                                        while(!(_loc1_ && _loc1_))
                                                                        {
                                                                           §@!b§ = "cos";
                                                                           §§goto(addr668);
                                                                           §§goto(addr282);
                                                                        }
                                                                        addr282:
                                                                        §§goto(addr829);
                                                                        addr673:
                                                                     }
                                                                     §§goto(addr743);
                                                                  }
                                                                  §§goto(addr719);
                                                               }
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            §3f§ = 24;
                                                            §§goto(addr861);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr799);
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §=!K§ = "nrm";
                                                      while(true)
                                                      {
                                                         §7!=§ = "sin";
                                                         §§goto(addr673);
                                                         addr60:
                                                         if(_loc2_ || §5j§)
                                                         {
                                                            return;
                                                         }
                                                      }
                                                      §§goto(addr591);
                                                   }
                                                }
                                             }
                                             while(_loc2_ || _loc2_)
                                             {
                                                §§goto(addr644);
                                             }
                                             §§goto(addr656);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr364);
      }
      
      private var §^Y§:ByteArray = null;
      
      private var §]t§:String = "";
      
      private var §?`§:Boolean = false;
      
      public function §5j§(param1:Boolean = false)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.§?`§ = param1;
               while(true)
               {
                  if(_loc2_)
                  {
                     if(initialized)
                     {
                        break;
                     }
                     if(!_loc2_)
                     {
                        break;
                     }
                     addr52:
                     continue;
                  }
                  continue loop0;
               }
               return;
            }
         }
         §§goto(addr52);
      }
      
      private static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            initialized = true;
            loop0:
            while(true)
            {
               § `§[§#2§] = new OpCode(§#2§,2,0,0);
               loop1:
               while(true)
               {
                  § `§[ADD] = new OpCode(ADD,3,1,0);
                  loop2:
                  while(true)
                  {
                     § `§[§5&§] = new OpCode(§5&§,3,2,0);
                     loop3:
                     while(true)
                     {
                        § `§[§5!+§] = new OpCode(§5!+§,3,3,0);
                        loop4:
                        while(true)
                        {
                           § `§[§#!`§] = new OpCode(§#!`§,3,4,0);
                           while(true)
                           {
                              § `§[§,A§] = new OpCode(§,A§,2,5,0);
                              addr1070:
                              addr387:
                              while(true)
                              {
                                 § `§[§]+§] = new OpCode(§]+§,3,6,0);
                                 continue loop2;
                              }
                              if(!(_loc1_ || _loc2_))
                              {
                                 continue;
                              }
                              § !K§[§,v§] = new Register(§,v§,"fragment temporary",2,7,§"@§ | §-j§ | §4,§);
                              loop51:
                              while(_loc1_)
                              {
                                 § !K§[§%G§] = new Register(§%G§,"texture sampler",5,7,§"@§ | §4,§);
                                 loop52:
                                 while(true)
                                 {
                                    § !K§[§3b§] = new Register(§3b§,"fragment output",3,0,§"@§ | §-j§);
                                    loop53:
                                    while(true)
                                    {
                                       §>";§[D2] = new Sampler(D2,§!!D§,0);
                                       loop54:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             addr311:
                                             if(_loc1_ || _loc2_)
                                             {
                                                §>";§[D3] = new Sampler(D3,§!!D§,2);
                                                while(true)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      addr290:
                                                      if(!(_loc2_ && _loc1_))
                                                      {
                                                         if(!_loc1_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         §>";§[§0!L§] = new Sampler(§0!L§,§!!D§,1);
                                                         loop56:
                                                         while(!_loc2_)
                                                         {
                                                            §>";§[§=!q§] = new Sampler(§=!q§,§3f§,1);
                                                            loop57:
                                                            while(true)
                                                            {
                                                               §>";§[§%t§] = new Sampler(§%t§,§3f§,2);
                                                               while(true)
                                                               {
                                                                  §>";§[§]X§] = new Sampler(§]X§,§3f§,0);
                                                                  loop59:
                                                                  while(true)
                                                                  {
                                                                     §>";§[§3"?§] = new Sampler(§3"?§,§3f§,0);
                                                                     loop60:
                                                                     while(true)
                                                                     {
                                                                        if(_loc1_)
                                                                        {
                                                                           if(_loc1_)
                                                                           {
                                                                              addr229:
                                                                              if(_loc1_ || _loc1_)
                                                                              {
                                                                                 §>";§[§+!#§] = new Sampler(§+!#§,§4!k§,0);
                                                                                 loop61:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc2_)
                                                                                    {
                                                                                       if(_loc1_)
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §>";§[§@r§] = new Sampler(§@r§,§4!k§,1);
                                                                                          loop62:
                                                                                          while(_loc1_)
                                                                                          {
                                                                                             §>";§[§6Z§] = new Sampler(§6Z§,§8!%§,1 << 0);
                                                                                             addr143:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc2_ && _loc2_))
                                                                                                {
                                                                                                   continue loop61;
                                                                                                }
                                                                                                continue loop62;
                                                                                             }
                                                                                             loop38:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc2_)
                                                                                                {
                                                                                                   § `§[§]!<§] = new OpCode(§]!<§,0,38,§]U§);
                                                                                                   break loop51;
                                                                                                }
                                                                                                break;
                                                                                                addr166:
                                                                                                if(!(_loc1_ || §5j§))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                addr173:
                                                                                                if(_loc1_ || §5j§)
                                                                                                {
                                                                                                   addr180:
                                                                                                   if(!(_loc2_ && §5j§))
                                                                                                   {
                                                                                                      §>";§[§0!s§] = new Sampler(§0!s§,§8!%§,1 << 1);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            continue loop60;
                                                                                                         }
                                                                                                         §§goto(addr143);
                                                                                                      }
                                                                                                      continue loop60;
                                                                                                      addr122:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      loop21:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         § `§[§@I§] = new OpCode(§@I§,2,21,0);
                                                                                                         loop22:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            § `§[§4"1§] = new OpCode(§4"1§,2,22,0);
                                                                                                            loop23:
                                                                                                            while(!_loc2_)
                                                                                                            {
                                                                                                               § `§[M33] = new OpCode(M33,3,23,§+!K§);
                                                                                                               while(!_loc2_)
                                                                                                               {
                                                                                                                  § `§[M44] = new OpCode(M44,3,24,§+!K§);
                                                                                                                  loop25:
                                                                                                                  while(_loc1_ || _loc2_)
                                                                                                                  {
                                                                                                                     addr834:
                                                                                                                     if(_loc1_ || _loc1_)
                                                                                                                     {
                                                                                                                        § `§[M34] = new OpCode(M34,3,25,§+!K§);
                                                                                                                        loop26:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           § `§[§9!9§] = new OpCode(§9!9§,1,26,§]U§ | §4F§ | §5?§);
                                                                                                                           addr803:
                                                                                                                           loop27:
                                                                                                                           while(!_loc2_)
                                                                                                                           {
                                                                                                                              § `§[§1`§] = new OpCode(§1`§,1,27,§]U§ | §4F§ | §5?§);
                                                                                                                              while(_loc1_)
                                                                                                                              {
                                                                                                                                 § `§[§#!u§] = new OpCode(§#!u§,2,28,§]U§ | §4F§ | §5?§);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    § `§[§-!W§] = new OpCode(§-!W§,2,29,§]U§ | §4F§ | §5?§);
                                                                                                                                    loop30:
                                                                                                                                    while(!_loc2_)
                                                                                                                                    {
                                                                                                                                       § `§[§]m§] = new OpCode(§]m§,2,30,§]U§ | §4F§ | §5?§);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          § `§[§+_§] = new OpCode(§+_§,2,31,§]U§ | §4F§ | §5?§);
                                                                                                                                          loop32:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             § `§[§3y§] = new OpCode(§3y§,2,32,§]U§ | §4F§ | §5?§);
                                                                                                                                             while(!_loc2_)
                                                                                                                                             {
                                                                                                                                                if(!_loc2_)
                                                                                                                                                {
                                                                                                                                                   § `§[§%@§] = new OpCode(§%@§,2,33,§]U§ | §4F§ | §5?§);
                                                                                                                                                   loop34:
                                                                                                                                                   while(!_loc2_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc2_)
                                                                                                                                                      {
                                                                                                                                                         § `§[§9!a§] = new OpCode(§9!a§,0,34,§]U§ | §4F§ | §&!J§);
                                                                                                                                                         while(_loc1_)
                                                                                                                                                         {
                                                                                                                                                            continue loop1;
                                                                                                                                                         }
                                                                                                                                                         continue loop32;
                                                                                                                                                         addr662:
                                                                                                                                                      }
                                                                                                                                                      continue loop23;
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc1_ || §5j§)
                                                                                                                                                         {
                                                                                                                                                            continue loop22;
                                                                                                                                                         }
                                                                                                                                                         continue loop34;
                                                                                                                                                      }
                                                                                                                                                      continue loop22;
                                                                                                                                                   }
                                                                                                                                                   continue loop30;
                                                                                                                                                }
                                                                                                                                                §§goto(addr1070);
                                                                                                                                                if(!(_loc1_ || §5j§))
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                §§goto(addr387);
                                                                                                                                             }
                                                                                                                                             addr962:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                § `§[§7!=§] = new OpCode(§7!=§,2,15,0);
                                                                                                                                                addr944:
                                                                                                                                                addr1030:
                                                                                                                                                while(_loc1_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   § `§[§@!b§] = new OpCode(§@!b§,2,16,0);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      § `§[§true§] = new OpCode(§true§,3,17,0);
                                                                                                                                                      addr922:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         § `§[DP3] = new OpCode(DP3,3,18,0);
                                                                                                                                                         addr911:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            § `§[DP4] = new OpCode(DP4,3,19,0);
                                                                                                                                                            break loop25;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr834);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   § `§[§&[§] = new OpCode(§&[§,2,9,0);
                                                                                                                                                   break loop27;
                                                                                                                                                   §§goto(addr944);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop26;
                                                                                                                                 }
                                                                                                                                 loop42:
                                                                                                                                 for(; !(_loc2_ && _loc2_); while(!(_loc2_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    if(!_loc1_)
                                                                                                                                    {
                                                                                                                                       continue loop2;
                                                                                                                                    }
                                                                                                                                    § !K§[V] = new Register(V,"varying",4,7,§0!H§ | §"@§ | §4,§ | §-j§);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc1_)
                                                                                                                                       {
                                                                                                                                          if(!_loc2_)
                                                                                                                                          {
                                                                                                                                             § !K§[§4+§] = new Register(§4+§,"fragment constant",1,27,§"@§ | §4,§);
                                                                                                                                             break loop54;
                                                                                                                                          }
                                                                                                                                          §§goto(addr543);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                       addr101:
                                                                                                                                       if(!(_loc1_ || _loc2_))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          §>";§[§"!=§] = new Sampler(§"!=§,§2+§,1);
                                                                                                                                          loop66:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc1_ || _loc2_))
                                                                                                                                             {
                                                                                                                                                continue loop57;
                                                                                                                                             }
                                                                                                                                             if(!_loc2_)
                                                                                                                                             {
                                                                                                                                                if(!_loc1_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §>";§[§!i§] = new Sampler(§!i§,§2+§,1);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc2_)
                                                                                                                                                   {
                                                                                                                                                      if(_loc2_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      if(_loc1_)
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      continue loop4;
                                                                                                                                                   }
                                                                                                                                                   continue loop66;
                                                                                                                                                }
                                                                                                                                                §§goto(addr739);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr122);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr771);
                                                                                                                                          addr71:
                                                                                                                                       }
                                                                                                                                       §§goto(addr933);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       § !K§[§?!7§] = new Register(§?!7§,"vertex constant",1,127,§0!H§ | §4,§);
                                                                                                                                       §§goto(addr469);
                                                                                                                                    }
                                                                                                                                 })
                                                                                                                                 {
                                                                                                                                    § `§[§]!l§] = new OpCode(§]!l§,3,42,0);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       § `§[§4!c§] = new OpCode(§4!c§,2,43,0);
                                                                                                                                       break loop56;
                                                                                                                                       addr469:
                                                                                                                                       while(!(_loc2_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          § !K§[§3=§] = new Register(§3=§,"vertex temporary",2,7,§0!H§ | §-j§ | §4,§);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             § !K§[§ x§] = new Register(§ x§,"vertex output",3,0,§0!H§ | §-j§);
                                                                                                                                             continue loop42;
                                                                                                                                             addr159:
                                                                                                                                             if(!(_loc1_ || _loc2_))
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             §§goto(addr166);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop25;
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              § `§[§9!%§] = new OpCode(§9!%§,2,10,0);
                                                                                                                              addr1006:
                                                                                                                              addr1041:
                                                                                                                              while(!_loc2_)
                                                                                                                              {
                                                                                                                                 § `§[§`&§] = new OpCode(§`&§,3,11,0);
                                                                                                                                 break loop60;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 § `§[§3t§] = new OpCode(§3t§,2,8,0);
                                                                                                                                 §§goto(addr1030);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr922);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     § `§[§ do§] = new OpCode(§ do§,2,20,0);
                                                                                                                     continue loop21;
                                                                                                                     §§goto(addr827);
                                                                                                                  }
                                                                                                                  addr827:
                                                                                                                  if(!(_loc1_ || _loc2_))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  if(_loc1_)
                                                                                                                  {
                                                                                                                     return;
                                                                                                                  }
                                                                                                                  §§goto(addr944);
                                                                                                               }
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            addr984:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               § `§[§@!_§] = new OpCode(§@!_§,2,13,0);
                                                                                                               break loop61;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      § `§[§=!^§] = new OpCode(§=!^§,0,37,§]U§ | §&!J§);
                                                                                                      continue loop38;
                                                                                                      §§goto(addr173);
                                                                                                   }
                                                                                                   addr627:
                                                                                                }
                                                                                             }
                                                                                             while(_loc1_ || §5j§)
                                                                                             {
                                                                                                § `§[§2!O§] = new OpCode(§2!O§,1,36,§]U§ | §4F§ | §5?§);
                                                                                                §§goto(addr627);
                                                                                             }
                                                                                             §§goto(addr662);
                                                                                          }
                                                                                          continue loop56;
                                                                                       }
                                                                                       continue loop53;
                                                                                    }
                                                                                    continue loop59;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    § `§[§=!K§] = new OpCode(§=!K§,2,14,0);
                                                                                    §§goto(addr962);
                                                                                 }
                                                                              }
                                                                              break;
                                                                           }
                                                                           continue loop52;
                                                                        }
                                                                        continue loop54;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        § `§[§!U§] = new OpCode(§!U§,2,12,0);
                                                                        §§goto(addr984);
                                                                        §§goto(addr229);
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!(_loc1_ || §5j§))
                                                                  {
                                                                     continue loop57;
                                                                  }
                                                                  §§goto(addr101);
                                                                  §§goto(addr71);
                                                               }
                                                               §§goto(addr933);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            § !K§[§?!n§] = new Register(§?!n§,"vertex attribute",0,7,§0!H§ | §4,§);
                                                            §§goto(addr490);
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr430);
                                                }
                                                while(true)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      § `§[§>!w§] = new OpCode(§>!w§,3,40,§@!$§ | §>U§);
                                                      §§goto(addr543);
                                                   }
                                                   break;
                                                   §§goto(addr290);
                                                }
                                                §§goto(addr911);
                                                addr580:
                                             }
                                             break;
                                          }
                                          continue loop51;
                                       }
                                       while(!_loc2_)
                                       {
                                          §§goto(addr380);
                                          §§goto(addr311);
                                       }
                                       §§goto(addr469);
                                    }
                                 }
                              }
                              while(!_loc2_)
                              {
                                 if(!_loc2_)
                                 {
                                    § `§[§=!D§] = new OpCode(§=!D§,1,39,§]U§ | §@!$§);
                                    §§goto(addr580);
                                 }
                                 §§goto(addr1006);
                              }
                              §§goto(addr803);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr455);
      }
      
      public function get error() : String
      {
         return this.§]t§;
      }
      
      public function get §;h§() : ByteArray
      {
         return this.§^Y§;
      }
      
      public function §^j§(param1:String, param2:String, param3:Boolean = false) : ByteArray
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfuscation" for better results.
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
