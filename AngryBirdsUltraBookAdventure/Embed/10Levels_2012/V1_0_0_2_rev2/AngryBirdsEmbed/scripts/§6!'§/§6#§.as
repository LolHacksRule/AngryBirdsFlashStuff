package §6!'§
{
   import §#!;§.§;T§;
   import §'k§.§ >§;
   import §'k§.§2v§;
   import §'k§.§<f§;
   import §5!%§.§4D§;
   import §5!@§.Texture;
   import §9W§.§6!0§;
   import §9W§.DisplayObject;
   import §9W§.Sprite;
   import §=s§.ParticleDesignerPS;
   import §?b§.§,S§;
   import §?b§.§7!,§;
   import §@!!§.§=_§;
   import §`>§.ParticleManager;
   import starling.events.Event;
   
   public class §6#§
   {
       
      
      private var §'I§:int;
      
      private var §catch§:int;
      
      private var §[!@§:Number;
      
      private var §#"§:Boolean;
      
      private var §[0§:Sprite;
      
      private var §4!B§:Array;
      
      private var §'!5§:Boolean = true;
      
      private var §`!8§:§ >§;
      
      private var §@8§:Sprite;
      
      private var §7!8§:Sprite;
      
      public function §6#§(param1:§4D§, param2:Sprite, param3:§ >§, param4:Number)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc6_:Texture = null;
         var _loc13_:§2v§ = null;
         this.§4!B§ = [];
         super();
         if(!(_loc15_ && param2))
         {
            this.§`!8§ = param3;
            if(_loc14_ || param3)
            {
               addr44:
               this.§[0§ = param2;
               if(!(_loc15_ && param2))
               {
                  this.§[!@§ = param1.§6;§;
               }
            }
            this.§#"§ = param1.§[p§;
            var _loc5_:* = Number(1);
            if(_loc14_ || param2)
            {
               §§push(param1.§!!%§);
               if(_loc14_ || param2)
               {
                  if(§§pop() != 0)
                  {
                     if(_loc14_ || param2)
                     {
                        §§push(param1.§!!%§);
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
                           if(!(_loc10_ = §<f§.§;!2§(param1.mName,this.§`!8§,param1.§&%§)))
                           {
                              if(_loc14_ || param3)
                              {
                                 §§push((_loc13_ = param3.§8!<§(param1.mName)).pivotY);
                                 if(_loc14_ || param2)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc14_ || param2)
                                    {
                                       _loc7_ = §§pop();
                                       if(!_loc15_)
                                       {
                                          if(!this.§#"§)
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
                                                §§pop().§'I§ = §§pop();
                                                §§push(_loc13_.scale);
                                                if(!(_loc15_ && param1))
                                                {
                                                   §§push(Number(§§pop()));
                                                }
                                                _loc9_ = §§pop();
                                                if(!(_loc15_ && this))
                                                {
                                                   addr259:
                                                   if(this.§'I§ <= 0)
                                                   {
                                                      throw new Error("Invalid texture for background layer: " + param1.mName);
                                                   }
                                                }
                                                this.§'I§ = Math.round(this.§'I§);
                                                addr283:
                                                if(param1.§^!?§)
                                                {
                                                   if(!_loc15_)
                                                   {
                                                      §§push(this);
                                                      §§push(2);
                                                      §§push(§7!,§.§[>§);
                                                      if(!(_loc15_ && param3))
                                                      {
                                                         §§push(1.5);
                                                         if(_loc14_ || param2)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc15_ && param1))
                                                            {
                                                               addr329:
                                                               §§push(§§pop() / (this.§'I§ * param4));
                                                            }
                                                            §§pop().§catch§ = §§pop() + §§pop();
                                                            addr336:
                                                            var _loc11_:Sprite = new Sprite();
                                                            var _loc12_:int = 0;
                                                            while(true)
                                                            {
                                                               if(_loc12_ >= this.§catch§)
                                                               {
                                                                  _loc11_.flatten();
                                                                  §§push(this.§[0§);
                                                                  if(!(_loc15_ && this))
                                                                  {
                                                                     §§pop().addChild(_loc11_);
                                                                     §§push(this.§@8§);
                                                                     if(!_loc15_)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           §§push(this.§@8§);
                                                                           if(!_loc15_)
                                                                           {
                                                                              if(§§pop().numChildren > 0)
                                                                              {
                                                                                 §§push(this.§[0§);
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    §§pop().addChild(this.§@8§);
                                                                                    break;
                                                                                 }
                                                                                 addr593:
                                                                                 §§pop().addChildAt(this.§7!8§,0);
                                                                                 addr610:
                                                                                 this.§[0§.addEventListener(Event.ADDED_TO_STAGE,this.§7!%§);
                                                                                 return;
                                                                                 addr608:
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr555:
                                                                                 this.§@8§.dispose();
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    addr558:
                                                                                    §§push(this.§7!8§);
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(_loc14_)
                                                                                          {
                                                                                             addr565:
                                                                                             §§push(this.§7!8§);
                                                                                             if(_loc14_)
                                                                                             {
                                                                                                if(§§pop().numChildren > 0)
                                                                                                {
                                                                                                   if(_loc14_ || this)
                                                                                                   {
                                                                                                      addr589:
                                                                                                      §§push(this.§[0§);
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
                                                                                                   this.§7!8§.dispose();
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
                                                                              _loc10_ = §<f§.§;!2§(param1.mName,this.§`!8§,param1.§&%§);
                                                                              addr376:
                                                                              §§push(_loc10_);
                                                                              §§push(_loc12_ - 1);
                                                                              if(_loc14_ || param2)
                                                                              {
                                                                                 §§push(§§pop() * this.§'I§);
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
                                                                                                §§push(§§pop() + param1.§2L§);
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
                                                                                                            §§push(param1.§4j§);
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
                                                                                                            §§push(§§pop() * this.§'I§);
                                                                                                         }
                                                                                                         §§pop().§,;§(§§pop(),§§pop());
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
                                                                           _loc10_ = new §6!0§(_loc6_,false,param1.§&%§);
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
                                                   this.§catch§ = 1;
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
                                 §§pop().§'I§ = §§pop();
                                 if(!_loc15_)
                                 {
                                    §§push(Number(_loc10_.§5S§.bottom));
                                    if(_loc14_)
                                    {
                                       _loc7_ = §§pop();
                                       if(!(_loc15_ && this))
                                       {
                                          addr241:
                                          §§push((_loc10_.§5S§.left + _loc10_.§5S§.right) / 2);
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
      
      public function get §;W§() : Boolean
      {
         return this.§#"§;
      }
      
      private function §,;§(param1:§4D§, param2:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:Object = null;
         var _loc4_:§,S§ = null;
         var _loc5_:* = 0;
         for each(_loc3_ in param1.§4!B§)
         {
            §§push(Boolean(_loc4_ = ParticleManager.§try §(_loc3_.id,this.§`!8§)));
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
                        if(_loc4_.§%!%§ > 0)
                        {
                           _loc4_.x = param2 + _loc3_.x + param1.§2L§;
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
                                    §;T§.§1I§.add(_loc4_);
                                    this.§4!B§.push(_loc4_);
                                    if(_loc3_.isBehindGraphic)
                                    {
                                       if(!_loc10_)
                                       {
                                          §§push(this.§7!8§);
                                          if(!_loc10_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(!(_loc10_ && _loc3_))
                                                {
                                                   this.§7!8§ = new Sprite();
                                                }
                                                else
                                                {
                                                   addr166:
                                                   this.§@8§ = new Sprite();
                                                   if(_loc10_)
                                                   {
                                                      continue;
                                                   }
                                                   addr174:
                                                   this.§@8§.addChild(_loc4_);
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
                                                         _loc4_.§<!+§(1 / 20);
                                                         §§goto(addr206);
                                                      }
                                                   }
                                                }
                                                §§goto(addr183);
                                             }
                                             §§push(this.§7!8§);
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
                                       §§push(this.§@8§);
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
            §§push(this.§[0§);
            if(_loc4_)
            {
               §§pop().§9_§(0,-1,true);
               if(_loc4_ || _loc3_)
               {
                  addr43:
                  this.§[0§.removeEventListener(Event.ADDED_TO_STAGE,this.§7!%§);
               }
               var _loc2_:int = 0;
               for each(_loc1_ in this.§4!B§)
               {
                  if(!(_loc5_ && _loc1_))
                  {
                     §;T§.§1I§.§try§(_loc1_);
                     if(_loc4_ || _loc2_)
                     {
                        _loc1_.dispose();
                     }
                  }
               }
               if(!(_loc5_ && this))
               {
                  this.§4!B§ = [];
                  if(!_loc5_)
                  {
                     this.§7!8§ = null;
                     if(_loc4_)
                     {
                        this.§@8§ = null;
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      private function §7!%§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§,b§();
         }
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§[!@§);
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
            §§push(this.§[0§);
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
                        §§push(this.§[0§);
                        §§push(param2);
                        if(_loc5_ || param2)
                        {
                           addr108:
                           §§pop().y = -§§pop();
                           if(!_loc4_)
                           {
                              this.§+R§();
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
      
      private function §,b§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:ParticleDesignerPS = null;
         if(_loc4_)
         {
            §§push(this.§'!5§);
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
               if(!this.§[0§.stage)
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
         for each(_loc1_ in this.§4!B§)
         {
            if(!(_loc5_ && this))
            {
               §;T§.§1I§.add(_loc1_);
               if(!(_loc5_ && _loc1_))
               {
                  _loc1_.visible = true;
               }
            }
         }
      }
      
      private function §5e§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:ParticleDesignerPS = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§4!B§)
         {
            if(!(_loc4_ && _loc2_))
            {
               §;T§.§1I§.§try§(_loc1_);
               if(!_loc4_)
               {
                  _loc1_.visible = false;
               }
            }
         }
      }
      
      public function §^v§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() == this.§'!5§)
               {
                  §§goto(addr34);
               }
               else
               {
                  this.§'!5§ = param1;
                  §§push(this.§'!5§);
               }
            }
            if(§§pop())
            {
               this.§,b§();
               if(_loc3_ && _loc2_)
               {
               }
            }
            else
            {
               this.§5e§();
            }
            return;
         }
         addr34:
      }
      
      private function §+R§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(this.§catch§ == 1);
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
            §§push(this.§4!B§.length > 0);
         }
         do
         {
            §§push(§=_§.§[!#§);
            if(_loc1_ || _loc1_)
            {
               §§push(this.§[0§.x - this.§'I§);
               if(!_loc2_)
               {
                  §§push(§§pop() * §=_§.§&!?§);
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
            this.§[0§.x -= this.§'I§;
         }
         while(!(_loc2_ && this));
         
         this.§ %§();
         addr130:
      }
      
      private function § %§() : void
      {
      }
   }
}
