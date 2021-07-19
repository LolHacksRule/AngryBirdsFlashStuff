package §#!5§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class § !R§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §3k§:Dictionary;
      
      private static const §]P§:Dictionary;
      
      private static const §"?§:Dictionary;
      
      private static const §++§:int = 4;
      
      private static const §>Y§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §=!"§:uint = 12;
      
      private static const § Q§:uint = 16;
      
      private static const §15§:uint = 20;
      
      private static const §3!7§:uint = 24;
      
      private static const §5!6§:uint = 28;
      
      private static const §3i§:uint = 1;
      
      private static const §"!,§:uint = 2;
      
      private static const §'n§:uint = 32;
      
      private static const §;!9§:uint = 64;
      
      private static const §6!>§:uint = 1;
      
      private static const §[!3§:uint = 2;
      
      private static const §'!#§:uint = 4;
      
      private static const §6&§:uint = 8;
      
      private static const §<W§:uint = 16;
      
      private static const §;b§:uint = 32;
      
      private static const §!9§:uint = 128;
      
      private static const §-p§:String = "mov";
      
      private static const §#!?§:String = "add";
      
      private static const §4B§:String = "sub";
      
      private static const §[!I§:String = "mul";
      
      private static const §=q§:String = "div";
      
      private static const §-!3§:String = "rcp";
      
      private static const §&Y§:String = "min";
      
      private static const §2!W§:String = "max";
      
      private static const §[!!§:String = "frc";
      
      private static const §2X§:String = "sqt";
      
      private static const §"!I§:String = "rsq";
      
      private static const §^t§:String = "pow";
      
      private static const §7!0§:String = "log";
      
      private static const §,8§:String = "exp";
      
      private static const §@i§:String = "nrm";
      
      private static const §@!9§:String = "sin";
      
      private static const § a§:String = "cos";
      
      private static const § q§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §6!I§:String = "abs";
      
      private static const §]7§:String = "neg";
      
      private static const §7!5§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §>!B§:String = "ifz";
      
      private static const §try§:String = "inz";
      
      private static const §'!Z§:String = "ife";
      
      private static const §;V§:String = "ine";
      
      private static const §#K§:String = "ifg";
      
      private static const §'>§:String = "ifl";
      
      private static const §4!5§:String = "ieg";
      
      private static const §%D§:String = "iel";
      
      private static const §=!;§:String = "els";
      
      private static const §41§:String = "eif";
      
      private static const §,#§:String = "rep";
      
      private static const §1!=§:String = "erp";
      
      private static const §@F§:String = "brk";
      
      private static const §2K§:String = "kil";
      
      private static const §?!<§:String = "tex";
      
      private static const §1?§:String = "sge";
      
      private static const §#n§:String = "slt";
      
      private static const §<!G§:String = "sgn";
      
      private static const §;!L§:String = "va";
      
      private static const §5K§:String = "vc";
      
      private static const §[!0§:String = "vt";
      
      private static const §4@§:String = "op";
      
      private static const §>_§:String = "v";
      
      private static const §]d§:String = "fc";
      
      private static const §1j§:String = "ft";
      
      private static const §4N§:String = "fs";
      
      private static const §>!!§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §;F§:String = "cube";
      
      private static const §!0§:String = "mipnearest";
      
      private static const §9!`§:String = "miplinear";
      
      private static const §,L§:String = "mipnone";
      
      private static const §`!1§:String = "nomip";
      
      private static const §@+§:String = "nearest";
      
      private static const §]!=§:String = "linear";
      
      private static const §<_§:String = "centroid";
      
      private static const §8[§:String = "single";
      
      private static const §3!U§:String = "depth";
      
      private static const §@!J§:String = "repeat";
      
      private static const §=!Q§:String = "wrap";
      
      private static const §,g§:String = "clamp";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            initialized = false;
            loop0:
            while(true)
            {
               §3k§ = new Dictionary();
               loop1:
               while(true)
               {
                  §]P§ = new Dictionary();
                  while(true)
                  {
                     §"?§ = new Dictionary();
                     loop3:
                     while(true)
                     {
                        §++§ = 4;
                        loop4:
                        while(true)
                        {
                           §>Y§ = 256;
                           loop5:
                           while(true)
                           {
                              FRAGMENT = "fragment";
                              loop6:
                              while(true)
                              {
                                 VERTEX = "vertex";
                                 while(true)
                                 {
                                    §=!"§ = 12;
                                    loop8:
                                    while(true)
                                    {
                                       § Q§ = 16;
                                       loop9:
                                       while(true)
                                       {
                                          §15§ = 20;
                                          loop10:
                                          while(true)
                                          {
                                             §3!7§ = 24;
                                             while(true)
                                             {
                                                §5!6§ = 28;
                                                addr850:
                                                while(true)
                                                {
                                                   §3i§ = 1;
                                                   addr845:
                                                   while(true)
                                                   {
                                                      §"!,§ = 2;
                                                      continue loop4;
                                                   }
                                                }
                                                while(!(_loc1_ && _loc1_))
                                                {
                                                   §]d§ = "fc";
                                                   loop73:
                                                   for(; _loc2_ || _loc1_; if(!(_loc2_ || _loc2_))
                                                   {
                                                      continue;
                                                   },§§goto(addr176))
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         §1j§ = "ft";
                                                         loop74:
                                                         while(true)
                                                         {
                                                            if(!_loc1_)
                                                            {
                                                               addr280:
                                                               if(_loc2_ || _loc2_)
                                                               {
                                                                  if(!_loc1_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  addr510:
                                                                  loop55:
                                                                  while(!(_loc1_ && _loc1_))
                                                                  {
                                                                     §4!5§ = "ieg";
                                                                     loop56:
                                                                     while(true)
                                                                     {
                                                                        §%D§ = "iel";
                                                                        loop57:
                                                                        while(true)
                                                                        {
                                                                           if(_loc2_)
                                                                           {
                                                                              if(!_loc1_)
                                                                              {
                                                                                 if(!_loc1_)
                                                                                 {
                                                                                    §=!;§ = "els";
                                                                                    loop58:
                                                                                    while(true)
                                                                                    {
                                                                                       §41§ = "eif";
                                                                                       addr482:
                                                                                       while(!_loc1_)
                                                                                       {
                                                                                          §,#§ = "rep";
                                                                                          continue loop58;
                                                                                       }
                                                                                       loop33:
                                                                                       while(true)
                                                                                       {
                                                                                          §"!I§ = "rsq";
                                                                                          loop34:
                                                                                          for(; !_loc1_; while(!(_loc1_ && _loc1_))
                                                                                          {
                                                                                             §]7§ = "neg";
                                                                                             §§goto(addr627);
                                                                                          })
                                                                                          {
                                                                                             §^t§ = "pow";
                                                                                             loop35:
                                                                                             while(true)
                                                                                             {
                                                                                                §7!0§ = "log";
                                                                                                loop36:
                                                                                                while(true)
                                                                                                {
                                                                                                   §,8§ = "exp";
                                                                                                   loop37:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §@i§ = "nrm";
                                                                                                      loop38:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §@!9§ = "sin";
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc1_)
                                                                                                            {
                                                                                                               continue loop8;
                                                                                                            }
                                                                                                            continue loop37;
                                                                                                            addr634:
                                                                                                            if(!(_loc2_ || _loc1_))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               if(!_loc1_)
                                                                                                               {
                                                                                                                  §7!5§ = "sat";
                                                                                                                  loop46:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     M33 = "m33";
                                                                                                                     loop47:
                                                                                                                     while(_loc2_)
                                                                                                                     {
                                                                                                                        M44 = "m44";
                                                                                                                        loop48:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(_loc2_ || § !R§)
                                                                                                                           {
                                                                                                                              addr603:
                                                                                                                              if(_loc2_ || § !R§)
                                                                                                                              {
                                                                                                                                 M34 = "m34";
                                                                                                                                 continue loop46;
                                                                                                                              }
                                                                                                                              addr828:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §;!9§ = 64;
                                                                                                                                 addr823:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §6!>§ = 1;
                                                                                                                                    addr818:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §[!3§ = 2;
                                                                                                                                       break loop34;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr603);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           break;
                                                                                                                           addr434:
                                                                                                                           if(_loc1_ && § !R§)
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §@F§ = "brk";
                                                                                                                           loop62:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §2K§ = "kil";
                                                                                                                              addr415:
                                                                                                                              loop63:
                                                                                                                              while(_loc2_ || _loc1_)
                                                                                                                              {
                                                                                                                                 §?!<§ = "tex";
                                                                                                                                 while(!(_loc1_ && _loc1_))
                                                                                                                                 {
                                                                                                                                    §1?§ = "sge";
                                                                                                                                    while(_loc2_)
                                                                                                                                    {
                                                                                                                                       §#n§ = "slt";
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!_loc1_)
                                                                                                                                          {
                                                                                                                                             if(!_loc2_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §<!G§ = "sgn";
                                                                                                                                             continue loop35;
                                                                                                                                          }
                                                                                                                                          §§goto(addr482);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §&Y§ = "min";
                                                                                                                                          addr749:
                                                                                                                                          while(!_loc1_)
                                                                                                                                          {
                                                                                                                                             §2!W§ = "max";
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §[!!§ = "frc";
                                                                                                                                                addr739:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §2X§ = "sqt";
                                                                                                                                                   continue loop33;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr850);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop36;
                                                                                                                                    if(_loc1_ && _loc2_)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    addr341:
                                                                                                                                    if(!(_loc1_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       if(!_loc2_)
                                                                                                                                       {
                                                                                                                                          continue loop10;
                                                                                                                                       }
                                                                                                                                       if(_loc1_)
                                                                                                                                       {
                                                                                                                                          continue loop3;
                                                                                                                                       }
                                                                                                                                       §4@§ = "op";
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §>_§ = "v";
                                                                                                                                          break loop73;
                                                                                                                                       }
                                                                                                                                       addr327:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr803:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §<W§ = 16;
                                                                                                                                          break loop48;
                                                                                                                                          §§goto(addr341);
                                                                                                                                       }
                                                                                                                                       addr803:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 loop61:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc2_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr434);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       loop51:
                                                                                                                                       while(!(_loc1_ && _loc1_))
                                                                                                                                       {
                                                                                                                                          §'!Z§ = "ife";
                                                                                                                                          while(!_loc1_)
                                                                                                                                          {
                                                                                                                                             §;V§ = "ine";
                                                                                                                                             continue loop38;
                                                                                                                                          }
                                                                                                                                          loop43:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc2_ || _loc2_)
                                                                                                                                             {
                                                                                                                                                if(_loc1_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §6!I§ = "abs";
                                                                                                                                                continue loop34;
                                                                                                                                             }
                                                                                                                                             addr688:
                                                                                                                                             while(!_loc1_)
                                                                                                                                             {
                                                                                                                                                DP3 = "dp3";
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   DP4 = "dp4";
                                                                                                                                                   continue loop43;
                                                                                                                                                   addr463:
                                                                                                                                                   if(_loc1_ && § !R§)
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   addr470:
                                                                                                                                                   if(_loc2_ || _loc1_)
                                                                                                                                                   {
                                                                                                                                                      §1!=§ = "erp";
                                                                                                                                                      continue loop61;
                                                                                                                                                   }
                                                                                                                                                   addr783:
                                                                                                                                                   addr783:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §#!?§ = "add";
                                                                                                                                                      break loop55;
                                                                                                                                                      §§goto(addr470);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop43;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                § q§ = "crs";
                                                                                                                                                §§goto(addr681);
                                                                                                                                             }
                                                                                                                                             addr681:
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §[!I§ = "mul";
                                                                                                                                             loop27:
                                                                                                                                             while(_loc2_)
                                                                                                                                             {
                                                                                                                                                §=q§ = "div";
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §-!3§ = "rcp";
                                                                                                                                                   §§goto(addr756);
                                                                                                                                                   addr129:
                                                                                                                                                   while(_loc2_ || _loc1_)
                                                                                                                                                   {
                                                                                                                                                      §8[§ = "single";
                                                                                                                                                      loop87:
                                                                                                                                                      while(!(_loc1_ && _loc1_))
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc1_ && _loc1_))
                                                                                                                                                         {
                                                                                                                                                            §3!U§ = "depth";
                                                                                                                                                            loop88:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc1_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                     addr78:
                                                                                                                                                                  }
                                                                                                                                                                  §@!J§ = "repeat";
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        addr80:
                                                                                                                                                                        if(_loc2_ || _loc2_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop74;
                                                                                                                                                                        }
                                                                                                                                                                        addr141:
                                                                                                                                                                        addr205:
                                                                                                                                                                        while(!(_loc1_ && _loc2_))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop56;
                                                                                                                                                                           }
                                                                                                                                                                           continue loop57;
                                                                                                                                                                           §§goto(addr80);
                                                                                                                                                                        }
                                                                                                                                                                        while(!(_loc1_ && § !R§))
                                                                                                                                                                        {
                                                                                                                                                                           addr212:
                                                                                                                                                                           if(_loc2_ || § !R§)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc1_)
                                                                                                                                                                              {
                                                                                                                                                                                 §,L§ = "mipnone";
                                                                                                                                                                                 break loop87;
                                                                                                                                                                              }
                                                                                                                                                                              continue loop63;
                                                                                                                                                                           }
                                                                                                                                                                           addr357:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc1_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop35;
                                                                                                                                                                              }
                                                                                                                                                                              if(!_loc2_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              §[!0§ = "vt";
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc1_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr334);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr387);
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!(_loc1_ && _loc1_))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc1_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop1;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop47;
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr803);
                                                                                                                                                                              §§goto(addr212);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr560);
                                                                                                                                                                           §§goto(addr141);
                                                                                                                                                                        }
                                                                                                                                                                        addr141:
                                                                                                                                                                        continue loop62;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop88;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop74;
                                                                                                                                                               }
                                                                                                                                                               loop84:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc1_ && § !R§)
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §@+§ = "nearest";
                                                                                                                                                                        continue loop84;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr39:
                                                                                                                                                                     addr188:
                                                                                                                                                                  }
                                                                                                                                                                  continue loop73;
                                                                                                                                                                  return;
                                                                                                                                                               }
                                                                                                                                                               continue loop73;
                                                                                                                                                            }
                                                                                                                                                            continue loop27;
                                                                                                                                                         }
                                                                                                                                                         continue loop4;
                                                                                                                                                         if(!(_loc2_ || _loc2_))
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         if(!_loc1_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr39);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            while(_loc2_)
                                                                                                                                                            {
                                                                                                                                                               §;F§ = "cube";
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §!0§ = "mipnearest";
                                                                                                                                                                  continue loop62;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §try§ = "inz";
                                                                                                                                                               continue loop51;
                                                                                                                                                            }
                                                                                                                                                            addr243:
                                                                                                                                                            addr579:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(_loc2_ || _loc2_)
                                                                                                                                                      {
                                                                                                                                                         §`!1§ = "nomip";
                                                                                                                                                         §§goto(addr188);
                                                                                                                                                         §§goto(addr110);
                                                                                                                                                      }
                                                                                                                                                      addr110:
                                                                                                                                                      §§goto(addr238);
                                                                                                                                                      if(!(_loc2_ || _loc1_))
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      if(_loc2_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr57);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            loop76:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               D2 = "2d";
                                                                                                                                                               addr250:
                                                                                                                                                               addr271:
                                                                                                                                                               while(_loc2_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     addr254:
                                                                                                                                                                     if(_loc1_ && § !R§)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop38;
                                                                                                                                                                     }
                                                                                                                                                                     D3 = "3d";
                                                                                                                                                                     §§goto(addr243);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(!_loc1_)
                                                                                                                                                               {
                                                                                                                                                                  §>!!§ = "oc";
                                                                                                                                                                  continue loop76;
                                                                                                                                                               }
                                                                                                                                                               continue loop0;
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr327);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr250);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop6;
                                                                                                                                          }
                                                                                                                                          addr560:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc1_ && § !R§)
                                                                                                                                          {
                                                                                                                                             continue loop34;
                                                                                                                                          }
                                                                                                                                          §§goto(addr634);
                                                                                                                                          §§goto(addr567);
                                                                                                                                       }
                                                                                                                                       addr567:
                                                                                                                                       §§goto(addr823);
                                                                                                                                       addr627:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr403:
                                                                                                                                 continue loop48;
                                                                                                                              }
                                                                                                                              continue loop5;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §;b§ = 32;
                                                                                                                           break loop57;
                                                                                                                           §§goto(addr596);
                                                                                                                        }
                                                                                                                        addr596:
                                                                                                                     }
                                                                                                                     §§goto(addr845);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr823);
                                                                                                            }
                                                                                                            §§goto(addr739);
                                                                                                         }
                                                                                                         continue loop8;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §'!#§ = 4;
                                                                                             §§goto(addr808);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 break;
                                                                              }
                                                                              §§goto(addr744);
                                                                           }
                                                                           §§goto(addr584);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §!9§ = 128;
                                                                           §§goto(addr788);
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §4B§ = "sub";
                                                                     §§goto(addr773);
                                                                     §§goto(addr510);
                                                                  }
                                                                  addr510:
                                                               }
                                                               §§goto(addr456);
                                                            }
                                                            §§goto(addr396);
                                                         }
                                                         continue loop9;
                                                      }
                                                      §§goto(addr749);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    if(!(_loc1_ && _loc2_))
                                    {
                                       §#K§ = "ifg";
                                       continue loop5;
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
         §§goto(addr39);
      }
      
      private var §3$§:ByteArray = null;
      
      private var §"!N§:String = "";
      
      private var §,!A§:Boolean = false;
      
      public function § !R§(param1:Boolean = false)
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
            this.§,!A§ = param1;
            while(!initialized)
            {
               if(_loc2_ || param1)
               {
                  init();
               }
               if(!_loc3_)
               {
                  continue loop0;
               }
            }
            addr19:
            return;
         }
      }
      
      private static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            initialized = true;
            while(true)
            {
               §3k§[§-p§] = new OpCode(§-p§,2,0,0);
               while(true)
               {
                  §3k§[§#!?§] = new OpCode(§#!?§,3,1,0);
                  while(true)
                  {
                     §3k§[§4B§] = new OpCode(§4B§,3,2,0);
                     addr1134:
                     while(true)
                     {
                        §3k§[§[!I§] = new OpCode(§[!I§,3,3,0);
                     }
                     loop9:
                     while(!(_loc1_ && _loc1_))
                     {
                        §3k§[§2X§] = new OpCode(§2X§,2,9,0);
                        while(true)
                        {
                           §3k§[§"!I§] = new OpCode(§"!I§,2,10,0);
                           while(true)
                           {
                              §3k§[§^t§] = new OpCode(§^t§,3,11,0);
                              while(true)
                              {
                                 §3k§[§7!0§] = new OpCode(§7!0§,2,12,0);
                                 while(true)
                                 {
                                    §3k§[§,8§] = new OpCode(§,8§,2,13,0);
                                    while(true)
                                    {
                                       §3k§[§@i§] = new OpCode(§@i§,2,14,0);
                                       while(true)
                                       {
                                          §3k§[§@!9§] = new OpCode(§@!9§,2,15,0);
                                          loop16:
                                          while(true)
                                          {
                                             §3k§[§ a§] = new OpCode(§ a§,2,16,0);
                                             while(true)
                                             {
                                                §3k§[§ q§] = new OpCode(§ q§,3,17,0);
                                                while(true)
                                                {
                                                   §3k§[DP3] = new OpCode(DP3,3,18,0);
                                                   while(true)
                                                   {
                                                      §3k§[DP4] = new OpCode(DP4,3,19,0);
                                                      while(true)
                                                      {
                                                         §3k§[§6!I§] = new OpCode(§6!I§,2,20,0);
                                                         while(true)
                                                         {
                                                            §3k§[§]7§] = new OpCode(§]7§,2,21,0);
                                                            loop22:
                                                            while(true)
                                                            {
                                                               §3k§[§7!5§] = new OpCode(§7!5§,2,22,0);
                                                               while(true)
                                                               {
                                                                  §3k§[M33] = new OpCode(M33,3,23,§<W§);
                                                                  loop24:
                                                                  while(true)
                                                                  {
                                                                     §3k§[M44] = new OpCode(M44,3,24,§<W§);
                                                                     addr878:
                                                                     loop25:
                                                                     while(_loc2_ || § !R§)
                                                                     {
                                                                        §3k§[M34] = new OpCode(M34,3,25,§<W§);
                                                                        while(true)
                                                                        {
                                                                           if(!_loc1_)
                                                                           {
                                                                              addr860:
                                                                              if(!(_loc2_ || _loc1_))
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §3k§[§>!B§] = new OpCode(§>!B§,1,26,§!9§ | §[!3§ | §6!>§);
                                                                              continue loop16;
                                                                           }
                                                                           continue loop22;
                                                                           addr440:
                                                                           while(!(_loc1_ && _loc2_))
                                                                           {
                                                                              §]P§[§4N§] = new Register(§4N§,"texture sampler",5,7,§'n§ | §"!,§);
                                                                              continue loop24;
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §3k§[§=q§] = new OpCode(§=q§,3,4,0);
                                                                           break loop25;
                                                                           §§goto(addr860);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §3k§[§-!3§] = new OpCode(§-!3§,2,5,0);
                                                                        addr1101:
                                                                        while(true)
                                                                        {
                                                                           §3k§[§&Y§] = new OpCode(§&Y§,3,6,0);
                                                                           addr1090:
                                                                           while(true)
                                                                           {
                                                                              §3k§[§2!W§] = new OpCode(§2!W§,3,7,0);
                                                                              addr1079:
                                                                              while(true)
                                                                              {
                                                                                 §3k§[§[!!§] = new OpCode(§[!!§,2,8,0);
                                                                                 continue loop9;
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr878);
                                                                     }
                                                                  }
                                                                  while(_loc2_ || _loc1_)
                                                                  {
                                                                     §3k§[§1?§] = new OpCode(§1?§,3,41,0);
                                                                     §§goto(addr602);
                                                                     §§goto(addr584);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                                if(_loc1_ && _loc2_)
                                                {
                                                   continue;
                                                }
                                                §"?§[§8[§] = new Sampler(§8[§,§ Q§,1 << 1);
                                                §§goto(addr122);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              if(_loc1_ && § !R§)
                              {
                                 continue;
                              }
                              §"?§[D3] = new Sampler(D3,§=!"§,2);
                              §§goto(addr336);
                           }
                        }
                     }
                  }
                  if(!(_loc2_ || _loc1_))
                  {
                     continue;
                  }
                  §"?§[§`!1§] = new Sampler(§`!1§,§3!7§,0);
                  §§goto(addr222);
               }
               if(!(_loc2_ || _loc1_))
               {
                  continue;
               }
               §"?§[§@+§] = new Sampler(§@+§,§5!6§,0);
               §§goto(addr206);
            }
         }
         §§goto(addr1123);
      }
      
      public function get error() : String
      {
         return this.§"!N§;
      }
      
      public function get §,w§() : ByteArray
      {
         return this.§3$§;
      }
      
      public function §>G§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
