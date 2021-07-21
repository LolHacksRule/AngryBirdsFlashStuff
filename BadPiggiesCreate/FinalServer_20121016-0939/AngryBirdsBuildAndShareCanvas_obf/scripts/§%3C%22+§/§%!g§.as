package §<"+§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §%!g§
   {
      
      private static var initialized:Boolean = false;
      
      private static const § !d§:Dictionary;
      
      private static const §4q§:Dictionary;
      
      private static const §8y§:Dictionary;
      
      private static const §7!n§:int = 4;
      
      private static const §83§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §@!R§:uint = 12;
      
      private static const §4H§:uint = 16;
      
      private static const §[!X§:uint = 20;
      
      private static const § C§:uint = 24;
      
      private static const §^!e§:uint = 28;
      
      private static const §"O§:uint = 1;
      
      private static const §"6§:uint = 2;
      
      private static const §@s§:uint = 32;
      
      private static const §9"5§:uint = 64;
      
      private static const §?!y§:uint = 1;
      
      private static const §06§:uint = 2;
      
      private static const §!?§:uint = 4;
      
      private static const §^![§:uint = 8;
      
      private static const §37§:uint = 16;
      
      private static const §^1§:uint = 32;
      
      private static const §7">§:uint = 128;
      
      private static const §4"2§:String = "mov";
      
      private static const ADD:String = "add";
      
      private static const §!"3§:String = "sub";
      
      private static const §4![§:String = "mul";
      
      private static const § U§:String = "div";
      
      private static const §'""§:String = "rcp";
      
      private static const §2K§:String = "min";
      
      private static const §'!f§:String = "max";
      
      private static const §=3§:String = "frc";
      
      private static const §!s§:String = "sqt";
      
      private static const §-Y§:String = "rsq";
      
      private static const §>B§:String = "pow";
      
      private static const §?w§:String = "log";
      
      private static const §9!-§:String = "exp";
      
      private static const §;!A§:String = "nrm";
      
      private static const §%S§:String = "sin";
      
      private static const §-!v§:String = "cos";
      
      private static const §`?§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §88§:String = "abs";
      
      private static const §5!8§:String = "neg";
      
      private static const §,-§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §7!f§:String = "ifz";
      
      private static const §1""§:String = "inz";
      
      private static const §>C§:String = "ife";
      
      private static const §>!l§:String = "ine";
      
      private static const §[n§:String = "ifg";
      
      private static const §`!k§:String = "ifl";
      
      private static const §+";§:String = "ieg";
      
      private static const §["8§:String = "iel";
      
      private static const §&!R§:String = "els";
      
      private static const §`p§:String = "eif";
      
      private static const §`!b§:String = "rep";
      
      private static const § "-§:String = "erp";
      
      private static const §#q§:String = "brk";
      
      private static const §^!I§:String = "kil";
      
      private static const §!"9§:String = "tex";
      
      private static const §>F§:String = "sge";
      
      private static const §4S§:String = "slt";
      
      private static const § "1§:String = "sgn";
      
      private static const §%J§:String = "va";
      
      private static const §'"9§:String = "vc";
      
      private static const §;8§:String = "vt";
      
      private static const §!=§:String = "op";
      
      private static const V:String = "v";
      
      private static const §%!6§:String = "fc";
      
      private static const §,!O§:String = "ft";
      
      private static const § %§:String = "fs";
      
      private static const §4!a§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §&q§:String = "cube";
      
      private static const §0!N§:String = "mipnearest";
      
      private static const §<H§:String = "miplinear";
      
      private static const §5c§:String = "mipnone";
      
      private static const §5"?§:String = "nomip";
      
      private static const §8!b§:String = "nearest";
      
      private static const §-!F§:String = "linear";
      
      private static const §#!O§:String = "centroid";
      
      private static const §@!n§:String = "single";
      
      private static const §#Q§:String = "depth";
      
      private static const § !x§:String = "repeat";
      
      private static const §;!l§:String = "wrap";
      
      private static const §>v§:String = "clamp";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            initialized = false;
            loop0:
            while(true)
            {
               § !d§ = new Dictionary();
               loop1:
               while(true)
               {
                  §4q§ = new Dictionary();
                  loop2:
                  while(true)
                  {
                     §8y§ = new Dictionary();
                     loop3:
                     while(true)
                     {
                        §7!n§ = 4;
                        loop4:
                        while(true)
                        {
                           §83§ = 256;
                           loop5:
                           while(true)
                           {
                              FRAGMENT = "fragment";
                              loop6:
                              while(true)
                              {
                                 VERTEX = "vertex";
                                 loop7:
                                 while(true)
                                 {
                                    §@!R§ = 12;
                                    loop8:
                                    while(true)
                                    {
                                       §4H§ = 16;
                                       while(true)
                                       {
                                          §[!X§ = 20;
                                          addr839:
                                          while(true)
                                          {
                                             § C§ = 24;
                                             addr834:
                                             while(true)
                                             {
                                                §^!e§ = 28;
                                                addr829:
                                                while(true)
                                                {
                                                   §"O§ = 1;
                                                   continue loop6;
                                                }
                                             }
                                          }
                                          addr291:
                                          if(!(_loc1_ || _loc2_))
                                          {
                                             continue;
                                          }
                                          § %§ = "fs";
                                          loop76:
                                          while(true)
                                          {
                                             if(_loc1_)
                                             {
                                                if(_loc1_)
                                                {
                                                   if(_loc1_)
                                                   {
                                                      §4!a§ = "oc";
                                                      loop77:
                                                      while(true)
                                                      {
                                                         D2 = "2d";
                                                         addr252:
                                                         loop78:
                                                         for(; _loc1_ || §%!g§; loop80:
                                                         while(true)
                                                         {
                                                            if(_loc1_ || §%!g§)
                                                            {
                                                               addr226:
                                                               if(_loc1_ || §%!g§)
                                                               {
                                                                  if(_loc1_)
                                                                  {
                                                                     §0!N§ = "mipnearest";
                                                                     loop81:
                                                                     while(!_loc2_)
                                                                     {
                                                                        §<H§ = "miplinear";
                                                                        while(true)
                                                                        {
                                                                           if(_loc1_)
                                                                           {
                                                                              if(!_loc2_)
                                                                              {
                                                                                 if(!_loc1_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §5c§ = "mipnone";
                                                                                 continue loop76;
                                                                              }
                                                                              continue loop80;
                                                                           }
                                                                           continue loop81;
                                                                        }
                                                                        §§goto(addr240);
                                                                     }
                                                                     loop72:
                                                                     while(true)
                                                                     {
                                                                        if(_loc1_)
                                                                        {
                                                                           if(_loc1_)
                                                                           {
                                                                              addr326:
                                                                              if(_loc1_ || §%!g§)
                                                                              {
                                                                                 addr333:
                                                                                 if(_loc1_ || _loc2_)
                                                                                 {
                                                                                    if(_loc1_)
                                                                                    {
                                                                                       V = "v";
                                                                                       loop73:
                                                                                       while(true)
                                                                                       {
                                                                                          §%!6§ = "fc";
                                                                                          loop74:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc1_ || §%!g§)
                                                                                             {
                                                                                                if(_loc1_)
                                                                                                {
                                                                                                   §,!O§ = "ft";
                                                                                                   loop75:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc2_ && _loc1_))
                                                                                                      {
                                                                                                         if(!_loc2_)
                                                                                                         {
                                                                                                            if(_loc1_)
                                                                                                            {
                                                                                                               §§goto(addr291);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               loop50:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §1""§ = "inz";
                                                                                                                  loop51:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §>C§ = "ife";
                                                                                                                     addr567:
                                                                                                                     loop52:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           addr569:
                                                                                                                           if(_loc1_ || _loc2_)
                                                                                                                           {
                                                                                                                              §>!l§ = "ine";
                                                                                                                              break loop72;
                                                                                                                           }
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        addr638:
                                                                                                                        loop43:
                                                                                                                        while(_loc1_ || _loc1_)
                                                                                                                        {
                                                                                                                           §88§ = "abs";
                                                                                                                           loop44:
                                                                                                                           while(_loc1_ || _loc1_)
                                                                                                                           {
                                                                                                                              §5!8§ = "neg";
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §,-§ = "sat";
                                                                                                                                 addr612:
                                                                                                                                 loop46:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc2_)
                                                                                                                                    {
                                                                                                                                       if(_loc1_)
                                                                                                                                       {
                                                                                                                                          M33 = "m33";
                                                                                                                                          break loop76;
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    addr670:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §%S§ = "sin";
                                                                                                                                       addr665:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §-!v§ = "cos";
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §`?§ = "crs";
                                                                                                                                             §§goto(addr655);
                                                                                                                                             addr382:
                                                                                                                                             if(!(_loc1_ || _loc1_))
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             if(!_loc2_)
                                                                                                                                             {
                                                                                                                                                §'"9§ = "vc";
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc2_ && §%!g§))
                                                                                                                                                   {
                                                                                                                                                      addr361:
                                                                                                                                                      if(!(_loc1_ || §%!g§))
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                         addr347:
                                                                                                                                                      }
                                                                                                                                                      §;8§ = "vt";
                                                                                                                                                      while(_loc1_)
                                                                                                                                                      {
                                                                                                                                                         §!=§ = "op";
                                                                                                                                                         continue loop72;
                                                                                                                                                      }
                                                                                                                                                      continue loop5;
                                                                                                                                                   }
                                                                                                                                                   addr417:
                                                                                                                                                   while(_loc1_)
                                                                                                                                                   {
                                                                                                                                                      continue loop3;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr834);
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §'!f§ = "max";
                                                                                                                                                   break loop43;
                                                                                                                                                   §§goto(addr361);
                                                                                                                                                }
                                                                                                                                                addr723:
                                                                                                                                                addr354:
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                ADD = "add";
                                                                                                                                                break loop46;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr326);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr748:
                                                                                                                                 loop25:
                                                                                                                                 while(_loc1_ || _loc1_)
                                                                                                                                 {
                                                                                                                                    §!"3§ = "sub";
                                                                                                                                    loop26:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §4![§ = "mul";
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          § U§ = "div";
                                                                                                                                          break loop52;
                                                                                                                                          addr529:
                                                                                                                                          loop57:
                                                                                                                                          for(; !(_loc2_ && §%!g§); loop65:
                                                                                                                                          while(_loc1_ || §%!g§)
                                                                                                                                          {
                                                                                                                                             if(_loc1_)
                                                                                                                                             {
                                                                                                                                                addr450:
                                                                                                                                                if(!(_loc2_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   §>F§ = "sge";
                                                                                                                                                   §§goto(addr417);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §`!k§ = "ifl";
                                                                                                                                                      break loop75;
                                                                                                                                                      §§goto(addr450);
                                                                                                                                                   }
                                                                                                                                                   addr553:
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §["8§ = "iel";
                                                                                                                                                break loop65;
                                                                                                                                             }
                                                                                                                                          })
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §&!R§ = "els";
                                                                                                                                                loop59:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §`p§ = "eif";
                                                                                                                                                   addr517:
                                                                                                                                                   while(_loc1_)
                                                                                                                                                   {
                                                                                                                                                      §`!b§ = "rep";
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         § "-§ = "erp";
                                                                                                                                                         continue loop51;
                                                                                                                                                         addr175:
                                                                                                                                                         if(!(_loc1_ || _loc2_))
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         §8!b§ = "nearest";
                                                                                                                                                         loop85:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc2_ && §%!g§))
                                                                                                                                                            {
                                                                                                                                                               addr154:
                                                                                                                                                               if(!(_loc1_ || _loc1_))
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               continue loop1;
                                                                                                                                                            }
                                                                                                                                                            continue loop76;
                                                                                                                                                            addr85:
                                                                                                                                                            if(!(_loc1_ || _loc1_))
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            }
                                                                                                                                                            if(_loc1_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  while(_loc1_)
                                                                                                                                                                  {
                                                                                                                                                                     addr405:
                                                                                                                                                                     if(_loc1_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        § "1§ = "sgn";
                                                                                                                                                                        break loop85;
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §37§ = 16;
                                                                                                                                                                        addr775:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §^1§ = 32;
                                                                                                                                                                           addr770:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §7">§ = 128;
                                                                                                                                                                              break loop44;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr405);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  continue loop44;
                                                                                                                                                                  addr403:
                                                                                                                                                               }
                                                                                                                                                               if(!_loc1_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop59;
                                                                                                                                                               }
                                                                                                                                                               if(!_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     §;!l§ = "wrap";
                                                                                                                                                                     continue loop77;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop4;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr829);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr201);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         loop68:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc2_)
                                                                                                                                                            {
                                                                                                                                                               §%J§ = "va";
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     addr375:
                                                                                                                                                                     if(_loc2_ && _loc1_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr382);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §!"9§ = "tex";
                                                                                                                                                                        continue loop57;
                                                                                                                                                                     }
                                                                                                                                                                     addr462:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     M34 = "m34";
                                                                                                                                                                     break loop68;
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                                  §§goto(addr375);
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §@s§ = 32;
                                                                                                                                                                  addr807:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §9"5§ = 64;
                                                                                                                                                                     addr802:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §?!y§ = 1;
                                                                                                                                                                        break loop25;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr373:
                                                                                                                                                               addr596:
                                                                                                                                                               addr812:
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                            §§goto(addr154);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §7!f§ = "ifz";
                                                                                                                                                            continue loop50;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop75;
                                                                                                                                                   }
                                                                                                                                                   continue loop26;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §06§ = 2;
                                                                                                                                    addr792:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §!?§ = 4;
                                                                                                                                       while(_loc1_)
                                                                                                                                       {
                                                                                                                                          §^![§ = 8;
                                                                                                                                          §§goto(addr780);
                                                                                                                                          if(!(_loc2_ && _loc1_))
                                                                                                                                          {
                                                                                                                                             return;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr839);
                                                                                                                                    }
                                                                                                                                    §§goto(addr748);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §4"2§ = "mov";
                                                                                                                              §§goto(addr760);
                                                                                                                              §§goto(addr626);
                                                                                                                           }
                                                                                                                           addr626:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §=3§ = "frc";
                                                                                                                           loop32:
                                                                                                                           for(; !_loc2_; while(!(_loc2_ && _loc2_))
                                                                                                                           {
                                                                                                                              if(_loc1_)
                                                                                                                              {
                                                                                                                                 §?w§ = "log";
                                                                                                                                 break loop74;
                                                                                                                              }
                                                                                                                              §§goto(addr802);
                                                                                                                           })
                                                                                                                           {
                                                                                                                              if(_loc2_)
                                                                                                                              {
                                                                                                                                 continue loop8;
                                                                                                                              }
                                                                                                                              §!s§ = "sqt";
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §-Y§ = "rsq";
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §>B§ = "pow";
                                                                                                                                    continue loop32;
                                                                                                                                    addr474:
                                                                                                                                    if(!(_loc2_ && §%!g§))
                                                                                                                                    {
                                                                                                                                       addr481:
                                                                                                                                       if(_loc1_ || §%!g§)
                                                                                                                                       {
                                                                                                                                          continue loop7;
                                                                                                                                       }
                                                                                                                                       continue loop6;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr333);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr807);
                                                                                                                           §§goto(addr638);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §'""§ = "rcp";
                                                                                                                        loop29:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §2K§ = "min";
                                                                                                                           §§goto(addr723);
                                                                                                                           addr116:
                                                                                                                           if(_loc2_ && §%!g§)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           § !x§ = "repeat";
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc2_ && §%!g§)
                                                                                                                              {
                                                                                                                                 loop89:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc1_ || _loc2_)
                                                                                                                                    {
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          §§goto(addr116);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §#!O§ = "centroid";
                                                                                                                                          while(_loc1_)
                                                                                                                                          {
                                                                                                                                             §@!n§ = "single";
                                                                                                                                             while(_loc1_)
                                                                                                                                             {
                                                                                                                                                §#Q§ = "depth";
                                                                                                                                                continue loop89;
                                                                                                                                                if(_loc2_ && _loc2_)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                if(!_loc2_)
                                                                                                                                                {
                                                                                                                                                   continue loop75;
                                                                                                                                                }
                                                                                                                                                addr173:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!_loc2_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr175);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr354);
                                                                                                                                                }
                                                                                                                                                §§goto(addr512);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop73;
                                                                                                                                       }
                                                                                                                                       addr142:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop29;
                                                                                                                              }
                                                                                                                              §§goto(addr85);
                                                                                                                              §§goto(addr373);
                                                                                                                              addr29:
                                                                                                                              if(!(_loc1_ || _loc1_))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              §§goto(addr36);
                                                                                                                           }
                                                                                                                           §§goto(addr829);
                                                                                                                        }
                                                                                                                        §§goto(addr569);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr517);
                                                                                                   }
                                                                                                   while(_loc1_)
                                                                                                   {
                                                                                                      §+";§ = "ieg";
                                                                                                      §§goto(addr541);
                                                                                                   }
                                                                                                   §§goto(addr775);
                                                                                                }
                                                                                                break;
                                                                                             }
                                                                                             §§goto(addr347);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §9!-§ = "exp";
                                                                                             addr675:
                                                                                             while(true)
                                                                                             {
                                                                                                §;!A§ = "nrm";
                                                                                                §§goto(addr670);
                                                                                                break loop80;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr770);
                                                                                 }
                                                                                 §§goto(addr704);
                                                                              }
                                                                              §§goto(addr665);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr441);
                                                                        §§goto(addr529);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           if(!_loc2_)
                                                                           {
                                                                              §[n§ = "ifg";
                                                                              §§goto(addr553);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr621);
                                                                     }
                                                                     §§goto(addr685);
                                                                  }
                                                                  §§goto(addr567);
                                                               }
                                                               break;
                                                            }
                                                            continue loop78;
                                                         },while(true)
                                                         {
                                                            if(_loc1_ || §%!g§)
                                                            {
                                                               §§goto(addr474);
                                                            }
                                                            break;
                                                            §§goto(addr226);
                                                         },§§goto(addr675))
                                                         {
                                                            D3 = "3d";
                                                            while(_loc1_ || §%!g§)
                                                            {
                                                               §&q§ = "cube";
                                                               continue loop78;
                                                            }
                                                            while(true)
                                                            {
                                                               DP3 = "dp3";
                                                               break loop78;
                                                               §§goto(addr240);
                                                            }
                                                            addr240:
                                                         }
                                                         while(true)
                                                         {
                                                            DP4 = "dp4";
                                                            §§goto(addr638);
                                                            §§goto(addr252);
                                                         }
                                                         while(_loc1_ || §%!g§)
                                                         {
                                                            §>v§ = "clamp";
                                                            if(_loc2_)
                                                            {
                                                               continue;
                                                            }
                                                            §§goto(addr29);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr792);
                                                }
                                                break;
                                             }
                                             §§goto(addr500);
                                             while(!(_loc2_ && _loc1_))
                                             {
                                                if(!_loc1_)
                                                {
                                                   continue loop0;
                                                }
                                                §5"?§ = "nomip";
                                                §§goto(addr173);
                                                §§goto(addr147);
                                             }
                                          }
                                          while(!_loc2_)
                                          {
                                             if(_loc2_)
                                             {
                                                continue loop2;
                                             }
                                             M44 = "m44";
                                             §§goto(addr596);
                                          }
                                          §§goto(addr612);
                                       }
                                    }
                                    if(_loc2_ && §%!g§)
                                    {
                                       continue;
                                    }
                                    §^!I§ = "kil";
                                    §§goto(addr462);
                                 }
                              }
                           }
                        }
                        if(!(_loc1_ || §%!g§))
                        {
                           continue;
                        }
                        §4S§ = "slt";
                        §§goto(addr403);
                     }
                  }
                  if(!(_loc1_ || _loc1_))
                  {
                     continue;
                  }
                  §-!F§ = "linear";
                  §§goto(addr142);
               }
            }
         }
         §§goto(addr536);
      }
      
      private var §5!;§:ByteArray = null;
      
      private var §!"&§:String = "";
      
      private var §5T§:Boolean = false;
      
      public function §%!g§(param1:Boolean = false)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            loop0:
            while(true)
            {
               this.§5T§ = param1;
               while(!initialized)
               {
                  if(_loc3_ || this)
                  {
                     if(!_loc3_)
                     {
                        continue;
                     }
                     if(_loc2_)
                     {
                        continue loop0;
                     }
                     init();
                  }
                  break;
               }
               return;
            }
         }
         §§goto(addr48);
      }
      
      private static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            initialized = true;
            loop0:
            while(true)
            {
               § !d§[§4"2§] = new OpCode(§4"2§,2,0,0);
               while(true)
               {
                  § !d§[ADD] = new OpCode(ADD,3,1,0);
                  while(true)
                  {
                     § !d§[§!"3§] = new OpCode(§!"3§,3,2,0);
                     addr1173:
                     while(true)
                     {
                        § !d§[§4![§] = new OpCode(§4![§,3,3,0);
                        continue loop0;
                     }
                     while(!(_loc2_ && _loc2_))
                     {
                        § !d§[§-!v§] = new OpCode(§-!v§,2,16,0);
                        while(true)
                        {
                           § !d§[§`?§] = new OpCode(§`?§,3,17,0);
                           while(true)
                           {
                              § !d§[DP3] = new OpCode(DP3,3,18,0);
                              while(true)
                              {
                                 § !d§[DP4] = new OpCode(DP4,3,19,0);
                                 while(true)
                                 {
                                    § !d§[§88§] = new OpCode(§88§,2,20,0);
                                    loop21:
                                    while(true)
                                    {
                                       § !d§[§5!8§] = new OpCode(§5!8§,2,21,0);
                                       addr941:
                                       while(true)
                                       {
                                          § !d§[§,-§] = new OpCode(§,-§,2,22,0);
                                          continue loop21;
                                       }
                                    }
                                 }
                                 if(!(_loc1_ || _loc1_))
                                 {
                                    continue;
                                 }
                                 §8y§[§&q§] = new Sampler(§&q§,§@!R§,1);
                                 §§goto(addr313);
                              }
                           }
                        }
                        if(_loc2_ && _loc2_)
                        {
                           continue;
                        }
                        if(!_loc2_)
                        {
                           §4q§[§,!O§] = new Register(§,!O§,"fragment temporary",2,7,§@s§ | §"O§ | §"6§);
                           §§goto(addr416);
                        }
                        §§goto(addr1054);
                     }
                  }
               }
            }
         }
         §§goto(addr560);
      }
      
      public function get error() : String
      {
         return this.§!"&§;
      }
      
      public function get §6"%§() : ByteArray
      {
         return this.§5!;§;
      }
      
      public function §6!<§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
