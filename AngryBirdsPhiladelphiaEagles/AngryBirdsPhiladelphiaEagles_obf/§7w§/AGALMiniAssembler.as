package §7w§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class AGALMiniAssembler
   {
      
      private static var initialized:Boolean = false;
      
      private static const §!,§:Dictionary;
      
      private static const §;+§:Dictionary;
      
      private static const §@!Q§:Dictionary;
      
      private static const §9c§:int = 4;
      
      private static const §7d§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §-!8§:uint = 12;
      
      private static const §41§:uint = 16;
      
      private static const §17§:uint = 20;
      
      private static const §^p§:uint = 24;
      
      private static const §+!A§:uint = 28;
      
      private static const §3Q§:uint = 1;
      
      private static const §,D§:uint = 2;
      
      private static const § p§:uint = 32;
      
      private static const §&7§:uint = 64;
      
      private static const §,! §:uint = 1;
      
      private static const §+!8§:uint = 2;
      
      private static const §@q§:uint = 4;
      
      private static const §+w§:uint = 8;
      
      private static const § E§:uint = 16;
      
      private static const §+U§:uint = 32;
      
      private static const §?;§:uint = 128;
      
      private static const §@!B§:String = "mov";
      
      private static const § w§:String = "add";
      
      private static const §%d§:String = "sub";
      
      private static const §>?§:String = "mul";
      
      private static const § !E§:String = "div";
      
      private static const §'!8§:String = "rcp";
      
      private static const §=!G§:String = "min";
      
      private static const §"B§:String = "max";
      
      private static const §!t§:String = "frc";
      
      private static const §7t§:String = "sqt";
      
      private static const §@!"§:String = "rsq";
      
      private static const §?!H§:String = "pow";
      
      private static const §`3§:String = "log";
      
      private static const §[g§:String = "exp";
      
      private static const §"!@§:String = "nrm";
      
      private static const §!§:String = "sin";
      
      private static const §]!'§:String = "cos";
      
      private static const §%e§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §!!6§:String = "abs";
      
      private static const §86§:String = "neg";
      
      private static const §[P§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §[?§:String = "ifz";
      
      private static const §"C§:String = "inz";
      
      private static const §#t§:String = "ife";
      
      private static const §`N§:String = "ine";
      
      private static const §>S§:String = "ifg";
      
      private static const §0o§:String = "ifl";
      
      private static const §`g§:String = "ieg";
      
      private static const §0§:String = "iel";
      
      private static const §]x§:String = "els";
      
      private static const §9!8§:String = "eif";
      
      private static const §?@§:String = "rep";
      
      private static const §8h§:String = "erp";
      
      private static const §3Z§:String = "brk";
      
      private static const §?!Q§:String = "kil";
      
      private static const §>j§:String = "tex";
      
      private static const §#[§:String = "sge";
      
      private static const §^q§:String = "slt";
      
      private static const §;s§:String = "sgn";
      
      private static const §&6§:String = "va";
      
      private static const §try§:String = "vc";
      
      private static const §]E§:String = "vt";
      
      private static const §^8§:String = "op";
      
      private static const §-H§:String = "v";
      
      private static const §3S§:String = "fc";
      
      private static const §>E§:String = "ft";
      
      private static const §3J§:String = "fs";
      
      private static const §-!J§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §3u§:String = "cube";
      
      private static const §+>§:String = "mipnearest";
      
      private static const §=!K§:String = "miplinear";
      
      private static const §"!K§:String = "mipnone";
      
      private static const §-L§:String = "nomip";
      
      private static const §5,§:String = "nearest";
      
      private static const §<4§:String = "linear";
      
      private static const §58§:String = "centroid";
      
      private static const §0W§:String = "single";
      
      private static const §'0§:String = "depth";
      
      private static const §1!G§:String = "repeat";
      
      private static const §3!$§:String = "wrap";
      
      private static const §"6§:String = "clamp";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            initialized = false;
            loop0:
            while(true)
            {
               §!,§ = new Dictionary();
               loop1:
               while(true)
               {
                  §;+§ = new Dictionary();
                  loop2:
                  while(true)
                  {
                     §@!Q§ = new Dictionary();
                     §9c§ = 4;
                     §7d§ = 256;
                     FRAGMENT = "fragment";
                     loop3:
                     while(true)
                     {
                        VERTEX = "vertex";
                        loop4:
                        while(true)
                        {
                           §-!8§ = 12;
                           §41§ = 16;
                           loop5:
                           while(true)
                           {
                              §17§ = 20;
                              loop6:
                              while(true)
                              {
                                 §^p§ = 24;
                                 §+!A§ = 28;
                                 §3Q§ = 1;
                                 loop7:
                                 while(true)
                                 {
                                    §,D§ = 2;
                                    while(true)
                                    {
                                       § p§ = 32;
                                       addr656:
                                       loop9:
                                       while(true)
                                       {
                                          §&7§ = 64;
                                          while(true)
                                          {
                                             §,! § = 1;
                                             §+!8§ = 2;
                                             addr641:
                                             while(true)
                                             {
                                                §@q§ = 4;
                                                §+w§ = 8;
                                                § E§ = 16;
                                                addr626:
                                                while(true)
                                                {
                                                   §+U§ = 32;
                                                   §?;§ = 128;
                                                   addr616:
                                                   while(true)
                                                   {
                                                      §@!B§ = "mov";
                                                      § w§ = "add";
                                                      continue loop3;
                                                   }
                                                }
                                             }
                                             addr236:
                                             if(!(_loc1_ || AGALMiniAssembler))
                                             {
                                                continue;
                                             }
                                             D2 = "2d";
                                             while(!(_loc2_ && _loc2_))
                                             {
                                                D3 = "3d";
                                                loop44:
                                                while(true)
                                                {
                                                   if(!_loc1_)
                                                   {
                                                      while(true)
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            if(!_loc1_)
                                                            {
                                                               break;
                                                            }
                                                            §]x§ = "els";
                                                            loop33:
                                                            while(true)
                                                            {
                                                               §9!8§ = "eif";
                                                               continue loop6;
                                                               addr128:
                                                               if(_loc2_ && _loc1_)
                                                               {
                                                                  continue;
                                                               }
                                                               §<4§ = "linear";
                                                               loop48:
                                                               while(true)
                                                               {
                                                                  §58§ = "centroid";
                                                                  loop49:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        if(_loc1_)
                                                                        {
                                                                           if(_loc1_)
                                                                           {
                                                                              §0W§ = "single";
                                                                              loop50:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc1_ || _loc2_)
                                                                                 {
                                                                                    addr93:
                                                                                    if(_loc2_ && _loc2_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §'0§ = "depth";
                                                                                    loop51:
                                                                                    while(true)
                                                                                    {
                                                                                       §1!G§ = "repeat";
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc1_)
                                                                                          {
                                                                                             if(!_loc1_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                          continue loop51;
                                                                                       }
                                                                                       continue loop48;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc1_)
                                                                                       {
                                                                                          addr142:
                                                                                          if(!(_loc2_ && AGALMiniAssembler))
                                                                                          {
                                                                                             if(_loc2_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             §5,§ = "nearest";
                                                                                             loop47:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc1_ || _loc1_))
                                                                                                {
                                                                                                   loop42:
                                                                                                   for(; !(_loc2_ && _loc2_); continue loop47)
                                                                                                   {
                                                                                                      if(!_loc1_)
                                                                                                      {
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      §-!J§ = "oc";
                                                                                                      addr257:
                                                                                                      if(!(_loc2_ && _loc2_))
                                                                                                      {
                                                                                                         if(_loc1_)
                                                                                                         {
                                                                                                            §§goto(addr236);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr641);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         loop41:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §-H§ = "v";
                                                                                                            if(_loc1_)
                                                                                                            {
                                                                                                               addr290:
                                                                                                               if(!(_loc2_ && AGALMiniAssembler))
                                                                                                               {
                                                                                                                  §3S§ = "fc";
                                                                                                                  if(_loc1_)
                                                                                                                  {
                                                                                                                     §>E§ = "ft";
                                                                                                                     addr283:
                                                                                                                     if(!(_loc2_ && AGALMiniAssembler))
                                                                                                                     {
                                                                                                                        addr269:
                                                                                                                        if(_loc1_ || AGALMiniAssembler)
                                                                                                                        {
                                                                                                                           §3J§ = "fs";
                                                                                                                           continue loop42;
                                                                                                                        }
                                                                                                                        addr321:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §try§ = "vc";
                                                                                                                           addr314:
                                                                                                                           addr515:
                                                                                                                           while(!_loc2_)
                                                                                                                           {
                                                                                                                              §]E§ = "vt";
                                                                                                                              while(_loc1_)
                                                                                                                              {
                                                                                                                                 §^8§ = "op";
                                                                                                                                 continue loop41;
                                                                                                                                 §§goto(addr283);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §?!H§ = "pow";
                                                                                                                                 §`3§ = "log";
                                                                                                                                 break loop41;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              DP3 = "dp3";
                                                                                                                              addr510:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 DP4 = "dp4";
                                                                                                                                 §!!6§ = "abs";
                                                                                                                                 break loop44;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr269);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr307);
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §"!@§ = "nrm";
                                                                                                                     §!§ = "sin";
                                                                                                                     addr527:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §]!'§ = "cos";
                                                                                                                        break loop50;
                                                                                                                     }
                                                                                                                     §§goto(addr297);
                                                                                                                  }
                                                                                                                  addr297:
                                                                                                                  addr537:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §=!G§ = "min";
                                                                                                                     §"B§ = "max";
                                                                                                                     continue loop1;
                                                                                                                     §§goto(addr290);
                                                                                                                  }
                                                                                                                  addr579:
                                                                                                               }
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §[g§ = "exp";
                                                                                                            §§goto(addr537);
                                                                                                            §§goto(addr302);
                                                                                                         }
                                                                                                         addr302:
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop4;
                                                                                                   addr248:
                                                                                                }
                                                                                                §§goto(addr128);
                                                                                                addr60:
                                                                                                if(_loc1_ || _loc2_)
                                                                                                {
                                                                                                   continue loop7;
                                                                                                }
                                                                                             }
                                                                                             continue loop33;
                                                                                          }
                                                                                          addr358:
                                                                                          while(true)
                                                                                          {
                                                                                             §#[§ = "sge";
                                                                                             §^q§ = "slt";
                                                                                             break loop49;
                                                                                             §§goto(addr142);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr314);
                                                                                       continue loop50;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       M33 = "m33";
                                                                                       continue loop9;
                                                                                    }
                                                                                    addr140:
                                                                                    addr488:
                                                                                 }
                                                                              }
                                                                              while(!_loc2_)
                                                                              {
                                                                                 §%e§ = "crs";
                                                                                 §§goto(addr515);
                                                                                 §§goto(addr93);
                                                                              }
                                                                              §§goto(addr616);
                                                                           }
                                                                           break;
                                                                        }
                                                                        continue loop44;
                                                                     }
                                                                     addr156:
                                                                     while(true)
                                                                     {
                                                                        §-L§ = "nomip";
                                                                     }
                                                                     §§goto(addr140);
                                                                     if(!(_loc1_ || AGALMiniAssembler))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§goto(addr60);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §;s§ = "sgn";
                                                                     if(_loc1_ || AGALMiniAssembler)
                                                                     {
                                                                        §&6§ = "va";
                                                                        §§goto(addr321);
                                                                     }
                                                                     break;
                                                                  }
                                                                  §§goto(addr510);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop3;
                                                      addr413:
                                                   }
                                                   §3u§ = "cube";
                                                   addr210:
                                                   if(_loc1_ || AGALMiniAssembler)
                                                   {
                                                      addr189:
                                                      if(!(_loc1_ || _loc2_))
                                                      {
                                                         break;
                                                      }
                                                      continue loop2;
                                                   }
                                                   addr439:
                                                   while(true)
                                                   {
                                                      §0o§ = "ifl";
                                                      §§goto(addr210);
                                                   }
                                                   while(true)
                                                   {
                                                      §`g§ = "ieg";
                                                      continue loop4;
                                                   }
                                                }
                                                while(_loc1_)
                                                {
                                                   §86§ = "neg";
                                                   §[P§ = "sat";
                                                   §§goto(addr488);
                                                   §§goto(addr189);
                                                }
                                                §§goto(addr527);
                                                §+>§ = "mipnearest";
                                                if(_loc1_)
                                                {
                                                   addr170:
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      continue loop5;
                                                   }
                                                   continue loop6;
                                                }
                                             }
                                             while(true)
                                             {
                                                §`N§ = "ine";
                                                §>S§ = "ifg";
                                                §§goto(addr439);
                                                §§goto(addr215);
                                             }
                                             addr215:
                                          }
                                       }
                                       addr372:
                                       if(_loc2_ && AGALMiniAssembler)
                                       {
                                          continue;
                                       }
                                       §?!Q§ = "kil";
                                       if(_loc2_)
                                       {
                                          continue loop1;
                                       }
                                       §>j§ = "tex";
                                       §§goto(addr358);
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
         while(true)
         {
            M44 = "m44";
            M34 = "m34";
            if(!(_loc2_ && AGALMiniAssembler))
            {
               §§goto(addr473);
            }
            §§goto(addr656);
         }
      }
      
      private var §^!L§:ByteArray = null;
      
      private var §3!0§:String = "";
      
      private var §1§:Boolean = false;
      
      public function AGALMiniAssembler(param1:Boolean = false)
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            super();
            loop0:
            while(true)
            {
               this.§1§ = param1;
               while(!initialized)
               {
                  if(!_loc3_)
                  {
                     if(!_loc2_)
                     {
                        continue;
                     }
                     if(_loc3_)
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
         §§goto(addr47);
      }
      
      private static function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         initialized = true;
         loop0:
         while(true)
         {
            §!,§[§@!B§] = new OpCode(§@!B§,2,0,0);
            §!,§[§ w§] = new OpCode(§ w§,3,1,0);
            loop1:
            while(true)
            {
               §!,§[§%d§] = new OpCode(§%d§,3,2,0);
               §!,§[§>?§] = new OpCode(§>?§,3,3,0);
               while(true)
               {
                  §!,§[§ !E§] = new OpCode(§ !E§,3,4,0);
                  addr958:
                  while(!(_loc1_ && _loc1_))
                  {
                     §!,§[§'!8§] = new OpCode(§'!8§,2,5,0);
                     §!,§[§=!G§] = new OpCode(§=!G§,3,6,0);
                     do
                     {
                        §!,§[§"B§] = new OpCode(§"B§,3,7,0);
                     }
                     while(!(_loc2_ || _loc1_));
                     
                     §!,§[§!t§] = new OpCode(§!t§,2,8,0);
                     §!,§[§7t§] = new OpCode(§7t§,2,9,0);
                     §!,§[§@!"§] = new OpCode(§@!"§,2,10,0);
                     continue loop0;
                  }
               }
               addr403:
               if(!(_loc2_ || AGALMiniAssembler))
               {
                  continue;
               }
               §;+§[§]E§] = new Register(§]E§,"vertex temporary",2,7,§&7§ | §3Q§ | §,D§);
               §;+§[§^8§] = new Register(§^8§,"vertex output",3,0,§&7§ | §3Q§);
               §;+§[§-H§] = new Register(§-H§,"varying",4,7,§&7§ | § p§ | §,D§ | §3Q§);
               addr410:
               if(!(_loc1_ && _loc2_))
               {
                  §;+§[§3S§] = new Register(§3S§,"fragment constant",1,27,§ p§ | §,D§);
                  loop29:
                  for(; !_loc1_; while(true)
                  {
                     §@!Q§[§<4§] = new Sampler(§<4§,§+!A§,1);
                     do
                     {
                        §@!Q§[§58§] = new Sampler(§58§,§41§,1 << 0);
                     }
                     while(!_loc2_);
                     
                     if(!(_loc1_ && AGALMiniAssembler))
                     {
                        if(!_loc1_)
                        {
                           §§goto(addr137);
                        }
                        break;
                     }
                     continue loop29;
                  },while(true)
                  {
                     if(!_loc1_)
                     {
                        if(!_loc1_)
                        {
                           §§goto(addr532);
                        }
                        §§goto(addr758);
                     }
                     §§goto(addr725);
                  },§§goto(addr815))
                  {
                     §;+§[§>E§] = new Register(§>E§,"fragment temporary",2,7,§ p§ | §3Q§ | §,D§);
                     §;+§[§3J§] = new Register(§3J§,"texture sampler",5,7,§ p§ | §,D§);
                     loop30:
                     while(true)
                     {
                        if(!(_loc1_ && _loc1_))
                        {
                           addr293:
                           if(_loc2_ || AGALMiniAssembler)
                           {
                              §;+§[§-!J§] = new Register(§-!J§,"fragment output",3,0,§ p§ | §3Q§);
                              addr300:
                              if(!(_loc1_ && _loc2_))
                              {
                                 §@!Q§[D2] = new Sampler(D2,§-!8§,0);
                                 addr272:
                                 if(!_loc1_)
                                 {
                                    §@!Q§[D3] = new Sampler(D3,§-!8§,2);
                                    loop31:
                                    while(!_loc1_)
                                    {
                                       §@!Q§[§3u§] = new Sampler(§3u§,§-!8§,1);
                                       continue loop30;
                                       addr107:
                                       if(_loc2_ || _loc1_)
                                       {
                                          §@!Q§[§'0§] = new Sampler(§'0§,§41§,1 << 2);
                                          loop36:
                                          while(_loc2_)
                                          {
                                             §@!Q§[§1!G§] = new Sampler(§1!G§,§17§,1);
                                             if(_loc1_ && _loc1_)
                                             {
                                                continue;
                                             }
                                             addr67:
                                             if(_loc2_ || _loc1_)
                                             {
                                                §@!Q§[§3!$§] = new Sampler(§3!$§,§17§,1);
                                                addr43:
                                                if(_loc2_ || AGALMiniAssembler)
                                                {
                                                   §@!Q§[§"6§] = new Sampler(§"6§,§17§,0);
                                                   if(!_loc2_)
                                                   {
                                                      §§goto(addr43);
                                                   }
                                                   return;
                                                }
                                                while(true)
                                                {
                                                   if(_loc2_)
                                                   {
                                                      §!,§[§[?§] = new OpCode(§[?§,1,26,§?;§ | §+!8§ | §,! §);
                                                      break loop30;
                                                   }
                                                   break;
                                                   §§goto(addr43);
                                                }
                                                while(true)
                                                {
                                                   §!,§[M33] = new OpCode(M33,3,23,§ E§);
                                                   addr736:
                                                   while(true)
                                                   {
                                                      §!,§[M44] = new OpCode(M44,3,24,§ E§);
                                                      addr725:
                                                      while(true)
                                                      {
                                                         §!,§[M34] = new OpCode(M34,3,25,§ E§);
                                                         §§goto(addr712);
                                                      }
                                                      break loop31;
                                                   }
                                                }
                                                addr712:
                                                addr747:
                                             }
                                             while(true)
                                             {
                                                §!,§[§"!@§] = new OpCode(§"!@§,2,14,0);
                                                while(true)
                                                {
                                                   §!,§[§!§] = new OpCode(§!§,2,15,0);
                                                   loop9:
                                                   while(true)
                                                   {
                                                      §!,§[§]!'§] = new OpCode(§]!'§,2,16,0);
                                                      addr815:
                                                      while(_loc2_)
                                                      {
                                                         §!,§[§%e§] = new OpCode(§%e§,3,17,0);
                                                         while(true)
                                                         {
                                                            §!,§[DP3] = new OpCode(DP3,3,18,0);
                                                            addr793:
                                                            while(true)
                                                            {
                                                               §!,§[DP4] = new OpCode(DP4,3,19,0);
                                                               if(!_loc2_)
                                                               {
                                                                  break;
                                                               }
                                                               §!,§[§!!6§] = new OpCode(§!!6§,2,20,0);
                                                               §!,§[§86§] = new OpCode(§86§,2,21,0);
                                                               while(true)
                                                               {
                                                                  §!,§[§[P§] = new OpCode(§[P§,2,22,0);
                                                                  §§goto(addr747);
                                                               }
                                                            }
                                                         }
                                                         §!,§[§3Z§] = new OpCode(§3Z§,0,38,§?;§);
                                                         if(_loc2_)
                                                         {
                                                            §!,§[§?!Q§] = new OpCode(§?!Q§,1,39,§?;§ | §+U§);
                                                            §!,§[§>j§] = new OpCode(§>j§,3,40,§+U§ | §+w§);
                                                            while(true)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  continue loop9;
                                                               }
                                                               addr579:
                                                               addr218:
                                                               while(true)
                                                               {
                                                                  §!,§[§9!8§] = new OpCode(§9!8§,0,35,§?;§ | §@q§);
                                                                  break loop29;
                                                               }
                                                               if(_loc1_ && _loc2_)
                                                               {
                                                                  continue;
                                                               }
                                                               if(!_loc1_)
                                                               {
                                                                  §@!Q§[§+>§] = new Sampler(§+>§,§^p§,1);
                                                                  addr227:
                                                                  if(!_loc1_)
                                                                  {
                                                                     §@!Q§[§=!K§] = new Sampler(§=!K§,§^p§,2);
                                                                     §@!Q§[§"!K§] = new Sampler(§"!K§,§^p§,0);
                                                                     §@!Q§[§-L§] = new Sampler(§-L§,§^p§,0);
                                                                     while(true)
                                                                     {
                                                                        if(!_loc1_)
                                                                        {
                                                                           §@!Q§[§5,§] = new Sampler(§5,§,§+!A§,0);
                                                                           break loop36;
                                                                        }
                                                                        break;
                                                                        addr137:
                                                                        §@!Q§[§0W§] = new Sampler(§0W§,§41§,1 << 1);
                                                                        if(_loc1_ && AGALMiniAssembler)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §§goto(addr107);
                                                                     }
                                                                     continue loop30;
                                                                  }
                                                                  addr446:
                                                                  while(true)
                                                                  {
                                                                     §!,§[§;s§] = new OpCode(§;s§,2,43,0);
                                                                     §;+§[§&6§] = new Register(§&6§,"vertex attribute",0,7,§&7§ | §,D§);
                                                                     break loop31;
                                                                     §§goto(addr227);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr793);
                                                               }
                                                            }
                                                            continue loop9;
                                                         }
                                                      }
                                                      continue loop0;
                                                   }
                                                   addr671:
                                                   while(true)
                                                   {
                                                      §!,§[§`N§] = new OpCode(§`N§,2,29,§?;§ | §+!8§ | §,! §);
                                                      if(_loc1_)
                                                      {
                                                         break;
                                                      }
                                                      §!,§[§>S§] = new OpCode(§>S§,2,30,§?;§ | §+!8§ | §,! §);
                                                      §!,§[§0o§] = new OpCode(§0o§,2,31,§?;§ | §+!8§ | §,! §);
                                                      while(true)
                                                      {
                                                         §!,§[§`g§] = new OpCode(§`g§,2,32,§?;§ | §+!8§ | §,! §);
                                                         addr609:
                                                         while(true)
                                                         {
                                                            §!,§[§0§] = new OpCode(§0§,2,33,§?;§ | §+!8§ | §,! §);
                                                            §!,§[§]x§] = new OpCode(§]x§,0,34,§?;§ | §+!8§ | §@q§);
                                                            §§goto(addr579);
                                                            §§goto(addr300);
                                                         }
                                                         continue loop30;
                                                      }
                                                      §§goto(addr410);
                                                   }
                                                }
                                                §§goto(addr67);
                                             }
                                          }
                                          continue loop29;
                                       }
                                    }
                                    while(true)
                                    {
                                       §;+§[§try§] = new Register(§try§,"vertex constant",1,127,§&7§ | §,D§);
                                       if(_loc2_)
                                       {
                                          §§goto(addr403);
                                       }
                                       §§goto(addr736);
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr457);
                              }
                              §§goto(addr609);
                           }
                           break;
                        }
                        §§goto(addr624);
                     }
                     while(true)
                     {
                        §!,§[§"C§] = new OpCode(§"C§,1,27,§?;§ | §+!8§ | §,! §);
                        §!,§[§#t§] = new OpCode(§#t§,2,28,§?;§ | §+!8§ | §,! §);
                        §§goto(addr671);
                        §§goto(addr293);
                     }
                  }
                  loop23:
                  while(true)
                  {
                     §!,§[§?@§] = new OpCode(§?@§,1,36,§?;§ | §+!8§ | §,! §);
                     if(_loc2_)
                     {
                        if(!_loc2_)
                        {
                           break;
                        }
                        §!,§[§8h§] = new OpCode(§8h§,0,37,§?;§ | §@q§);
                        §§goto(addr528);
                     }
                     else
                     {
                        while(true)
                        {
                           §!,§[§[g§] = new OpCode(§[g§,2,13,0);
                           continue loop23;
                        }
                        addr861:
                     }
                     §§goto(addr850);
                  }
                  §§goto(addr958);
               }
               §§goto(addr671);
            }
         }
      }
      
      public function get error() : String
      {
         return this.§3!0§;
      }
      
      public function get §+!5§() : ByteArray
      {
         return this.§^!L§;
      }
      
      public function §'!C§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
