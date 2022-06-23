package §6!@§
{
   import §%$§.§"r§;
   import §%q§.ParticleDesignerPS;
   import §%x§.§#;§;
   import §%x§.§^F§;
   import §&p§.§'_§;
   import §-!0§.§'!3§;
   import §-!0§.§9X§;
   import §-!0§.§[!-§;
   import §;!'§.ParticleManager;
   import §?^§.§8!?§;
   import §?^§.DisplayObject;
   import §?^§.Sprite;
   import §[F§.§`m§;
   import each.Texture;
   import starling.events.Event;
   
   public class §6h§
   {
       
      
      private var §3^§:int;
      
      private var §#6§:int;
      
      private var §>=§:Number;
      
      private var §7#§:Boolean;
      
      private var §0W§:Sprite;
      
      private var §;A§:Array;
      
      private var §?z§:Boolean = true;
      
      private var § 7§:§'!3§;
      
      private var §1,§:Sprite;
      
      private var §=!E§:Sprite;
      
      public function §6h§(param1:§"r§, param2:Sprite, param3:§'!3§, param4:Number)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc6_:Texture = null;
         var _loc13_:§9X§ = null;
         this.§;A§ = [];
         super();
         if(!(_loc15_ && param2))
         {
            this.§ 7§ = param3;
            if(_loc14_ || param3)
            {
               addr44:
               this.§0W§ = param2;
               if(!(_loc15_ && param2))
               {
                  this.§>=§ = param1.§4p§;
               }
            }
            this.§7#§ = param1.§[!C§;
            var _loc5_:* = Number(1);
            if(_loc14_ || param2)
            {
               §§push(param1.§=!%§);
               if(_loc14_ || param2)
               {
                  if(§§pop() != 0)
                  {
                     if(_loc14_ || param2)
                     {
                        §§push(param1.§=!%§);
                        if(_loc14_ || param1)
                        {
                           addr99:
                           §§push(Number(§§pop()));
                           if(_loc14_)
                           {
                              addr102:
                              _loc5_ = §§pop();
                              §§push(Number(0));
                           }
                           var _loc7_:* = §§pop();
                           var _loc8_:* = Number(0);
                           var _loc9_:* = Number(1);
                           var _loc10_:DisplayObject;
                           if(!(_loc10_ = §[!-§.§["§(param1.mName,this.§ 7§,param1.§>&§)))
                           {
                              if(_loc14_ || param3)
                              {
                                 §§push((_loc13_ = param3.§4K§(param1.mName)).pivotY);
                                 if(_loc14_ || param2)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc14_ || param2)
                                    {
                                       _loc7_ = §§pop();
                                       if(!_loc15_)
                                       {
                                          if(!this.§7#§)
                                          {
                                             if(!_loc15_)
                                             {
                                                addr165:
                                                _loc8_ = Number(_loc13_.pivotX);
                                                addr162:
                                             }
                                          }
                                          _loc6_ = _loc13_.texture;
                                          if(_loc14_ || param1)
                                          {
                                             §§push(this);
                                             §§push(_loc13_.width);
                                             if(!_loc15_)
                                             {
                                                §§push(§§pop() * _loc5_);
                                                if(_loc14_)
                                                {
                                                   addr186:
                                                   §§push(§§pop() - 2);
                                                }
                                                §§pop().§3^§ = §§pop();
                                                §§push(_loc13_.scale);
                                                if(!(_loc15_ && param1))
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                _loc9_ = §§pop();
                                                if(!(_loc15_ && this))
                                                {
                                                   addr259:
                                                   if(this.§3^§ <= 0)
                                                   {
                                                      throw new Error("Invalid texture for background layer: " + param1.mName);
                                                   }
                                                }
                                                this.§3^§ = Math.round(this.§3^§);
                                                addr283:
                                                if(param1.§"V§)
                                                {
                                                   if(!_loc15_)
                                                   {
                                                      §§push(this);
                                                      §§push(2);
                                                      §§push(§#;§.§9!7§);
                                                      if(!(_loc15_ && param3))
                                                      {
                                                         §§push(1.5);
                                                         if(_loc14_ || param2)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc15_ && param1))
                                                            {
                                                               addr329:
                                                               §§push(§§pop() / (this.§3^§ * param4));
                                                            }
                                                            §§pop().§#6§ = §§pop() + §§pop();
                                                            addr336:
                                                            var _loc11_:Sprite = new Sprite();
                                                            var _loc12_:int = 0;
                                                            while(true)
                                                            {
                                                               if(_loc12_ >= this.§#6§)
                                                               {
                                                                  _loc11_.flatten();
                                                                  §§push(this.§0W§);
                                                                  if(!(_loc15_ && this))
                                                                  {
                                                                     §§pop().addChild(_loc11_);
                                                                     §§push(this.§1,§);
                                                                     if(!_loc15_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           §§push(this.§1,§);
                                                                           if(!_loc15_)
                                                                           {
                                                                              if(§§pop().numChildren > 0)
                                                                              {
                                                                                 §§push(this.§0W§);
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    §§pop().addChild(this.§1,§);
                                                                                    break;
                                                                                 }
                                                                                 addr593:
                                                                                 §§pop().addChildAt(this.§=!E§,0);
                                                                                 addr610:
                                                                                 this.§0W§.addEventListener(Event.ADDED_TO_STAGE,this.§6!4§);
                                                                                 return;
                                                                                 addr608:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr555:
                                                                                 this.§1,§.dispose();
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    addr558:
                                                                                    §§push(this.§=!E§);
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc14_)
                                                                                          {
                                                                                             addr565:
                                                                                             §§push(this.§=!E§);
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                if(§§pop().numChildren > 0)
                                                                                                {
                                                                                                   if(_loc14_ || this)
                                                                                                   {
                                                                                                      addr589:
                                                                                                      §§push(this.§0W§);
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         §§goto(addr593);
                                                                                                      }
                                                                                                      §§goto(addr610);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr600:
                                                                                                   this.§=!E§.dispose();
                                                                                                   if(_loc14_ || param2)
                                                                                                   {
                                                                                                      §§goto(addr608);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr600);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr593);
                                                                                    }
                                                                                    §§goto(addr600);
                                                                                 }
                                                                                 §§goto(addr589);
                                                                              }
                                                                              §§goto(addr593);
                                                                           }
                                                                           §§goto(addr555);
                                                                        }
                                                                        §§goto(addr558);
                                                                     }
                                                                     §§goto(addr555);
                                                                  }
                                                                  §§goto(addr593);
                                                               }
                                                               else
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     if(_loc14_)
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(_loc14_ || param3)
                                                                           {
                                                                              _loc10_ = §[!-§.§["§(param1.mName,this.§ 7§,param1.§>&§);
                                                                              addr376:
                                                                              §§push(_loc10_);
                                                                              §§push(_loc12_ - 1);
                                                                              if(_loc14_ || param2)
                                                                              {
                                                                                 §§push(§§pop() * this.§3^§);
                                                                                 if(!(_loc15_ && param3))
                                                                                 {
                                                                                    §§push(_loc8_);
                                                                                    if(!(_loc15_ && this))
                                                                                    {
                                                                                       §§push(-§§pop());
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          addr407:
                                                                                          §§push(_loc5_);
                                                                                          if(_loc14_ || param3)
                                                                                          {
                                                                                             addr427:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!(_loc15_ && param2))
                                                                                             {
                                                                                                addr425:
                                                                                                §§push(§§pop() + param1.§"z§);
                                                                                             }
                                                                                             §§pop().x = §§pop() + §§pop();
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                addr430:
                                                                                                §§push(_loc10_);
                                                                                                §§push(_loc7_);
                                                                                                if(!_loc15_)
                                                                                                {
                                                                                                   §§push(-§§pop());
                                                                                                   if(!(_loc15_ && param2))
                                                                                                   {
                                                                                                      §§push(_loc5_);
                                                                                                      if(!(_loc15_ && this))
                                                                                                      {
                                                                                                         addr456:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc14_)
                                                                                                         {
                                                                                                            addr453:
                                                                                                            §§push(param1.§,k§);
                                                                                                         }
                                                                                                         §§pop().y = §§pop();
                                                                                                         if(_loc14_)
                                                                                                         {
                                                                                                            §§push(_loc10_);
                                                                                                            §§push(_loc5_);
                                                                                                            if(_loc14_ || param2)
                                                                                                            {
                                                                                                               §§push(§§pop() * _loc9_);
                                                                                                            }
                                                                                                            §§pop().scaleX = §§pop();
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(_loc10_);
                                                                                                            §§push(_loc5_);
                                                                                                            if(_loc14_ || param3)
                                                                                                            {
                                                                                                               §§push(§§pop() * _loc9_);
                                                                                                            }
                                                                                                            §§pop().scaleY = §§pop();
                                                                                                            if(!_loc14_)
                                                                                                            {
                                                                                                               §§goto(addr565);
                                                                                                            }
                                                                                                         }
                                                                                                         §§push(this);
                                                                                                         §§push(param1);
                                                                                                         §§push(_loc12_ - 1);
                                                                                                         if(_loc14_ || this)
                                                                                                         {
                                                                                                            §§push(§§pop() * this.§3^§);
                                                                                                         }
                                                                                                         §§pop().§use §(§§pop(),§§pop());
                                                                                                         _loc11_.addChild(_loc10_);
                                                                                                         _loc10_ = null;
                                                                                                         if(!(_loc15_ && this))
                                                                                                         {
                                                                                                            _loc12_++;
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                   }
                                                                                                   §§goto(addr456);
                                                                                                }
                                                                                                §§goto(addr453);
                                                                                             }
                                                                                             §§goto(addr456);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr425);
                                                                                    }
                                                                                    §§goto(addr407);
                                                                                 }
                                                                              }
                                                                              §§goto(addr427);
                                                                           }
                                                                           §§goto(addr430);
                                                                        }
                                                                        else
                                                                        {
                                                                           _loc10_ = new §8!?§(_loc6_,false,param1.§>&§);
                                                                           §§goto(addr376);
                                                                        }
                                                                     }
                                                                     §§goto(addr456);
                                                                  }
                                                                  §§goto(addr376);
                                                               }
                                                            }
                                                            §§goto(addr558);
                                                         }
                                                      }
                                                      §§goto(addr329);
                                                   }
                                                }
                                                else
                                                {
                                                   this.§#6§ = 1;
                                                }
                                                §§goto(addr336);
                                             }
                                             §§goto(addr186);
                                          }
                                          §§goto(addr283);
                                       }
                                       §§goto(addr162);
                                    }
                                 }
                                 §§goto(addr165);
                              }
                           }
                           else
                           {
                              §§push(this);
                              §§push(_loc10_.width);
                              if(!_loc15_)
                              {
                                 §§push(§§pop() * _loc5_);
                                 if(_loc14_ || this)
                                 {
                                    addr222:
                                    §§push(§§pop() - 2);
                                 }
                                 §§pop().§3^§ = §§pop();
                                 if(!_loc15_)
                                 {
                                    §§push(Number(_loc10_.§4!5§.bottom));
                                    if(_loc14_)
                                    {
                                       _loc7_ = §§pop();
                                       if(!(_loc15_ && this))
                                       {
                                          addr241:
                                          §§push((_loc10_.§4!5§.left + _loc10_.§4!5§.right) / 2);
                                          if(_loc14_ || param1)
                                          {
                                             addr257:
                                             §§push(Number(§§pop()));
                                          }
                                          _loc8_ = §§pop();
                                       }
                                       §§goto(addr259);
                                    }
                                    §§goto(addr257);
                                 }
                                 §§goto(addr241);
                              }
                              §§goto(addr222);
                           }
                           §§goto(addr259);
                        }
                     }
                  }
                  §§goto(addr102);
               }
               §§goto(addr99);
            }
            §§goto(addr102);
         }
         §§goto(addr44);
      }
      
      public function get §#!5§() : Boolean
      {
         return this.§7#§;
      }
      
      private function §use §(param1:§"r§, param2:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:Object = null;
         var _loc4_:§^F§ = null;
         var _loc5_:* = 0;
         for each(_loc3_ in param1.§;A§)
         {
            §§push(Boolean(_loc4_ = ParticleManager.§2]§(_loc3_.id,this.§ 7§)));
            if(!_loc10_)
            {
               if(§§pop())
               {
                  if(!(_loc10_ && _loc3_))
                  {
                     addr58:
                     §§pop();
                     if(_loc9_)
                     {
                        addr65:
                        if(_loc4_.§,!0§ > 0)
                        {
                           _loc4_.x = param2 + _loc3_.x + param1.§"z§;
                           addr75:
                           _loc4_.y = _loc3_.y;
                           _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
                           if(!(_loc10_ && _loc3_))
                           {
                              _loc4_.rotation = _loc3_.rotation;
                              if(!_loc10_)
                              {
                                 _loc4_.alpha = _loc3_.alpha;
                                 if(_loc9_ || param1)
                                 {
                                    _loc4_.start();
                                    §'_§.§6!"§.add(_loc4_);
                                    this.§;A§.push(_loc4_);
                                    if(_loc3_.isBehindGraphic)
                                    {
                                       if(!_loc10_)
                                       {
                                          §§push(this.§=!E§);
                                          if(!_loc10_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(!(_loc10_ && _loc3_))
                                                {
                                                   this.§=!E§ = new Sprite();
                                                }
                                                else
                                                {
                                                   addr166:
                                                   this.§1,§ = new Sprite();
                                                   if(_loc10_)
                                                   {
                                                      continue;
                                                   }
                                                   addr174:
                                                   this.§1,§.addChild(_loc4_);
                                                   addr172:
                                                   if(_loc10_ && this)
                                                   {
                                                      continue;
                                                   }
                                                   addr183:
                                                   §§push(0);
                                                   if(_loc9_)
                                                   {
                                                      _loc5_ = §§pop();
                                                      if(!_loc10_)
                                                      {
                                                         addr189:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_);
                                                         }
                                                         addr213:
                                                         continue;
                                                         addr209:
                                                      }
                                                      while(true)
                                                      {
                                                         _loc5_++;
                                                         if(_loc10_)
                                                         {
                                                            break;
                                                         }
                                                         §§goto(addr209);
                                                      }
                                                      addr223:
                                                      _loc4_.dispose();
                                                      addr206:
                                                      continue;
                                                      addr206:
                                                   }
                                                   while(true)
                                                   {
                                                      if(§§pop() >= _loc3_.fastForwardsAfterAdd)
                                                      {
                                                         §§goto(addr213);
                                                      }
                                                      else
                                                      {
                                                         _loc4_.§[!+§(1 / 20);
                                                         §§goto(addr206);
                                                      }
                                                   }
                                                }
                                                §§goto(addr183);
                                             }
                                             §§push(this.§=!E§);
                                          }
                                          §§pop().addChild(_loc4_);
                                          if(!_loc10_)
                                          {
                                             §§goto(addr183);
                                          }
                                       }
                                       §§goto(addr189);
                                    }
                                    else
                                    {
                                       §§push(this.§1,§);
                                       if(_loc9_)
                                       {
                                          if(!§§pop())
                                          {
                                             §§goto(addr166);
                                          }
                                          §§goto(addr172);
                                       }
                                    }
                                    §§goto(addr174);
                                 }
                                 §§goto(addr189);
                              }
                              §§goto(addr183);
                           }
                           §§goto(addr206);
                        }
                        else
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                           if(!(_loc9_ || this))
                           {
                              continue;
                           }
                        }
                        §§goto(addr223);
                     }
                     §§goto(addr75);
                  }
               }
               §§goto(addr65);
            }
            §§goto(addr58);
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:ParticleDesignerPS = null;
         if(!(_loc5_ && _loc1_))
         {
            §§push(this.§0W§);
            if(_loc4_)
            {
               §§pop().§+!;§(0,-1,true);
               if(_loc4_ || _loc3_)
               {
                  addr43:
                  this.§0W§.removeEventListener(Event.ADDED_TO_STAGE,this.§6!4§);
               }
               var _loc2_:int = 0;
               for each(_loc1_ in this.§;A§)
               {
                  if(!(_loc5_ && _loc1_))
                  {
                     §'_§.§6!"§.§[D§(_loc1_);
                     if(_loc4_ || _loc2_)
                     {
                        _loc1_.dispose();
                     }
                  }
               }
               if(!(_loc5_ && this))
               {
                  this.§;A§ = [];
                  if(!_loc5_)
                  {
                     this.§=!E§ = null;
                     if(_loc4_)
                     {
                        this.§1,§ = null;
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      private function §6!4§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§'-§();
         }
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§>=§);
         if(_loc5_ || this)
         {
            §§push(§§pop() * param1);
            if(!(_loc4_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && param2))
         {
            §§push(this.§0W§);
            if(_loc5_ || _loc3_)
            {
               §§push(_loc3_);
               if(!(_loc4_ && param2))
               {
                  §§push(-§§pop());
                  if(_loc5_ || _loc3_)
                  {
                     §§pop().x = §§pop();
                     if(_loc5_ || param2)
                     {
                        addr99:
                        §§push(this.§0W§);
                        §§push(param2);
                        if(_loc5_ || param2)
                        {
                           addr108:
                           §§pop().y = -§§pop();
                           if(!_loc4_)
                           {
                              this.§4!"§();
                           }
                        }
                        §§goto(addr108);
                     }
                     return;
                  }
               }
               §§goto(addr108);
            }
         }
         §§goto(addr99);
      }
      
      private function §'-§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:ParticleDesignerPS = null;
         if(_loc4_)
         {
            §§push(this.§?z§);
            if(!(_loc5_ && _loc2_))
            {
               §§push(!§§pop());
               if(!_loc5_)
               {
                  addr33:
                  if(!§§pop())
                  {
                     if(!_loc5_)
                     {
                        §§pop();
                        if(!_loc5_)
                        {
                           §§goto(addr54);
                        }
                        return;
                     }
                  }
               }
               addr54:
               if(!this.§0W§.stage)
               {
                  if(!(_loc4_ || this))
                  {
                     §§goto(addr63);
                  }
               }
               §§goto(addr63);
            }
            §§goto(addr33);
         }
         addr63:
         for each(_loc1_ in this.§;A§)
         {
            if(!(_loc5_ && this))
            {
               §'_§.§6!"§.add(_loc1_);
               if(!(_loc5_ && _loc1_))
               {
                  _loc1_.visible = true;
               }
            }
         }
      }
      
      private function § P§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:ParticleDesignerPS = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§;A§)
         {
            if(!(_loc4_ && _loc2_))
            {
               §'_§.§6!"§.§[D§(_loc1_);
               if(!_loc4_)
               {
                  _loc1_.visible = false;
               }
            }
         }
      }
      
      public function §#,§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() == this.§?z§)
               {
                  §§goto(addr34);
               }
               else
               {
                  this.§?z§ = param1;
                  §§push(this.§?z§);
               }
            }
            if(§§pop())
            {
               this.§'-§();
               if(_loc3_ && _loc2_)
               {
               }
            }
            else
            {
               this.§ P§();
            }
            return;
         }
         addr34:
      }
      
      private function §4!"§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§#6§ == 1);
            if(_loc1_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§pop();
                     §§goto(addr70);
                  }
               }
            }
            if(§§pop())
            {
               if(!(_loc2_ && _loc2_))
               {
                  return;
               }
            }
         }
         addr70:
         if(!_loc2_)
         {
            §§push(this.§;A§.length > 0);
         }
         do
         {
            §§push(§`m§.§0!6§);
            if(_loc1_ || _loc1_)
            {
               §§push(this.§0W§.x - this.§3^§);
               if(!_loc2_)
               {
                  §§push(§§pop() * §`m§.§;`§);
               }
               §§push(§§pop() + §§pop());
            }
            if(§§pop() <= 0)
            {
               if(!(_loc2_ && _loc2_))
               {
                  break;
               }
               §§goto(addr130);
            }
            this.§0W§.x -= this.§3^§;
         }
         while(!(_loc2_ && this));
         
         this.§#U§();
         addr130:
      }
      
      private function §#U§() : void
      {
      }
   }
}
