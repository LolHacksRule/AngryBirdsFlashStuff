package §^!w§
{
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   import flash.utils.Endian;
   import flash.utils.getTimer;
   
   public class §2s§
   {
      
      private static var initialized:Boolean = false;
      
      private static const §=P§:Dictionary;
      
      private static const §<H§:Dictionary;
      
      private static const §3!v§:Dictionary;
      
      private static const §[4§:int = 4;
      
      private static const §`R§:int = 256;
      
      private static const FRAGMENT:String = "fragment";
      
      private static const VERTEX:String = "vertex";
      
      private static const §[e§:uint = 12;
      
      private static const §1!H§:uint = 16;
      
      private static const §'!M§:uint = 20;
      
      private static const §#1§:uint = 24;
      
      private static const §,'§:uint = 28;
      
      private static const §?!j§:uint = 1;
      
      private static const §="0§:uint = 2;
      
      private static const §+!e§:uint = 32;
      
      private static const §="+§:uint = 64;
      
      private static const §!b§:uint = 1;
      
      private static const §2!P§:uint = 2;
      
      private static const §#" §:uint = 4;
      
      private static const §#q§:uint = 8;
      
      private static const §[r§:uint = 16;
      
      private static const §2!+§:uint = 32;
      
      private static const §3!z§:uint = 128;
      
      private static const §0!L§:String = "mov";
      
      private static const §!!O§:String = "add";
      
      private static const §0!9§:String = "sub";
      
      private static const §#!r§:String = "mul";
      
      private static const DIV:String = "div";
      
      private static const §%!K§:String = "rcp";
      
      private static const §`i§:String = "min";
      
      private static const § !?§:String = "max";
      
      private static const §[!0§:String = "frc";
      
      private static const §3"4§:String = "sqt";
      
      private static const §!5§:String = "rsq";
      
      private static const §,!8§:String = "pow";
      
      private static const §1!K§:String = "log";
      
      private static const §?r§:String = "exp";
      
      private static const §]-§:String = "nrm";
      
      private static const §7!A§:String = "sin";
      
      private static const §?P§:String = "cos";
      
      private static const §8!9§:String = "crs";
      
      private static const DP3:String = "dp3";
      
      private static const DP4:String = "dp4";
      
      private static const §default§:String = "abs";
      
      private static const §<"$§:String = "neg";
      
      private static const §6!,§:String = "sat";
      
      private static const M33:String = "m33";
      
      private static const M44:String = "m44";
      
      private static const M34:String = "m34";
      
      private static const §6a§:String = "ifz";
      
      private static const §2V§:String = "inz";
      
      private static const §`B§:String = "ife";
      
      private static const §!D§:String = "ine";
      
      private static const §@"1§:String = "ifg";
      
      private static const §;"3§:String = "ifl";
      
      private static const §>p§:String = "ieg";
      
      private static const §6p§:String = "iel";
      
      private static const §%!I§:String = "els";
      
      private static const §2!j§:String = "eif";
      
      private static const §'!4§:String = "rep";
      
      private static const §@!y§:String = "erp";
      
      private static const §`!K§:String = "brk";
      
      private static const §1M§:String = "kil";
      
      private static const §=!R§:String = "tex";
      
      private static const §9!B§:String = "sge";
      
      private static const §;!;§:String = "slt";
      
      private static const §70§:String = "sgn";
      
      private static const §2!C§:String = "va";
      
      private static const §^§:String = "vc";
      
      private static const §4!P§:String = "vt";
      
      private static const §=!>§:String = "op";
      
      private static const V:String = "v";
      
      private static const §%[§:String = "fc";
      
      private static const §;!v§:String = "ft";
      
      private static const §8!F§:String = "fs";
      
      private static const §]Q§:String = "oc";
      
      private static const D2:String = "2d";
      
      private static const D3:String = "3d";
      
      private static const §2!#§:String = "cube";
      
      private static const §"!T§:String = "mipnearest";
      
      private static const §]!d§:String = "miplinear";
      
      private static const §0h§:String = "mipnone";
      
      private static const §#A§:String = "nomip";
      
      private static const §%u§:String = "nearest";
      
      private static const §@!c§:String = "linear";
      
      private static const §;!0§:String = "centroid";
      
      private static const §-j§:String = "single";
      
      private static const §]§:String = "depth";
      
      private static const §+!O§:String = "repeat";
      
      private static const §1%§:String = "wrap";
      
      private static const §+-§:String = "clamp";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            initialized = false;
            loop0:
            while(true)
            {
               §=P§ = new Dictionary();
               loop1:
               while(true)
               {
                  §<H§ = new Dictionary();
                  loop2:
                  while(true)
                  {
                     §3!v§ = new Dictionary();
                     while(true)
                     {
                        §[4§ = 4;
                        loop4:
                        while(true)
                        {
                           §`R§ = 256;
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
                                    §[e§ = 12;
                                    while(true)
                                    {
                                       §1!H§ = 16;
                                       loop9:
                                       while(true)
                                       {
                                          §'!M§ = 20;
                                          while(true)
                                          {
                                             §#1§ = 24;
                                             while(true)
                                             {
                                                §,'§ = 28;
                                                loop12:
                                                while(true)
                                                {
                                                   §?!j§ = 1;
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §="0§ = 2;
                                                      loop14:
                                                      for(; _loc2_; while(!(_loc1_ && _loc2_))
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            continue loop6;
                                                         }
                                                         §1!K§ = "log";
                                                         §§goto(addr716);
                                                      })
                                                      {
                                                         §+!e§ = 32;
                                                         while(true)
                                                         {
                                                            §="+§ = 64;
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §!b§ = 1;
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  §2!P§ = 2;
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     §#" § = 4;
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §#q§ = 8;
                                                                        loop20:
                                                                        while(!_loc1_)
                                                                        {
                                                                           §[r§ = 16;
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              §2!+§ = 32;
                                                                              loop22:
                                                                              while(true)
                                                                              {
                                                                                 §3!z§ = 128;
                                                                                 loop23:
                                                                                 while(true)
                                                                                 {
                                                                                    §0!L§ = "mov";
                                                                                    loop24:
                                                                                    while(true)
                                                                                    {
                                                                                       §!!O§ = "add";
                                                                                       while(true)
                                                                                       {
                                                                                          §0!9§ = "sub";
                                                                                          while(true)
                                                                                          {
                                                                                             §#!r§ = "mul";
                                                                                             while(true)
                                                                                             {
                                                                                                DIV = "div";
                                                                                                while(true)
                                                                                                {
                                                                                                   §%!K§ = "rcp";
                                                                                                   continue loop18;
                                                                                                   addr272:
                                                                                                   if(!(_loc1_ && §2s§))
                                                                                                   {
                                                                                                      if(_loc2_)
                                                                                                      {
                                                                                                         continue loop21;
                                                                                                      }
                                                                                                      continue loop23;
                                                                                                   }
                                                                                                }
                                                                                                addr101:
                                                                                                if(_loc1_ && _loc2_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §1%§ = "wrap";
                                                                                                loop91:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc2_)
                                                                                                   {
                                                                                                      addr64:
                                                                                                      if(_loc2_ || _loc1_)
                                                                                                      {
                                                                                                         if(_loc1_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      addr249:
                                                                                                      while(!_loc1_)
                                                                                                      {
                                                                                                         if(!_loc1_)
                                                                                                         {
                                                                                                            continue loop12;
                                                                                                         }
                                                                                                         addr552:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc2_)
                                                                                                            {
                                                                                                               if(!_loc1_)
                                                                                                               {
                                                                                                                  continue loop4;
                                                                                                               }
                                                                                                               continue loop17;
                                                                                                            }
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         continue loop4;
                                                                                                         §§goto(addr64);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      loop90:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!(_loc1_ && _loc1_))
                                                                                                         {
                                                                                                            if(!_loc2_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            addr87:
                                                                                                            if(!(_loc1_ && _loc2_))
                                                                                                            {
                                                                                                               addr94:
                                                                                                               if(_loc2_ || _loc2_)
                                                                                                               {
                                                                                                                  §§goto(addr101);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  loop47:
                                                                                                                  for(; _loc2_; §§goto(addr94))
                                                                                                                  {
                                                                                                                     M44 = "m44";
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        M34 = "m34";
                                                                                                                        addr604:
                                                                                                                        loop49:
                                                                                                                        while(!_loc1_)
                                                                                                                        {
                                                                                                                           if(_loc2_)
                                                                                                                           {
                                                                                                                              continue loop0;
                                                                                                                           }
                                                                                                                           addr649:
                                                                                                                           while(!(_loc1_ && _loc1_))
                                                                                                                           {
                                                                                                                              §<"$§ = "neg";
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc2_ || _loc2_)
                                                                                                                                 {
                                                                                                                                    §6!,§ = "sat";
                                                                                                                                    break loop49;
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                                 addr265:
                                                                                                                                 while(!(_loc1_ && §2s§))
                                                                                                                                 {
                                                                                                                                    §§goto(addr272);
                                                                                                                                    while(!(_loc1_ && _loc2_))
                                                                                                                                    {
                                                                                                                                       §+!O§ = "repeat";
                                                                                                                                       continue loop90;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(_loc2_)
                                                                                                                              {
                                                                                                                                 DP3 = "dp3";
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    DP4 = "dp4";
                                                                                                                                    break loop47;
                                                                                                                                 }
                                                                                                                                 §§goto(addr637);
                                                                                                                              }
                                                                                                                              addr637:
                                                                                                                              continue loop18;
                                                                                                                           }
                                                                                                                           loop37:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §]-§ = "nrm";
                                                                                                                              addr690:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!(_loc1_ && §2s§))
                                                                                                                                 {
                                                                                                                                    continue loop19;
                                                                                                                                 }
                                                                                                                                 addr716:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §?r§ = "exp";
                                                                                                                                    continue loop37;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop19;
                                                                                                                           }
                                                                                                                           addr649:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           M33 = "m33";
                                                                                                                           continue loop47;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §default§ = "abs";
                                                                                                                     §§goto(addr649);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr482:
                                                                                                               loop61:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc2_ || _loc1_)
                                                                                                                  {
                                                                                                                     §`!K§ = "brk";
                                                                                                                     loop62:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc2_ || §2s§)
                                                                                                                        {
                                                                                                                           if(_loc1_)
                                                                                                                           {
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §1M§ = "kil";
                                                                                                                           continue loop22;
                                                                                                                        }
                                                                                                                        addr542:
                                                                                                                        addr542:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §>p§ = "ieg";
                                                                                                                           addr530:
                                                                                                                           addr685:
                                                                                                                           while(_loc2_ || _loc1_)
                                                                                                                           {
                                                                                                                              §6p§ = "iel";
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §%!I§ = "els";
                                                                                                                                 continue loop16;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §?P§ = "cos";
                                                                                                                              addr678:
                                                                                                                              while(!_loc1_)
                                                                                                                              {
                                                                                                                                 §8!9§ = "crs";
                                                                                                                                 §§goto(addr671);
                                                                                                                              }
                                                                                                                              §§goto(addr690);
                                                                                                                              §§goto(addr530);
                                                                                                                           }
                                                                                                                           continue loop62;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §[!0§ = "frc";
                                                                                                                        break loop61;
                                                                                                                     }
                                                                                                                     addr764:
                                                                                                                  }
                                                                                                                  break;
                                                                                                                  §§goto(addr87);
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §3"4§ = "sqt";
                                                                                                                  continue loop13;
                                                                                                                  §§goto(addr482);
                                                                                                               }
                                                                                                               addr482:
                                                                                                            }
                                                                                                            §§goto(addr671);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(!_loc1_)
                                                                                                            {
                                                                                                               §-j§ = "single";
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc2_)
                                                                                                                  {
                                                                                                                     if(!_loc2_)
                                                                                                                     {
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     if(_loc2_)
                                                                                                                     {
                                                                                                                        if(!_loc2_)
                                                                                                                        {
                                                                                                                           continue loop20;
                                                                                                                        }
                                                                                                                        §]§ = "depth";
                                                                                                                        §§goto(addr113);
                                                                                                                     }
                                                                                                                     §§goto(addr604);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr165);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr319);
                                                                                                               continue loop90;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               § !?§ = "max";
                                                                                                               §§goto(addr764);
                                                                                                            }
                                                                                                            addr138:
                                                                                                            addr769:
                                                                                                         }
                                                                                                         §§goto(addr542);
                                                                                                      }
                                                                                                      while(_loc2_ || _loc1_)
                                                                                                      {
                                                                                                         §]Q§ = "oc";
                                                                                                         break loop91;
                                                                                                      }
                                                                                                      loop60:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc2_ || _loc1_)
                                                                                                         {
                                                                                                            if(!_loc1_)
                                                                                                            {
                                                                                                               §@!y§ = "erp";
                                                                                                               §§goto(addr482);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         addr508:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §'!4§ = "rep";
                                                                                                            continue loop60;
                                                                                                         }
                                                                                                      }
                                                                                                      addr307:
                                                                                                      §§goto(addr666);
                                                                                                   }
                                                                                                   §§goto(addr343);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc2_)
                                                                                                   {
                                                                                                      continue loop24;
                                                                                                   }
                                                                                                   §§goto(addr295);
                                                                                                }
                                                                                                §§goto(addr422);
                                                                                             }
                                                                                             addr735:
                                                                                             while(_loc2_ || §2s§)
                                                                                             {
                                                                                                §,!8§ = "pow";
                                                                                                continue loop14;
                                                                                                §§goto(addr391);
                                                                                             }
                                                                                          }
                                                                                          if(_loc1_ && _loc1_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             continue loop5;
                                                                                          }
                                                                                          if(!_loc2_)
                                                                                          {
                                                                                             continue loop2;
                                                                                          }
                                                                                          §;!0§ = "centroid";
                                                                                          §§goto(addr138);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop1;
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      continue loop9;
                                                   }
                                                }
                                                if(!(_loc2_ || §2s§))
                                                {
                                                   continue;
                                                }
                                                §!D§ = "ine";
                                                §§goto(addr552);
                                             }
                                             if(!(_loc2_ || _loc1_))
                                             {
                                                continue;
                                             }
                                             §=!R§ = "tex";
                                             §§goto(addr432);
                                          }
                                       }
                                    }
                                    addr592:
                                    while(_loc2_ || _loc2_)
                                    {
                                       §2V§ = "inz";
                                       §§goto(addr587);
                                    }
                                 }
                              }
                           }
                        }
                        if(!(_loc2_ || _loc1_))
                        {
                           continue;
                        }
                        §2!C§ = "va";
                        §§goto(addr384);
                     }
                  }
               }
            }
         }
         §§goto(addr302);
      }
      
      private var §+c§:ByteArray = null;
      
      private var §5!<§:String = "";
      
      private var §,T§:Boolean = false;
      
      public function §2s§(param1:Boolean = false)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            super();
            loop0:
            while(true)
            {
               this.§,T§ = param1;
               while(!initialized)
               {
                  if(_loc2_)
                  {
                     continue loop0;
                  }
                  if(!_loc3_)
                  {
                     continue;
                  }
               }
               addr25:
               return;
            }
         }
         while(true)
         {
            init();
            §§goto(addr48);
         }
      }
      
      private static function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            initialized = true;
            loop0:
            while(true)
            {
               §=P§[§0!L§] = new OpCode(§0!L§,2,0,0);
               loop1:
               while(true)
               {
                  §=P§[§!!O§] = new OpCode(§!!O§,3,1,0);
                  loop2:
                  while(true)
                  {
                     §=P§[§0!9§] = new OpCode(§0!9§,3,2,0);
                     loop3:
                     while(true)
                     {
                        §=P§[§#!r§] = new OpCode(§#!r§,3,3,0);
                        while(true)
                        {
                           §=P§[DIV] = new OpCode(DIV,3,4,0);
                           loop5:
                           while(true)
                           {
                              §=P§[§%!K§] = new OpCode(§%!K§,2,5,0);
                              loop6:
                              while(true)
                              {
                                 §=P§[§`i§] = new OpCode(§`i§,3,6,0);
                                 loop7:
                                 while(true)
                                 {
                                    §=P§[§ !?§] = new OpCode(§ !?§,3,7,0);
                                    while(true)
                                    {
                                       §=P§[§[!0§] = new OpCode(§[!0§,2,8,0);
                                       continue loop1;
                                       addr473:
                                       if(!(_loc1_ || _loc1_))
                                       {
                                          continue;
                                       }
                                       §<H§[V] = new Register(V,"varying",4,7,§="+§ | §+!e§ | §="0§ | §?!j§);
                                       while(true)
                                       {
                                          §<H§[§%[§] = new Register(§%[§,"fragment constant",1,27,§+!e§ | §="0§);
                                          loop50:
                                          while(true)
                                          {
                                             if(_loc1_ || §2s§)
                                             {
                                                if(_loc1_)
                                                {
                                                   §<H§[§;!v§] = new Register(§;!v§,"fragment temporary",2,7,§+!e§ | §?!j§ | §="0§);
                                                   loop51:
                                                   while(true)
                                                   {
                                                      §<H§[§8!F§] = new Register(§8!F§,"texture sampler",5,7,§+!e§ | §="0§);
                                                      loop52:
                                                      while(true)
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            if(_loc1_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  §<H§[§]Q§] = new Register(§]Q§,"fragment output",3,0,§+!e§ | §?!j§);
                                                                  continue loop51;
                                                               }
                                                               addr1064:
                                                               addr956:
                                                               while(!(_loc2_ && §2s§))
                                                               {
                                                                  §=P§[DP4] = new OpCode(DP4,3,19,0);
                                                                  while(true)
                                                                  {
                                                                     §=P§[§default§] = new OpCode(§default§,2,20,0);
                                                                     addr934:
                                                                     while(true)
                                                                     {
                                                                        §=P§[§<"$§] = new OpCode(§<"$§,2,21,0);
                                                                        while(true)
                                                                        {
                                                                           §=P§[§6!,§] = new OpCode(§6!,§,2,22,0);
                                                                           loop23:
                                                                           while(true)
                                                                           {
                                                                              §=P§[M33] = new OpCode(M33,3,23,§[r§);
                                                                              while(_loc1_)
                                                                              {
                                                                                 §=P§[M44] = new OpCode(M44,3,24,§[r§);
                                                                                 loop25:
                                                                                 while(true)
                                                                                 {
                                                                                    §=P§[M34] = new OpCode(M34,3,25,§[r§);
                                                                                    addr870:
                                                                                    loop26:
                                                                                    while(_loc1_ || _loc1_)
                                                                                    {
                                                                                       §=P§[§6a§] = new OpCode(§6a§,1,26,§3!z§ | §2!P§ | §!b§);
                                                                                       while(true)
                                                                                       {
                                                                                          §=P§[§2V§] = new OpCode(§2V§,1,27,§3!z§ | §2!P§ | §!b§);
                                                                                          while(true)
                                                                                          {
                                                                                             §=P§[§`B§] = new OpCode(§`B§,2,28,§3!z§ | §2!P§ | §!b§);
                                                                                             loop29:
                                                                                             while(true)
                                                                                             {
                                                                                                §=P§[§!D§] = new OpCode(§!D§,2,29,§3!z§ | §2!P§ | §!b§);
                                                                                                loop30:
                                                                                                while(true)
                                                                                                {
                                                                                                   §=P§[§@"1§] = new OpCode(§@"1§,2,30,§3!z§ | §2!P§ | §!b§);
                                                                                                   addr799:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §=P§[§;"3§] = new OpCode(§;"3§,2,31,§3!z§ | §2!P§ | §!b§);
                                                                                                      addr784:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §=P§[§>p§] = new OpCode(§>p§,2,32,§3!z§ | §2!P§ | §!b§);
                                                                                                         addr762:
                                                                                                         addr1053:
                                                                                                         while(_loc1_ || §2s§)
                                                                                                         {
                                                                                                            §=P§[§6p§] = new OpCode(§6p§,2,33,§3!z§ | §2!P§ | §!b§);
                                                                                                            break loop52;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §=P§[§,!8§] = new OpCode(§,!8§,3,11,0);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §=P§[§1!K§] = new OpCode(§1!K§,2,12,0);
                                                                                                               addr1031:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §=P§[§?r§] = new OpCode(§?r§,2,13,0);
                                                                                                                  addr1018:
                                                                                                                  while(_loc1_)
                                                                                                                  {
                                                                                                                     §=P§[§]-§] = new OpCode(§]-§,2,14,0);
                                                                                                                     loop15:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §=P§[§7!A§] = new OpCode(§7!A§,2,15,0);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §=P§[§?P§] = new OpCode(§?P§,2,16,0);
                                                                                                                           addr985:
                                                                                                                           addr357:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §=P§[§8!9§] = new OpCode(§8!9§,3,17,0);
                                                                                                                              break loop50;
                                                                                                                              addr632:
                                                                                                                              while(!(_loc2_ && _loc1_))
                                                                                                                              {
                                                                                                                                 if(!_loc2_)
                                                                                                                                 {
                                                                                                                                    §=P§[§9!B§] = new OpCode(§9!B§,3,41,0);
                                                                                                                                    continue loop30;
                                                                                                                                 }
                                                                                                                                 continue loop15;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           if(_loc1_ || §2s§)
                                                                                                                           {
                                                                                                                              §3!v§[D2] = new Sampler(D2,§[e§,0);
                                                                                                                              continue loop50;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     if(!(_loc1_ || _loc2_))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§goto(addr473);
                                                                                                                  }
                                                                                                                  continue loop7;
                                                                                                               }
                                                                                                               addr523:
                                                                                                               if(!(_loc2_ && _loc2_))
                                                                                                               {
                                                                                                                  if(!_loc2_)
                                                                                                                  {
                                                                                                                     §<H§[§4!P§] = new Register(§4!P§,"vertex temporary",2,7,§="+§ | §?!j§ | §="0§);
                                                                                                                     loop47:
                                                                                                                     while(_loc1_)
                                                                                                                     {
                                                                                                                        §<H§[§=!>§] = new Register(§=!>§,"vertex output",3,0,§="+§ | §?!j§);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc1_ || _loc2_))
                                                                                                                           {
                                                                                                                              continue loop47;
                                                                                                                           }
                                                                                                                           if(!_loc1_)
                                                                                                                           {
                                                                                                                              while(!_loc2_)
                                                                                                                              {
                                                                                                                                 §=P§[§@!y§] = new OpCode(§@!y§,0,37,§3!z§ | §#" §);
                                                                                                                                 continue loop25;
                                                                                                                              }
                                                                                                                              continue loop29;
                                                                                                                              addr700:
                                                                                                                           }
                                                                                                                           if(!_loc1_)
                                                                                                                           {
                                                                                                                              continue loop23;
                                                                                                                           }
                                                                                                                           §§goto(addr466);
                                                                                                                        }
                                                                                                                        §§goto(addr1018);
                                                                                                                     }
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr762);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr566:
                                                                                             while(!(_loc2_ && _loc2_))
                                                                                             {
                                                                                                §<H§[§2!C§] = new Register(§2!C§,"vertex attribute",0,7,§="+§ | §="0§);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc1_)
                                                                                                   {
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   addr665:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §=P§[§1M§] = new OpCode(§1M§,1,39,§3!z§ | §2!+§);
                                                                                                      §§goto(addr654);
                                                                                                   }
                                                                                                }
                                                                                                continue loop5;
                                                                                             }
                                                                                          }
                                                                                          continue loop50;
                                                                                       }
                                                                                       addr262:
                                                                                       if(_loc2_ && _loc1_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       §3!v§[§0h§] = new Sampler(§0h§,§#1§,0);
                                                                                       while(_loc1_)
                                                                                       {
                                                                                          §3!v§[§#A§] = new Sampler(§#A§,§#1§,0);
                                                                                          while(!(_loc2_ && _loc2_))
                                                                                          {
                                                                                             §3!v§[§%u§] = new Sampler(§%u§,§,'§,0);
                                                                                             continue loop52;
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc1_ || _loc2_))
                                                                                             {
                                                                                                continue loop51;
                                                                                             }
                                                                                             if(!_loc2_)
                                                                                             {
                                                                                                if(!_loc1_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §3!v§[§2!#§] = new Sampler(§2!#§,§[e§,1);
                                                                                                loop56:
                                                                                                while(true)
                                                                                                {
                                                                                                   §3!v§[§"!T§] = new Sampler(§"!T§,§#1§,1);
                                                                                                   loop57:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §3!v§[§]!d§] = new Sampler(§]!d§,§#1§,2);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc2_)
                                                                                                         {
                                                                                                            continue loop56;
                                                                                                         }
                                                                                                         §§goto(addr262);
                                                                                                         addr139:
                                                                                                         if(!(_loc2_ && _loc1_))
                                                                                                         {
                                                                                                            continue loop57;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop26;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr455);
                                                                                             }
                                                                                             §§goto(addr231);
                                                                                          }
                                                                                          addr231:
                                                                                          continue loop6;
                                                                                          if(_loc2_ && _loc2_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          §§goto(addr79);
                                                                                       }
                                                                                       §§goto(addr784);
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                                 if(_loc2_ && _loc1_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr523);
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                        }
                                                                        addr327:
                                                                        if(_loc2_ && _loc2_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        §3!v§[D3] = new Sampler(D3,§[e§,2);
                                                                        §§goto(addr299);
                                                                     }
                                                                     if(_loc2_ && _loc2_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §=P§[§;!;§] = new OpCode(§;!;§,3,42,0);
                                                                     §§goto(addr594);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §=P§[§!5§] = new OpCode(§!5§,2,10,0);
                                                                  §§goto(addr1053);
                                                                  §§goto(addr956);
                                                               }
                                                               addr956:
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr632);
                                                      }
                                                      while(true)
                                                      {
                                                         §=P§[§%!I§] = new OpCode(§%!I§,0,34,§3!z§ | §2!P§ | §#" §);
                                                         §§goto(addr732);
                                                      }
                                                   }
                                                }
                                                break;
                                             }
                                             §§goto(addr859);
                                          }
                                          while(true)
                                          {
                                             §=P§[DP3] = new OpCode(DP3,3,18,0);
                                             §§goto(addr956);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           if(_loc2_ && _loc2_)
                           {
                              continue;
                           }
                           §§goto(addr102);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr118);
      }
      
      public function get error() : String
      {
         return this.§5!<§;
      }
      
      public function get §+v§() : ByteArray
      {
         return this.§+c§;
      }
      
      public function §@x§(param1:String, param2:String, param3:Boolean = false) : ByteArray
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
