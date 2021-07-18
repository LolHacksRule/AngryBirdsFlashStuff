package §8" §
{
   import §#R§.§4!+§;
   import §%"$§.§"s§;
   import §%"$§.§#!p§;
   import §%"$§.§%!4§;
   import §%"$§.§-d§;
   import §%"$§.§[!0§;
   import §%"$§.§^!U§;
   import §5!V§.§!w§;
   import §7r§.§=q§;
   import §@"5§.§1k§;
   import §]!+§.§'"+§;
   import flash.display.DisplayObject;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class Quest extends EventDispatcher
   {
      
      public static const §<!j§:String = "[done]";
      
      public static const §"!!§:String = "None";
      
      public static const §@!?§:String = "Static";
      
      public static const §;!y§:String = "Intro";
      
      public static const §1! §:String = "Conditions";
      
      public static const §-!z§:String = "ReadyForTest";
      
      public static const §&P§:String = "StabilityCheck";
      
      public static const §9!h§:String = "ReadyForPlay";
      
      public static var §@>§:Boolean = false;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || Quest)
         {
            §<!j§ = "[done]";
            while(true)
            {
               §"!!§ = "None";
               while(true)
               {
                  §@!?§ = "Static";
                  addr101:
                  while(_loc1_)
                  {
                  }
               }
               loop7:
               while(_loc1_ || _loc1_)
               {
                  §9!h§ = "ReadyForPlay";
                  loop8:
                  while(!(_loc2_ && _loc1_))
                  {
                     §@>§ = false;
                     if(!(_loc2_ && _loc1_))
                     {
                        if(!_loc2_)
                        {
                           addr41:
                           if(!_loc1_)
                           {
                              while(true)
                              {
                                 §1! § = "Conditions";
                                 addr91:
                                 while(true)
                                 {
                                    §-!z§ = "ReadyForTest";
                                    break loop8;
                                 }
                                 §§goto(addr41);
                              }
                              addr96:
                           }
                           return;
                        }
                        continue loop7;
                     }
                  }
                  while(true)
                  {
                     if(!_loc2_)
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        §&P§ = "StabilityCheck";
                        continue loop7;
                     }
                     §§goto(addr91);
                     §§goto(addr48);
                  }
                  addr48:
                  §§goto(addr101);
               }
            }
         }
         while(true)
         {
            §;!y§ = "Intro";
            §§goto(addr96);
         }
      }
      
      private var §<0§:Vector.<§2J§>;
      
      private var § r§:Vector.<§2J§>;
      
      private var §<""§:Vector.<§[!0§>;
      
      private var §8e§:Vector.<String>;
      
      private var §+!z§:Vector.<§^!U§>;
      
      private var §]q§:Vector.<§=q§>;
      
      private var §9q§:§!w§;
      
      private var §02§:int = 0;
      
      private var §^"$§:String;
      
      private var mName:String = "";
      
      private var §&F§:int;
      
      private var §!j§:int;
      
      private var §7! §:Vector.<§7z§>;
      
      private var §=S§:§'"+§;
      
      private var §5]§:Boolean = false;
      
      private var §4!7§:Rectangle;
      
      private var §5!1§:§4!+§;
      
      private var §8"6§:int;
      
      public function Quest(param1:§!w§, param2:Boolean = false)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§<0§ = new Vector.<§2J§>();
            while(true)
            {
               this.§ r§ = new Vector.<§2J§>();
               while(!(_loc4_ && this))
               {
                  this.§<""§ = new Vector.<§[!0§>();
                  loop2:
                  for(; _loc3_; if(_loc3_ || param1)
                  {
                     return;
                     addr36:
                  })
                  {
                     this.§8e§ = new Vector.<String>();
                     loop3:
                     while(true)
                     {
                        this.§+!z§ = new Vector.<§^!U§>();
                        loop4:
                        while(true)
                        {
                           this.§]q§ = new Vector.<§=q§>();
                           while(true)
                           {
                              super();
                              continue loop3;
                              addr43:
                              if(!(_loc4_ && param2))
                              {
                                 if(_loc3_)
                                 {
                                    this.§5]§ = param2;
                                    addr52:
                                    if(_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    addr41:
                                    while(_loc3_)
                                    {
                                       §§goto(addr43);
                                       §§goto(addr52);
                                    }
                                    continue loop3;
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr36);
      }
      
      public static function §+!#§(param1:§!w§) : Quest
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Quest = new Quest(param1,true);
         if(_loc3_ || _loc3_)
         {
            _loc2_.§<""§.push(new §-d§(param1));
            do
            {
               _loc2_.§<""§.push(new §%!4§(param1));
            }
            while(_loc4_ && param1);
            
         }
         return _loc2_;
      }
      
      public function get §&i§() : Boolean
      {
         return this.§5]§;
      }
      
      public function §?j§(param1:XML) : void
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc2_:XML = null;
         var _loc3_:XML = null;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:XML = null;
         var _loc7_:§[!0§ = null;
         var _loc8_:Number = NaN;
         var _loc9_:§2J§ = null;
         var _loc10_:* = 0;
         var _loc11_:XML = null;
         var _loc12_:§=q§ = null;
         if(!_loc15_)
         {
            this.mName = param1.@name;
         }
         var _loc13_:* = 0;
         var _loc14_:* = param1.step;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc14_,_loc13_));
            if(!_loc15_)
            {
               if(§§pop())
               {
                  _loc2_ = §§nextvalue(_loc13_,_loc14_);
                  if(_loc7_ = §[!0§.§0j§(this.§9q§,_loc2_))
                  {
                     if(!_loc15_)
                     {
                        this.§<""§.push(_loc7_);
                     }
                  }
                  continue;
               }
               if(!(_loc15_ && this))
               {
                  if(_loc16_ || _loc2_)
                  {
                     if(!(_loc15_ && _loc3_))
                     {
                        this.§7! § = new Vector.<§7z§>();
                        if(_loc16_)
                        {
                           §§push(0);
                           if(_loc16_ || _loc3_)
                           {
                              _loc13_ = §§pop();
                              if(!(_loc15_ && this))
                              {
                                 _loc14_ = param1.surprise;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc14_,_loc13_));
                                    if(_loc16_)
                                    {
                                       break loop0;
                                    }
                                    break;
                                 }
                                 loop3:
                                 for(; §§pop(); while(true)
                                 {
                                    continue loop3;
                                 })
                                 {
                                    _loc6_ = §§nextvalue(_loc13_,_loc14_);
                                    _loc9_ = new §2J§(_loc6_);
                                    if(_loc16_ || param1)
                                    {
                                       §§push(§@>§);
                                       if(_loc16_ || this)
                                       {
                                          §§push(!§§pop());
                                       }
                                       loop4:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             loop5:
                                             while(true)
                                             {
                                                §§pop();
                                                addr509:
                                                while(true)
                                                {
                                                   addr473:
                                                   while(true)
                                                   {
                                                      §§push(_loc9_.type);
                                                      addr476:
                                                      while(true)
                                                      {
                                                         §§push(§2J§.§;Z§);
                                                         addr478:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc16_)
                                                            {
                                                               break;
                                                            }
                                                            continue loop5;
                                                         }
                                                         if(!_loc16_)
                                                         {
                                                            continue loop4;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(!(_loc15_ && _loc2_))
                                                {
                                                   this.§<0§.push(_loc9_);
                                                }
                                             }
                                             else
                                             {
                                                §§push(_loc9_.type);
                                                if(!(_loc15_ && _loc2_))
                                                {
                                                   §§push(§2J§.§6v§);
                                                   if(_loc16_ || _loc3_)
                                                   {
                                                      if(§§pop() != §§pop())
                                                      {
                                                         break;
                                                      }
                                                      if(_loc16_)
                                                      {
                                                         this.§ r§.push(_loc9_);
                                                      }
                                                      if(!(_loc15_ && _loc3_))
                                                      {
                                                         if(_loc16_)
                                                         {
                                                            if(true)
                                                            {
                                                               break;
                                                            }
                                                            §§goto(addr473);
                                                         }
                                                         §§goto(addr509);
                                                      }
                                                      else
                                                      {
                                                         break;
                                                         addr496:
                                                      }
                                                   }
                                                   §§goto(addr478);
                                                }
                                                §§goto(addr476);
                                             }
                                             §§goto(addr496);
                                          }
                                          continue loop3;
                                       }
                                    }
                                    §§goto(addr509);
                                 }
                                 addr513:
                                 if(!(_loc15_ && param1))
                                 {
                                    if(!§@>§)
                                    {
                                       if(_loc16_)
                                       {
                                          §§push(0);
                                          if(_loc16_ || _loc3_)
                                          {
                                             addr533:
                                             _loc10_ = §§pop();
                                             if(_loc16_)
                                             {
                                                addr536:
                                                while(true)
                                                {
                                                   §§push(_loc10_);
                                                   §§goto(addr617);
                                                }
                                             }
                                             §§goto(addr629);
                                          }
                                          addr617:
                                          loop20:
                                          for(; §§pop() < this.§9q§.objects.getObjectCount(); continue loop11)
                                          {
                                             §§push((_loc12_ = §=q§.§0"§(this.§9q§.objects.getObject(_loc10_))).§@!i§());
                                             if(!_loc15_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                if(_loc16_ || this)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc16_ || _loc3_)
                                                      {
                                                         addr568:
                                                         §§pop();
                                                         if(_loc16_ || this)
                                                         {
                                                            §§push(this.isObjectNeeded(_loc12_));
                                                            if(!_loc15_)
                                                            {
                                                               addr611:
                                                               if(§§pop())
                                                               {
                                                                  _loc12_.§'!^§(Number.MAX_VALUE);
                                                                  loop21:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc15_ && _loc3_))
                                                                     {
                                                                        loop22:
                                                                        while(true)
                                                                        {
                                                                           _loc10_++;
                                                                           if(!_loc16_)
                                                                           {
                                                                              continue loop21;
                                                                           }
                                                                           if(!(_loc15_ && param1))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 if(true)
                                                                                 {
                                                                                    break loop22;
                                                                                 }
                                                                                 continue loop22;
                                                                              }
                                                                              addr588:
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 _loc12_.§'!^§(1);
                                                                              }
                                                                              addr612:
                                                                           }
                                                                        }
                                                                        continue loop20;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr590);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr612);
                                                            }
                                                            §§goto(addr611);
                                                         }
                                                         §§goto(addr588);
                                                      }
                                                   }
                                                }
                                                §§goto(addr611);
                                             }
                                             §§goto(addr568);
                                          }
                                          §§goto(addr680);
                                       }
                                       §§goto(addr629);
                                    }
                                    §§goto(addr675);
                                 }
                                 §§goto(addr629);
                                 addr512:
                                 addr511:
                                 addr154:
                              }
                              addr337:
                              if(!_loc15_)
                              {
                                 this.§+!z§.push(new §"s§());
                                 loop17:
                                 while(true)
                                 {
                                    addr378:
                                    addr404:
                                    while(param1.hasOwnProperty("area"))
                                    {
                                       if(!(_loc15_ && param1))
                                       {
                                          while(true)
                                          {
                                             _loc8_ = param1.area.radius;
                                             if(!_loc15_)
                                             {
                                                addr397:
                                                while(true)
                                                {
                                                   this.§4!7§ = new Rectangle(param1.area.x - _loc8_,param1.area.y - _loc8_,2 * _loc8_,2 * _loc8_);
                                                   if(_loc15_ && _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop17;
                                                }
                                                §§goto(addr536);
                                                addr397:
                                             }
                                             break;
                                          }
                                          addr680:
                                          if(!(_loc15_ && param1))
                                          {
                                             addr629:
                                             _loc11_ = param1.intro[0];
                                             if(_loc16_ || this)
                                             {
                                                this.§&F§ = _loc11_.start;
                                                loop12:
                                                while(true)
                                                {
                                                   addr652:
                                                   while(true)
                                                   {
                                                      this.§!j§ = _loc11_.end;
                                                      addr657:
                                                      while(_loc16_)
                                                      {
                                                      }
                                                      continue loop12;
                                                   }
                                                }
                                             }
                                             while(true)
                                             {
                                                this.§8"6§ = this.§&F§;
                                                if(!_loc15_)
                                                {
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   §§goto(addr652);
                                                }
                                                §§goto(addr657);
                                             }
                                             addr675:
                                             §@>§ = false;
                                             if(!_loc16_)
                                             {
                                             }
                                             §§goto(addr683);
                                          }
                                          this.§^"$§ = §"!!§;
                                          addr683:
                                          return;
                                          addr390:
                                       }
                                       §§goto(addr629);
                                    }
                                    §§push(0);
                                    if(!_loc15_)
                                    {
                                       addr407:
                                       _loc13_ = §§pop();
                                       if(!_loc15_)
                                       {
                                          addr410:
                                          _loc14_ = param1.prompt;
                                          §§goto(addr510);
                                       }
                                       §§goto(addr513);
                                    }
                                    §§goto(addr533);
                                 }
                              }
                              §§goto(addr397);
                           }
                           §§goto(addr617);
                        }
                        §§goto(addr376);
                     }
                     addr181:
                     this.§=S§ = new §'"+§();
                     if(_loc16_)
                     {
                        this.§=S§.init(this.§7! §);
                        if(!(_loc15_ && this))
                        {
                           §§push(0);
                           if(_loc16_)
                           {
                              _loc13_ = §§pop();
                              if(!_loc15_)
                              {
                                 _loc14_ = param1.persistent.type;
                                 if(_loc16_)
                                 {
                                    loop28:
                                    while(true)
                                    {
                                       §§push(§§hasnext(_loc14_,_loc13_));
                                       if(!(_loc15_ && _loc3_))
                                       {
                                          if(!§§pop())
                                          {
                                             if(!(_loc15_ && this))
                                             {
                                                if(_loc16_ || _loc3_)
                                                {
                                                   addr254:
                                                   if(!(_loc15_ && param1))
                                                   {
                                                      addr262:
                                                      §§push(0);
                                                      if(!(_loc15_ && _loc2_))
                                                      {
                                                         _loc13_ = §§pop();
                                                         if(_loc16_ || this)
                                                         {
                                                            _loc14_ = param1.persistent.object;
                                                            if(_loc15_ && this)
                                                            {
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(§§hasnext(_loc14_,_loc13_));
                                                               if(!_loc15_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     _loc5_ = §§nextvalue(_loc13_,_loc14_);
                                                                     if(!(_loc15_ && _loc2_))
                                                                     {
                                                                        this.§]q§.push(§`8§.§"!h§(_loc5_,this.§9q§.objects));
                                                                     }
                                                                     continue;
                                                                  }
                                                                  if(!_loc15_)
                                                                  {
                                                                     addr319:
                                                                     if(_loc15_ && this)
                                                                     {
                                                                     }
                                                                     §§goto(addr513);
                                                                  }
                                                                  §§goto(addr512);
                                                               }
                                                               §§goto(addr511);
                                                            }
                                                         }
                                                         §§goto(addr337);
                                                      }
                                                      §§goto(addr533);
                                                   }
                                                   §§goto(addr390);
                                                }
                                                §§goto(addr410);
                                             }
                                             §§goto(addr513);
                                          }
                                          else
                                          {
                                             _loc4_ = §§nextvalue(_loc13_,_loc14_);
                                             if(!(_loc16_ || this))
                                             {
                                                continue;
                                             }
                                             while(true)
                                             {
                                                this.§8e§.push(_loc4_);
                                                continue loop28;
                                             }
                                          }
                                       }
                                       §§goto(addr513);
                                    }
                                 }
                                 §§goto(addr226);
                              }
                              §§goto(addr254);
                           }
                           §§goto(addr407);
                        }
                        §§goto(addr376);
                     }
                     §§goto(addr397);
                  }
               }
               §§goto(addr513);
            }
            break;
         }
         while(true)
         {
            if(!§§pop())
            {
               if(_loc16_ || param1)
               {
                  if(_loc16_ || _loc2_)
                  {
                     if(_loc16_ || this)
                     {
                        §§goto(addr181);
                     }
                     §§goto(addr262);
                  }
                  §§goto(addr410);
               }
               §§goto(addr319);
            }
            else
            {
               _loc3_ = §§nextvalue(_loc13_,_loc14_);
               if(!_loc15_)
               {
                  this.§7! §.push(new §7z§(this.§9q§,_loc3_));
               }
               §§goto(addr154);
            }
         }
      }
      
      private function §^]§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§=q§ = null;
         var _loc1_:int = 0;
         while(_loc1_ < this.§9q§.objects.getObjectCount())
         {
            _loc2_ = §=q§.§0"§(this.§9q§.objects.getObject(_loc1_));
            if(_loc4_)
            {
               if(_loc2_.§@!i§())
               {
                  if(!_loc3_)
                  {
                     addr50:
                     _loc2_.§1!Z§();
                     if(_loc3_)
                     {
                        continue;
                     }
                  }
               }
               _loc1_++;
               continue;
            }
            §§goto(addr50);
         }
      }
      
      public function §=!"§() : §2J§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§<0§.length <= 0)
            {
               loop0:
               while(true)
               {
                  §§push(this.§^"$§);
                  loop1:
                  while(true)
                  {
                     §§push(§9!h§);
                     loop2:
                     while(true)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(_loc1_)
                           {
                              break;
                           }
                           while(true)
                           {
                           }
                           addr95:
                        }
                        while(true)
                        {
                           §§push(this.§^"$§);
                           if(!_loc1_)
                           {
                              break;
                           }
                           §§push(§1! §);
                           if(_loc2_)
                           {
                              continue loop2;
                           }
                           §§push(§§pop() == §§pop());
                           loop5:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(§§pop())
                                 {
                                    if(!_loc2_)
                                    {
                                       if(_loc1_)
                                       {
                                          if(_loc2_ && _loc2_)
                                          {
                                             continue loop0;
                                          }
                                          §§push(this.§#D§());
                                       }
                                       else
                                       {
                                          §§goto(addr95);
                                       }
                                    }
                                    if(!_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          addr70:
                                          break;
                                       }
                                       addr111:
                                       return this.§<0§.shift();
                                    }
                                    loop7:
                                    while(true)
                                    {
                                       §§push(this.§#D§());
                                       if(_loc1_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          if(_loc1_)
                                          {
                                             continue loop5;
                                          }
                                          addr82:
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop7;
                                          }
                                       }
                                    }
                                    continue loop5;
                                    return §§pop().§=!"§();
                                 }
                                 return null;
                                 addr39:
                              }
                              §§goto(addr82);
                           }
                        }
                        continue loop1;
                     }
                     return this.§ r§.shift();
                  }
               }
            }
            §§goto(addr111);
         }
         §§goto(addr70);
      }
      
      public function update(param1:int) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Vector.<§=q§> = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!_loc5_)
         {
            §§push(this.§^"$§);
            if(_loc6_ || param1)
            {
               §§push(§"!!§);
               if(!(_loc5_ && _loc3_))
               {
                  if(§§pop() == §§pop())
                  {
                     if(_loc6_)
                     {
                        this.updateState();
                        if(_loc5_ && param1)
                        {
                           addr67:
                           this.§&F§ -= param1;
                           _loc2_ = this.§+"6§.§ !t§();
                           if(!(_loc5_ && _loc3_))
                           {
                              §§push(int(_loc2_.length));
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 §§goto(addr165);
                              }
                           }
                           addr165:
                           while(true)
                           {
                              §§push(0);
                              if(!_loc5_)
                              {
                                 _loc4_ = §§pop();
                                 if(_loc6_ || this)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              continue loop5;
                           }
                        }
                        §§goto(addr197);
                     }
                  }
                  else
                  {
                     addr59:
                     if(this.§^"$§ == §@!?§)
                     {
                        if(_loc5_ && this)
                        {
                        }
                        §§goto(addr67);
                     }
                     else
                     {
                        §§push(this.§^"$§);
                        if(!_loc5_)
                        {
                           §§push(§;!y§);
                           if(!(_loc5_ && _loc2_))
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(_loc6_)
                                 {
                                    this.§!j§ -= param1;
                                    if(!(_loc5_ && this))
                                    {
                                       if(this.§!j§ <= 0)
                                       {
                                          if(_loc6_ || _loc2_)
                                          {
                                             this.updateState();
                                          }
                                          addr303:
                                       }
                                       §§goto(addr196);
                                    }
                                    else
                                    {
                                       addr230:
                                       this.§8D§(false);
                                    }
                                    §§goto(addr196);
                                 }
                                 addr233:
                              }
                              else
                              {
                                 §§push(this.§^"$§);
                                 loop4:
                                 while(true)
                                 {
                                    §§push(§&P§);
                                    addr268:
                                    loop0:
                                    while(true)
                                    {
                                       if(§§pop() == §§pop())
                                       {
                                          if(_loc6_ || _loc2_)
                                          {
                                             this.§6!W§(param1);
                                             break;
                                          }
                                          break;
                                       }
                                       §§push(this.§^"$§);
                                       if(_loc5_)
                                       {
                                          continue loop4;
                                       }
                                       §§push(§1! §);
                                       if(!(_loc6_ || _loc2_))
                                       {
                                          continue;
                                       }
                                       §§push(§§pop() == §§pop());
                                       if(_loc6_)
                                       {
                                          if(§§pop())
                                          {
                                             loop3:
                                             while(true)
                                             {
                                                §§pop();
                                                addr255:
                                                while(true)
                                                {
                                                   if(!(_loc6_ || this))
                                                   {
                                                      break loop0;
                                                      addr262:
                                                   }
                                                   §§push(this.§#D§() is §#!p§);
                                                   if(_loc6_)
                                                   {
                                                      break;
                                                   }
                                                   continue loop3;
                                                }
                                             }
                                             addr254:
                                          }
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                if(_loc6_ || _loc3_)
                                                {
                                                   if(_loc6_ || param1)
                                                   {
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         §§goto(addr230);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr303);
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr255);
                                                   }
                                                }
                                                §§goto(addr233);
                                             }
                                             break;
                                             §§goto(addr262);
                                          }
                                          §§goto(addr196);
                                       }
                                       §§goto(addr254);
                                    }
                                 }
                                 addr267:
                              }
                              addr196:
                              §§goto(addr197);
                           }
                           §§goto(addr268);
                        }
                        §§goto(addr267);
                     }
                  }
                  addr197:
                  while(true)
                  {
                     §§push(_loc4_);
                     if(_loc6_)
                     {
                        if(§§pop() >= _loc2_.length)
                        {
                           if(_loc6_ || _loc2_)
                           {
                              if(!_loc5_)
                              {
                                 addr104:
                                 if(this.§&F§ > -1000)
                                 {
                                    break;
                                 }
                                 if(_loc6_ || param1)
                                 {
                                    addr113:
                                    if(!(_loc6_ || _loc3_))
                                    {
                                       continue;
                                    }
                                    this.updateState();
                                 }
                                 if(true)
                                 {
                                    break;
                                 }
                                 addr124:
                                 _loc4_++;
                                 continue;
                              }
                              addr137:
                              §§goto(addr124);
                           }
                           §§goto(addr113);
                        }
                        else
                        {
                           _loc2_[_loc4_].visible = _loc4_ < _loc3_;
                        }
                        §§goto(addr137);
                     }
                     §§goto(addr104);
                  }
                  return;
               }
            }
            §§goto(addr59);
         }
         §§goto(addr67);
      }
      
      public function refresh(param1:§!w§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§[!0§ = null;
         if(_loc5_)
         {
            this.§9q§ = param1;
         }
         for each(_loc2_ in this.§<""§)
         {
            if(!_loc6_)
            {
               _loc2_.refresh(this.§9q§);
            }
         }
         if(!(_loc6_ && _loc2_))
         {
            this.§<e§();
         }
      }
      
      public function § f§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§""$§();
         }
         loop0:
         while(true)
         {
            this.§>">§();
            while(true)
            {
               this.§<e§();
               while(!_loc1_)
               {
                  continue loop0;
                  this.updateState();
                  if(!(_loc1_ && this))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      private function §""$§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§^!U§ = null;
         if(_loc4_ || this)
         {
            if(this.§^"$§ == §9!h§)
            {
               addr40:
               for each(_loc1_ in this.§+!z§)
               {
                  if(!_loc5_)
                  {
                     _loc1_.reset();
                  }
               }
            }
            return;
         }
         §§goto(addr40);
      }
      
      private function §<e§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§7z§ = null;
         if(_loc5_ || _loc2_)
         {
            if(!(this.§#D§() is §#!p§))
            {
               addr32:
               var _loc3_:* = this.§7! §;
               for each(_loc1_ in _loc3_)
               {
                  if(_loc5_ || this)
                  {
                     _loc1_.update(this.§9q§.objects);
                  }
               }
               if(!_loc4_)
               {
                  §§push(this.§=S§);
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§=S§);
                           addr150:
                           loop1:
                           while(true)
                           {
                              §§pop().update();
                              loop2:
                              while(true)
                              {
                                 §§push(this.§=S§);
                                 addr126:
                                 while(true)
                                 {
                                    if(!_loc5_)
                                    {
                                       continue loop1;
                                    }
                                    §§push(true);
                                    while(true)
                                    {
                                       §§pop().visible = §§pop();
                                       addr130:
                                       while(!_loc5_)
                                       {
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr148:
                     }
                     while(true)
                     {
                        loop9:
                        while(true)
                        {
                           dispatchEvent(new §1k§(§1k§.§1!+§));
                           if(!(_loc5_ || _loc3_))
                           {
                              while(true)
                              {
                                 if(!(_loc4_ && this))
                                 {
                                    if(_loc5_ || _loc1_)
                                    {
                                       while(true)
                                       {
                                          continue loop9;
                                       }
                                       addr122:
                                    }
                                    else
                                    {
                                       §§goto(addr148);
                                    }
                                 }
                                 §§goto(addr130);
                                 continue loop9;
                              }
                              addr108:
                           }
                           return;
                        }
                     }
                  }
                  §§goto(addr150);
               }
               §§goto(addr122);
            }
            else
            {
               §§push(this.§=S§);
               if(_loc5_ || _loc2_)
               {
                  §§push(false);
                  if(_loc5_)
                  {
                     §§pop().visible = §§pop();
                     §§goto(addr108);
                  }
                  §§goto(addr129);
               }
            }
            §§goto(addr126);
         }
         §§goto(addr32);
      }
      
      private function §>">§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§[!0§ = null;
         var _loc2_:* = false;
         loop0:
         for each(_loc1_ in this.§<""§)
         {
            if(!(_loc5_ && _loc2_))
            {
               §§push(_loc1_.isCompleted);
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  addr107:
                  while(true)
                  {
                     _loc2_ = §§pop();
                  }
               }
               addr106:
            }
            loop3:
            while(true)
            {
               loop4:
               while(true)
               {
                  _loc1_.isCompleted = _loc1_.update(this.§9q§);
                  while(true)
                  {
                     §§push(_loc2_);
                     if(!(_loc5_ && _loc2_))
                     {
                        if(!_loc5_)
                        {
                           if(§§pop() == _loc1_.isCompleted)
                           {
                              break loop4;
                           }
                           if(!(_loc5_ && _loc2_))
                           {
                              if(!_loc6_)
                              {
                                 continue;
                              }
                              dispatchEvent(new §1k§(§1k§.§3!u§));
                           }
                           if(!_loc5_)
                           {
                              if(true)
                              {
                                 break loop4;
                              }
                              continue loop4;
                           }
                           continue loop3;
                        }
                        §§goto(addr106);
                     }
                     break;
                  }
                  §§goto(addr107);
               }
               continue loop0;
            }
         }
      }
      
      public function §4L§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§^!U§ = this.§1!"§();
         if(!(_loc2_ && _loc2_))
         {
            if(_loc1_)
            {
               if(!_loc2_)
               {
                  addr52:
                  _loc1_.§+"'§();
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      private function §6!W§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§^!U§ = this.§1!"§();
         if(_loc4_)
         {
            if(_loc2_)
            {
               loop0:
               while(true)
               {
                  §§push(_loc2_.status);
                  loop1:
                  while(true)
                  {
                     §§push(§^!U§.§"!x§);
                     loop2:
                     while(true)
                     {
                        if(§§pop() == §§pop())
                        {
                           if(!_loc3_)
                           {
                              _loc2_.startCheck(this.§9q§.§1!V§);
                           }
                           while(true)
                           {
                              loop11:
                              while(_loc4_ || param1)
                              {
                                 dispatchEvent(new §1k§(§1k§.§?s§));
                                 while(true)
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       addr107:
                                       if(!(_loc4_ || param1))
                                       {
                                          while(true)
                                          {
                                             this.updateState();
                                             continue loop11;
                                             §§goto(addr107);
                                          }
                                          addr123:
                                       }
                                       §§goto(addr24);
                                    }
                                    continue loop11;
                                 }
                              }
                           }
                        }
                        while(true)
                        {
                           _loc2_.update(this.§9q§.§1!V§,param1);
                           addr140:
                           loop5:
                           while(true)
                           {
                              §§push(_loc2_.status);
                              loop6:
                              for(; _loc4_; §§push(_loc2_.status),if(_loc3_ && this)
                              {
                                 continue;
                              },§§push(§^!U§.§-7§),if(_loc3_)
                              {
                                 §§goto(addr122);
                              },if(_loc3_)
                              {
                                 break loop5;
                              },if(§§pop() == §§pop())
                              {
                                 continue loop0;
                              })
                              {
                                 §§push(§^!U§.§+!>§);
                                 while(§§pop() != §§pop())
                                 {
                                    continue loop6;
                                 }
                                 §§goto(addr123);
                              }
                              continue loop1;
                           }
                           continue loop2;
                        }
                     }
                  }
                  loop8:
                  for(; _loc4_ || _loc2_; if(_loc3_ && this)
                  {
                     continue;
                  },if(!(_loc4_ || param1))
                  {
                     §§goto(addr100);
                  },§§goto(addr24))
                  {
                     dispatchEvent(new §1k§(§1k§.§7p§));
                     loop9:
                     while(_loc4_)
                     {
                        while(true)
                        {
                           this.updateState();
                           if(!_loc3_)
                           {
                              continue loop8;
                           }
                           continue loop9;
                        }
                     }
                     §§goto(addr140);
                  }
               }
            }
            addr24:
            return;
         }
         §§goto(addr92);
      }
      
      public function §#D§() : §[!0§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§[!0§ = null;
         if(!(_loc4_ && _loc3_))
         {
            if(this.§^"$§ != §1! §)
            {
               if(!_loc4_)
               {
                  return null;
                  addr33:
               }
            }
            var _loc2_:int = 0;
            var _loc3_:* = this.§<""§;
            while(true)
            {
               for each(_loc1_ in _loc3_)
               {
                  if(!_loc5_)
                  {
                     break;
                  }
                  if(!_loc1_.isCompleted)
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        break;
                     }
                  }
               }
               return null;
            }
            return _loc1_;
         }
         §§goto(addr33);
      }
      
      public function §1!"§() : §^!U§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§^!U§ = null;
         if(_loc4_)
         {
            if(this.§^"$§ != §&P§)
            {
               if(_loc4_)
               {
                  §§goto(addr27);
               }
            }
            var _loc2_:int = 0;
            var _loc3_:* = this.§+!z§;
            while(true)
            {
               for each(_loc1_ in _loc3_)
               {
                  if(_loc4_)
                  {
                     §§push(_loc1_.status);
                     if(!(_loc5_ && _loc1_))
                     {
                        §§push(§^!U§.§5!k§);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(§§pop() == §§pop());
                           if(!(_loc5_ && _loc2_))
                           {
                              if(!§§pop())
                              {
                                 if(!(_loc5_ && _loc1_))
                                 {
                                    §§pop();
                                    if(_loc5_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    addr101:
                                    §§push(_loc1_.status == §^!U§.§"!x§);
                                 }
                              }
                           }
                           if(§§pop())
                           {
                              if(_loc4_ || _loc3_)
                              {
                                 break;
                              }
                           }
                           continue;
                        }
                     }
                     §§goto(addr101);
                  }
                  break;
               }
               return null;
            }
            return _loc1_;
         }
         addr27:
         return null;
      }
      
      public function §0";§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§^!U§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§+!z§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!_loc4_)
               {
                  break;
               }
               if(_loc1_.status != §^!U§.§-7§)
               {
                  if(_loc4_)
                  {
                     break;
                  }
               }
            }
            return true;
         }
         return false;
      }
      
      private function updateState() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = null;
         var _loc3_:§1k§ = null;
         §§push(§@!?§);
         if(_loc4_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc4_ || _loc3_)
         {
            §§push(this.§&F§);
            loop0:
            while(true)
            {
               §§push(0);
               addr367:
               while(§§pop() <= §§pop())
               {
                  continue loop0;
               }
               while(true)
               {
                  §§push(§@!?§);
                  while(true)
                  {
                     §§push(§§pop());
                     loop30:
                     while(true)
                     {
                        _loc1_ = §§pop();
                        loop31:
                        while(true)
                        {
                           while(true)
                           {
                              §§push(_loc1_);
                              loop10:
                              while(true)
                              {
                                 if(!_loc5_)
                                 {
                                    §§push(this.§^"$§);
                                    while(true)
                                    {
                                       if(§§pop() != §§pop())
                                       {
                                          if(!(_loc5_ && _loc1_))
                                          {
                                             if(_loc5_)
                                             {
                                                continue loop31;
                                             }
                                             §§push(this.§^"$§);
                                             loop12:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                loop13:
                                                while(_loc4_ || _loc2_)
                                                {
                                                   _loc2_ = §§pop();
                                                   while(true)
                                                   {
                                                      if(!(_loc5_ && this))
                                                      {
                                                         if(!(_loc5_ && _loc2_))
                                                         {
                                                            §§push(this.§&!b§(this.§^"$§,_loc1_));
                                                            loop15:
                                                            while(true)
                                                            {
                                                               if(!_loc5_)
                                                               {
                                                                  if(!(_loc4_ || _loc2_))
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§push(§§pop());
                                                                  loop16:
                                                                  while(!_loc5_)
                                                                  {
                                                                     _loc1_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        addr111:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           addr113:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop15;
                                                                              }
                                                                              continue loop16;
                                                                           }
                                                                           continue loop15;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop10;
                                                               }
                                                               continue loop12;
                                                            }
                                                            while(true)
                                                            {
                                                               §§goto(addr278);
                                                            }
                                                         }
                                                         §§goto(addr308);
                                                      }
                                                      §§goto(addr248);
                                                      if(_loc5_ && _loc1_)
                                                      {
                                                         continue;
                                                      }
                                                      if(!(_loc5_ && _loc2_))
                                                      {
                                                         if(false)
                                                         {
                                                            §§goto(addr111);
                                                         }
                                                         else
                                                         {
                                                            _loc3_ = new §1k§(§1k§.§1g§);
                                                            if(!_loc5_)
                                                            {
                                                               _loc3_.§'4§ = _loc1_;
                                                            }
                                                            addr407:
                                                            _loc3_.§-",§ = _loc2_;
                                                            dispatchEvent(_loc3_);
                                                            addr414:
                                                            if(_loc4_)
                                                            {
                                                               if(_loc4_ || this)
                                                               {
                                                                  if(false)
                                                                  {
                                                                     §§goto(addr407);
                                                                  }
                                                                  §§goto(addr415);
                                                               }
                                                               §§goto(addr414);
                                                            }
                                                            addr410:
                                                            §§goto(addr410);
                                                         }
                                                      }
                                                      §§goto(addr363);
                                                   }
                                                   while(true)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         §§push(§§pop());
                                                         break loop13;
                                                      }
                                                      §§goto(addr307);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      continue loop30;
                                                   }
                                                   _loc1_ = §§pop();
                                                   §§goto(addr262);
                                                }
                                             }
                                          }
                                          §§goto(addr176);
                                       }
                                       §§goto(addr415);
                                       if(_loc5_ && _loc1_)
                                       {
                                          continue;
                                       }
                                       if(§§pop() != §§pop())
                                       {
                                          if(!_loc5_)
                                          {
                                             §§goto(addr74);
                                          }
                                          §§goto(addr86);
                                       }
                                       §§goto(addr415);
                                    }
                                 }
                                 §§goto(addr205);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr262);
      }
      
      private function §^!J§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§[!0§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§<""§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_ && this)
               {
                  addr72:
                  break;
               }
               §§push(_loc1_.isCompleted);
               if(!(_loc4_ || this))
               {
                  return §§pop();
               }
               if(!§§pop())
               {
                  if(_loc4_)
                  {
                     break;
                  }
               }
            }
            return true;
         }
         §§goto(addr72);
         §§push(false);
      }
      
      private function §&!b§(param1:String, param2:String) : String
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:Vector.<§=q§> = null;
         if(!_loc4_)
         {
            §§push(param1);
            if(!(_loc4_ && this))
            {
               if(§§pop() == §;!y§)
               {
                  addr52:
                  _loc3_ = this.§'!v§();
               }
               return param2;
            }
         }
         §§goto(addr52);
      }
      
      private function §'!v§() : Vector.<§=q§>
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§=q§ = null;
         var _loc1_:Vector.<§=q§> = new Vector.<§=q§>();
         §§push(this.§9q§.objects.getObjectCount());
         if(!_loc4_)
         {
            §§push(int(§§pop() - 1));
         }
         var _loc2_:* = §§pop();
         loop0:
         for(; _loc2_ >= 0; if(true)
         {
            continue;
         },§§goto(addr79))
         {
            _loc3_ = §=q§.§0"§(this.§9q§.objects.getObject(_loc2_));
            if(!(_loc4_ && _loc3_))
            {
               §§push(_loc3_.isGround());
               if(_loc5_ || this)
               {
                  §§push(!§§pop());
                  loop1:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop8:
                        while(true)
                        {
                           §§pop();
                           addr150:
                           while(true)
                           {
                              §§push(this.isObjectNeeded(_loc3_));
                              if(!(_loc4_ && _loc2_))
                              {
                                 if(!_loc5_)
                                 {
                                    break;
                                 }
                                 §§push(!§§pop());
                              }
                              if(_loc4_ && _loc3_)
                              {
                              }
                              continue loop8;
                           }
                           continue loop1;
                        }
                        addr149:
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc4_)
                           {
                              while(true)
                              {
                                 _loc1_.push(_loc3_);
                              }
                              addr116:
                           }
                           loop3:
                           while(_loc5_ || this)
                           {
                              while(true)
                              {
                                 this.§9q§.objects.removeObject(_loc3_.getObject(),false,true);
                                 addr88:
                                 while(_loc5_)
                                 {
                                 }
                                 continue loop3;
                              }
                           }
                           §§goto(addr150);
                        }
                        while(true)
                        {
                           §§push(_loc2_);
                           if(!(_loc4_ && _loc1_))
                           {
                              §§push(§§pop() - 1);
                           }
                           _loc2_ = §§pop();
                           if(!_loc4_)
                           {
                              continue loop0;
                           }
                           §§goto(addr88);
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr149);
            }
            §§goto(addr116);
         }
         return _loc1_;
      }
      
      public function isObjectNeeded(param1:§=q§) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§[!0§ = null;
         if(!_loc6_)
         {
            if(param1 != null)
            {
               loop0:
               while(this.§]q§.indexOf(param1) == -1)
               {
                  loop1:
                  while(true)
                  {
                     §§push(param1.isTexture());
                     loop2:
                     while(_loc5_)
                     {
                        §§push(Boolean(§§pop()));
                        loop3:
                        while(true)
                        {
                           §§push(§§pop());
                           loop4:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop5:
                                 while(true)
                                 {
                                    §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       §§push(param1.isGround());
                                       loop7:
                                       while(!_loc6_)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop12:
                                          while(true)
                                          {
                                             if(_loc6_ && param1)
                                             {
                                                continue loop7;
                                             }
                                             §§pop();
                                             loop13:
                                             while(true)
                                             {
                                                if(_loc5_ || param1)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§push(param1.uniqueID == "");
                                                      if(_loc5_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue loop3;
                                                            }
                                                            addr132:
                                                            while(true)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  addr133:
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(true);
                                                                     break loop13;
                                                                  }
                                                                  break loop0;
                                                               }
                                                               addr82:
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  §§push(param1.§9!^§());
                                                                  if(!_loc6_)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                  }
                                                                  addr88:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           while(§§pop())
                                                                           {
                                                                              if(!(_loc6_ && this))
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(_loc5_ || param1)
                                                                                    {
                                                                                       if(!(_loc6_ && this))
                                                                                       {
                                                                                          §§push(true);
                                                                                          continue loop12;
                                                                                       }
                                                                                       continue loop0;
                                                                                    }
                                                                                    continue loop6;
                                                                                 }
                                                                                 continue loop13;
                                                                              }
                                                                              if(!(_loc6_ && _loc2_))
                                                                              {
                                                                                 if(!_loc5_)
                                                                                 {
                                                                                    return false;
                                                                                 }
                                                                                 addr175:
                                                                                 addr176:
                                                                                 if(true)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop10;
                                                                              }
                                                                              addr171:
                                                                              while(true)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                           }
                                                                           var _loc3_:int = 0;
                                                                           var _loc4_:* = this.§<""§;
                                                                        }
                                                                        else
                                                                        {
                                                                           addr40:
                                                                        }
                                                                        continue loop12;
                                                                        addr223:
                                                                        for each(_loc2_ in _loc4_)
                                                                        {
                                                                           if(!(_loc6_ && param1))
                                                                           {
                                                                              §§push(_loc2_.isObjectNeeded(param1));
                                                                              if(_loc5_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    if(_loc6_ && this)
                                                                                    {
                                                                                    }
                                                                                    §§goto(addr222);
                                                                                 }
                                                                                 §§goto(addr223);
                                                                              }
                                                                              §§goto(addr222);
                                                                           }
                                                                           addr222:
                                                                           return true;
                                                                        }
                                                                        return false;
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop4;
                                                               }
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      continue loop12;
                                                   }
                                                   §§goto(addr133);
                                                }
                                                §§goto(addr82);
                                             }
                                             if(!(_loc5_ || param1))
                                             {
                                                continue loop2;
                                             }
                                             if(!(_loc6_ && this))
                                             {
                                                return §§pop();
                                             }
                                             §§goto(addr176);
                                          }
                                          if(!_loc5_)
                                          {
                                             §§goto(addr88);
                                          }
                                          return §§pop();
                                       }
                                       continue loop5;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr132);
                              }
                           }
                        }
                     }
                     §§goto(addr170);
                  }
               }
               addr170:
               return §§pop();
               §§push(true);
            }
            §§goto(addr175);
         }
         §§goto(addr171);
      }
      
      public function §'!i§() : int
      {
         return this.§02§;
      }
      
      public function §8!K§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§+!z§[0].startCheck(this.§9q§.§1!V§);
            do
            {
               this.updateState();
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      public function §'I§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§;!h§();
         }
      }
      
      private function §;!h§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§7z§ = null;
         if(!_loc4_)
         {
            §§push(this.§=S§);
            if(_loc5_)
            {
               if(§§pop())
               {
                  if(_loc5_ || _loc2_)
                  {
                     addr46:
                     this.§=S§.visible = false;
                  }
               }
               for each(_loc1_ in this.§7! §)
               {
                  if(!_loc4_)
                  {
                     _loc1_.activate(this.§9q§);
                  }
               }
               return;
            }
         }
         §§goto(addr46);
      }
      
      public function get §-!$§() : String
      {
         return this.§^"$§;
      }
      
      public function §5",§() : Vector.<String>
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc2_:§[!0§ = null;
         var _loc3_:§^!U§ = null;
         var _loc4_:* = null;
         var _loc1_:Vector.<String> = new Vector.<String>();
         var _loc5_:int = 0;
         var _loc6_:* = this.§<""§;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc6_,_loc5_));
            if(!_loc7_)
            {
               if(!§§pop())
               {
                  if(!(_loc7_ && this))
                  {
                     if(!_loc7_)
                     {
                        if(_loc8_)
                        {
                           _loc5_ = 0;
                           addr164:
                           if(_loc8_ || this)
                           {
                              addr122:
                              _loc6_ = this.§+!z§;
                              §§push(§§hasnext(_loc6_,_loc5_));
                              break;
                           }
                        }
                        return _loc1_;
                     }
                     §§goto(addr122);
                  }
                  addr163:
                  §§goto(addr164);
               }
               else
               {
                  _loc2_ = §§nextvalue(_loc5_,_loc6_);
                  if(!_loc7_)
                  {
                     §§push(_loc2_.description);
                     if(_loc8_)
                     {
                        §§push(§§pop());
                     }
                     loop1:
                     while(true)
                     {
                        _loc4_ = §§pop();
                        loop2:
                        while(true)
                        {
                           loop3:
                           while(true)
                           {
                              if(!_loc2_.isCompleted)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    _loc1_.push(_loc4_);
                                    if(_loc8_)
                                    {
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          break;
                                       }
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          continue loop6;
                                       }
                                       addr88:
                                    }
                                 }
                                 while(false)
                                 {
                                    continue loop3;
                                 }
                                 continue loop0;
                                 addr61:
                              }
                              while(_loc8_)
                              {
                                 continue loop1;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  §§goto(addr61);
               }
            }
            break;
         }
         while(§§pop())
         {
            _loc3_ = §§nextvalue(_loc5_,_loc6_);
            if(_loc8_)
            {
               _loc1_.push((_loc3_.status == §^!U§.§-7§ ? §<!j§ : "") + _loc3_.description);
            }
            §§goto(addr122);
         }
         §§goto(addr163);
      }
      
      public function get name() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.mName);
            loop0:
            while(true)
            {
               §§push(!§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        addr94:
                        while(true)
                        {
                           §§push(this.mName);
                           addr57:
                           loop4:
                           while(true)
                           {
                              §§push(§§pop().length == 0);
                              if(_loc2_)
                              {
                                 break;
                              }
                              if(!(_loc2_ && _loc1_))
                              {
                                 while(true)
                                 {
                                    §§push(this.mName);
                                    if(!(_loc2_ && _loc1_))
                                    {
                                       continue loop0;
                                    }
                                    continue loop4;
                                 }
                              }
                              §§goto(addr24);
                           }
                           continue loop2;
                        }
                     }
                  }
                  while(true)
                  {
                     if(§§pop())
                     {
                        if(_loc1_)
                        {
                           if(!_loc2_)
                           {
                              return "Sandbox";
                           }
                           §§goto(addr94);
                        }
                        else
                        {
                           while(true)
                           {
                              §§goto(addr24);
                           }
                           addr87:
                        }
                        §§goto(addr57);
                     }
                     addr24:
                     addr51:
                     continue loop1;
                     return §§pop();
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr87);
      }
      
      public function getHUDs() : Vector.<DisplayObject>
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§^!U§ = null;
         var _loc3_:§[!0§ = null;
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         if(!_loc7_)
         {
            if(this.§5!1§)
            {
               while(true)
               {
                  _loc1_.push(this.§5!1§);
                  addr89:
                  while(true)
                  {
                  }
               }
               addr85:
            }
            loop1:
            while(true)
            {
               §§push(this.§^"$§);
               loop2:
               while(true)
               {
                  §§push(§;!y§);
                  loop3:
                  while(true)
                  {
                     §§push(§§pop() == §§pop());
                     loop4:
                     while(true)
                     {
                        if(!§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              §§pop();
                              addr81:
                              while(true)
                              {
                                 §§push(this.§^"$§);
                                 if(_loc7_ && _loc1_)
                                 {
                                    break;
                                 }
                                 §§push(§@!?§);
                                 if(_loc7_)
                                 {
                                    continue loop3;
                                 }
                                 §§push(§§pop() == §§pop());
                                 if(!_loc6_)
                                 {
                                    continue loop5;
                                 }
                                 if(_loc7_ && _loc2_)
                                 {
                                    continue loop4;
                                 }
                              }
                              continue loop2;
                           }
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(!_loc7_)
                              {
                                 if(_loc6_ || this)
                                 {
                                    if(!_loc7_)
                                    {
                                       return _loc1_;
                                    }
                                    §§goto(addr85);
                                 }
                                 else
                                 {
                                    §§goto(addr81);
                                 }
                              }
                              else
                              {
                                 if(!_loc6_)
                                 {
                                    break;
                                 }
                                 if(false)
                                 {
                                    continue loop1;
                                 }
                              }
                           }
                           var _loc4_:int = 0;
                           var _loc5_:* = this.§+!z§;
                           addr126:
                           §§push(§§hasnext(_loc5_,_loc4_));
                           if(_loc6_ || _loc2_)
                           {
                              if(§§pop())
                              {
                                 _loc2_ = §§nextvalue(_loc4_,_loc5_);
                                 if(!_loc7_)
                                 {
                                    if(_loc2_.status == §^!U§.§5!k§)
                                    {
                                       addr120:
                                       _loc1_ = _loc1_.concat(_loc2_.getHUDs());
                                    }
                                    §§goto(addr126);
                                 }
                                 §§goto(addr120);
                              }
                              if(!_loc7_)
                              {
                                 if(!_loc7_)
                                 {
                                    _loc4_ = 0;
                                 }
                                 _loc5_ = this.§<""§;
                                 addr196:
                                 for each(_loc3_ in _loc5_)
                                 {
                                    _loc1_ = _loc1_.concat(_loc3_.getHUDs());
                                    if(_loc6_)
                                    {
                                       §§push(_loc3_ is §#!p§);
                                       if(_loc6_)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc7_)
                                             {
                                                §§pop();
                                                §§goto(addr195);
                                             }
                                          }
                                          if(!§§pop())
                                          {
                                             §§goto(addr196);
                                          }
                                          §§goto(addr195);
                                       }
                                       §§goto(addr193);
                                    }
                                    §§goto(addr195);
                                 }
                              }
                              addr195:
                              if(_loc6_)
                              {
                                 §§push(_loc3_.isCompleted);
                                 if(!(_loc7_ && this))
                                 {
                                    addr193:
                                    §§push(!§§pop());
                                 }
                              }
                              return _loc1_;
                           }
                           §§goto(addr196);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§[!0§ = null;
         var _loc3_:* = this.§<""§;
         for each(_loc1_ in _loc3_)
         {
            if(!(_loc4_ && _loc3_))
            {
               _loc1_.dispose();
            }
         }
      }
      
      public function onPhysicsEnabled() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§[!0§ = null;
         if(!_loc5_)
         {
            if(this.§^"$§ != §;!y§)
            {
               addr25:
               for each(_loc1_ in this.§<""§)
               {
                  if(_loc4_)
                  {
                     _loc1_.onPhysicsEnabled();
                  }
               }
               if(!_loc5_)
               {
                  this.§;!h§();
               }
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function §+!d§() : Vector.<§7z§>
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§7z§ = null;
         var _loc1_:Vector.<§7z§> = new Vector.<§7z§>();
         for each(_loc2_ in this.§7! §)
         {
            if(!_loc5_)
            {
               if(!_loc2_.§%!0§)
               {
                  continue;
               }
               if(_loc5_ && this)
               {
                  continue;
               }
            }
            _loc1_.push(_loc2_);
         }
         return _loc1_;
      }
      
      public function §3!g§() : Vector.<§7z§>
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            if(!this.§7! §)
            {
               if(!(_loc1_ && this))
               {
                  return null;
               }
            }
         }
         return this.§7! §.concat();
      }
      
      public function §8D§(param1:Boolean = true) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§[!0§ = null;
         for each(_loc2_ in this.§<""§)
         {
            if(!_loc6_)
            {
               if(!(_loc2_ is §#!p§))
               {
                  continue;
               }
               if(!_loc5_)
               {
                  continue;
               }
            }
            (_loc2_ as §#!p§).§64§(param1);
         }
      }
      
      public function getNextInstruction() : DisplayObject
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§[!0§ = null;
         for each(_loc1_ in this.§<""§)
         {
            if(!(_loc4_ && this))
            {
               if(!_loc1_.isCompleted)
               {
                  return _loc1_.getNextInstruction();
               }
               if(_loc4_)
               {
               }
            }
         }
         return null;
      }
      
      public function §?K§(param1:§=q§) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §§push(this.§+"6§);
            if(_loc3_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr43:
                     §§push(this.§+"6§.§?K§(param1));
                     if(_loc3_ || this)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr63:
                     return true;
                  }
                  return §§pop();
               }
               §§goto(addr63);
            }
            §§goto(addr43);
         }
         §§goto(addr63);
      }
      
      public function get §+"6§() : §#!p§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§[!0§ = null;
         var _loc2_:int = 0;
         var _loc3_:* = this.§<""§;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(!_loc5_)
               {
                  break;
               }
               if(_loc1_ is §#!p§)
               {
                  if(_loc5_ || this)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc1_ as §#!p§;
      }
      
      public function get §0" §() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§+"6§);
            if(!(_loc1_ && _loc1_))
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     §§goto(addr51);
                  }
               }
               §§push(this.§+"6§);
            }
            return §§pop().isCompleted;
         }
         addr51:
         return true;
      }
      
      public function §2"0§() : Rectangle
      {
         return this.§4!7§;
      }
      
      public function §;!J§() : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:§=q§ = null;
         var _loc3_:§[!0§ = null;
         var _loc1_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = this.§]q§;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc5_,_loc4_));
            if(_loc6_)
            {
               if(!§§pop())
               {
                  if(!(_loc7_ && _loc1_))
                  {
                     if(!(_loc7_ && _loc2_))
                     {
                        if(_loc6_ || _loc3_)
                        {
                           §§push(0);
                           if(_loc6_)
                           {
                              _loc4_ = §§pop();
                              if(!(_loc7_ && _loc1_))
                              {
                                 _loc5_ = this.§<""§;
                                 while(true)
                                 {
                                    §§push(§§hasnext(_loc5_,_loc4_));
                                    break loop0;
                                 }
                                 addr188:
                                 §§push(_loc1_);
                                 addr187:
                                 addr186:
                                 addr184:
                              }
                              §§goto(addr187);
                           }
                           return §§pop();
                        }
                     }
                     §§goto(addr188);
                  }
                  §§goto(addr186);
               }
               else
               {
                  _loc2_ = §§nextvalue(_loc4_,_loc5_);
                  if(!(_loc7_ && this))
                  {
                     §§push(_loc2_.§@!i§());
                     if(!(_loc7_ && this))
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc6_)
                        {
                           addr56:
                           if(§§pop())
                           {
                              if(!(_loc7_ && _loc3_))
                              {
                                 addr65:
                                 §§pop();
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    addr73:
                                    §§push(_loc2_.§8!w§());
                                    if(!(_loc7_ && _loc1_))
                                    {
                                       addr83:
                                       if(§§pop())
                                       {
                                          continue;
                                       }
                                       if(!(_loc6_ || _loc2_))
                                       {
                                          continue;
                                       }
                                    }
                                    §§goto(addr83);
                                 }
                                 _loc1_++;
                                 continue;
                              }
                           }
                           §§goto(addr83);
                        }
                        §§goto(addr65);
                     }
                     §§goto(addr56);
                  }
                  §§goto(addr73);
               }
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc3_ = §§nextvalue(_loc4_,_loc5_);
               if(!_loc7_)
               {
                  if(_loc3_ is §#!p§)
                  {
                     if(_loc6_ || _loc1_)
                     {
                        §§push(_loc1_);
                        if(_loc6_)
                        {
                           §§push(int(§§pop() + (_loc3_ as §#!p§).§=<§()));
                        }
                        _loc1_ = §§pop();
                     }
                  }
               }
               continue;
            }
            §§goto(addr188);
         }
      }
   }
}
