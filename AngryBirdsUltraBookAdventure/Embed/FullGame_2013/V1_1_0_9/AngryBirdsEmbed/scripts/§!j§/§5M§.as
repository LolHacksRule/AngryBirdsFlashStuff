package §!j§
{
   import §&o§.§?T§;
   import §&o§.DisplayObject;
   import §&o§.Sprite;
   import §0! §.Texture;
   import §2!,§.§++§;
   import §2k§.§`n§;
   import §6A§.§ !§;
   import §6A§.§9Q§;
   import §8§.ParticleManager;
   import §9K§.§,z§;
   import §9K§.§4!<§;
   import §9K§.§5!H§;
   import §=!0§.§>I§;
   import §`6§.ParticleDesignerPS;
   import starling.events.Event;
   
   public class §5M§
   {
       
      
      protected var §,g§:int;
      
      private var §-D§:int;
      
      protected var §%!%§:Number;
      
      private var §!a§:Boolean;
      
      protected var §,!7§:Sprite;
      
      private var §0x§:Array;
      
      private var §0%§:Boolean = true;
      
      private var §-M§:§5!H§;
      
      private var §0B§:Sprite;
      
      private var §4!H§:Sprite;
      
      public function §5M§(param1:§++§, param2:Sprite, param3:§5!H§, param4:Number)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc6_:Texture = null;
         var _loc13_:§,z§ = null;
         if(_loc14_)
         {
            this.§0x§ = [];
            if(!(_loc15_ && param1))
            {
               super();
            }
            this.§-M§ = param3;
            this.§,!7§ = param2;
            if(_loc14_)
            {
               this.§%!%§ = param1.§5!G§;
            }
         }
         this.§!a§ = param1.§^!5§;
         var _loc5_:* = Number(1);
         if(!(_loc15_ && this))
         {
            §§push(param1.§-_§);
            if(!_loc15_)
            {
               if(§§pop() != 0)
               {
                  if(_loc14_ || param2)
                  {
                     addr75:
                     §§push(param1.§-_§);
                     if(_loc14_)
                     {
                        addr79:
                        §§push(Number(§§pop()));
                        if(!(_loc15_ && param2))
                        {
                           addr87:
                           _loc5_ = §§pop();
                           §§push(Number(0));
                        }
                        var _loc7_:* = §§pop();
                        var _loc8_:* = Number(0);
                        var _loc9_:* = Number(1);
                        var _loc10_:DisplayObject;
                        if(!(_loc10_ = §4!<§.§6!<§(param1.mName,this.§-M§,param1.§2X§)))
                        {
                           if(!_loc15_)
                           {
                              §§push((_loc13_ = param3.§3!'§(param1.mName)).pivotY);
                              if(!_loc15_)
                              {
                                 §§push(Number(§§pop()));
                                 if(!(_loc15_ && param2))
                                 {
                                    _loc7_ = §§pop();
                                    if(!_loc15_)
                                    {
                                       if(!this.§!a§)
                                       {
                                          if(!_loc15_)
                                          {
                                             addr140:
                                             _loc8_ = Number(_loc13_.pivotX);
                                          }
                                       }
                                    }
                                    _loc6_ = _loc13_.texture;
                                    §§push(this);
                                    §§push(_loc13_.width);
                                    if(_loc14_ || param1)
                                    {
                                       §§push(§§pop() * _loc5_);
                                       if(!(_loc15_ && param3))
                                       {
                                          addr164:
                                          §§push(§§pop() - 2);
                                       }
                                       §§pop().§,g§ = §§pop();
                                       §§push(_loc13_.scale);
                                       if(!_loc15_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       _loc9_ = §§pop();
                                       if(_loc14_)
                                       {
                                          addr232:
                                          if(this.§,g§ <= 0)
                                          {
                                             if(!(_loc15_ && param3))
                                             {
                                                §§goto(addr243);
                                             }
                                          }
                                          else
                                          {
                                             this.§,g§ = Math.round(this.§,g§);
                                             if(param1.§&g§)
                                             {
                                                if(!(_loc15_ && this))
                                                {
                                                   §§push(this);
                                                   §§push(2);
                                                   §§push(§ !§.§,!=§);
                                                   if(_loc14_)
                                                   {
                                                      §§push(1.5);
                                                      if(!(_loc15_ && this))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc15_)
                                                         {
                                                            addr297:
                                                            §§push(§§pop() / (this.§,g§ * param4));
                                                         }
                                                         §§pop().§-D§ = §§pop() + §§pop();
                                                         addr304:
                                                         var _loc11_:Sprite = new Sprite();
                                                         var _loc12_:int = 0;
                                                         while(true)
                                                         {
                                                            if(_loc12_ >= this.§-D§)
                                                            {
                                                               if(_loc14_)
                                                               {
                                                                  _loc11_.flatten();
                                                                  if(!_loc15_)
                                                                  {
                                                                     §§push(this.§,!7§);
                                                                     if(_loc14_)
                                                                     {
                                                                        §§pop().addChild(_loc11_);
                                                                        if(!_loc15_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr560:
                                                                        §§push(this.§,!7§);
                                                                        if(_loc14_)
                                                                        {
                                                                           addr564:
                                                                           §§pop().addChildAt(this.§4!H§,0);
                                                                           if(_loc14_)
                                                                           {
                                                                              addr576:
                                                                              this.§,!7§.addEventListener(Event.ADDED_TO_STAGE,this.§!!0§);
                                                                              addr570:
                                                                           }
                                                                           §§goto(addr581);
                                                                        }
                                                                     }
                                                                     §§goto(addr576);
                                                                  }
                                                                  break;
                                                               }
                                                               addr499:
                                                               §§push(this.§0B§);
                                                               if(!_loc15_)
                                                               {
                                                                  if(§§pop().numChildren > 0)
                                                                  {
                                                                     if(_loc14_)
                                                                     {
                                                                        §§push(this.§,!7§);
                                                                        if(_loc14_)
                                                                        {
                                                                           §§pop().addChild(this.§0B§);
                                                                           addr526:
                                                                           §§push(this.§4!H§);
                                                                           if(_loc14_ || param3)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc14_ || param2)
                                                                                 {
                                                                                    addr553:
                                                                                    §§push(this.§4!H§);
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       if(§§pop().numChildren > 0)
                                                                                       {
                                                                                          §§goto(addr560);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(this.§4!H§);
                                                                                       }
                                                                                       §§goto(addr576);
                                                                                    }
                                                                                 }
                                                                                 addr581:
                                                                                 return;
                                                                              }
                                                                              §§goto(addr576);
                                                                           }
                                                                           §§pop().dispose();
                                                                           §§goto(addr576);
                                                                        }
                                                                        §§goto(addr564);
                                                                     }
                                                                     §§goto(addr576);
                                                                  }
                                                                  else
                                                                  {
                                                                     addr518:
                                                                     this.§0B§.dispose();
                                                                     if(_loc14_ || param3)
                                                                     {
                                                                        §§goto(addr526);
                                                                     }
                                                                  }
                                                                  §§goto(addr564);
                                                               }
                                                               §§goto(addr518);
                                                            }
                                                            else
                                                            {
                                                               if(!_loc10_)
                                                               {
                                                                  if(!(_loc15_ && this))
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(!_loc15_)
                                                                        {
                                                                           _loc10_ = §4!<§.§6!<§(param1.mName,this.§-M§,param1.§2X§);
                                                                           addr344:
                                                                           §§push(_loc10_);
                                                                           §§push(_loc12_ - 1);
                                                                           if(!(_loc15_ && param1))
                                                                           {
                                                                              §§push(§§pop() * this.§,g§);
                                                                              if(_loc14_)
                                                                              {
                                                                                 §§push(_loc8_);
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                    if(_loc14_ || param3)
                                                                                    {
                                                                                       addr370:
                                                                                       §§push(_loc5_);
                                                                                       if(_loc14_)
                                                                                       {
                                                                                          addr385:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc14_ || param1)
                                                                                          {
                                                                                             addr383:
                                                                                             §§push(§§pop() + param1.§%#§);
                                                                                          }
                                                                                          §§pop().x = §§pop() + §§pop();
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(_loc10_);
                                                                                          §§push(_loc7_);
                                                                                          if(_loc14_ || param2)
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                §§push(_loc5_);
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   addr414:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc14_ || param3)
                                                                                                   {
                                                                                                      §§push(param1.§3"§);
                                                                                                   }
                                                                                                   §§pop().y = §§pop();
                                                                                                   if(!_loc15_)
                                                                                                   {
                                                                                                      §§push(_loc10_);
                                                                                                      §§push(_loc5_);
                                                                                                      if(_loc14_ || param2)
                                                                                                      {
                                                                                                         §§push(§§pop() * _loc9_);
                                                                                                      }
                                                                                                      §§pop().scaleX = §§pop();
                                                                                                   }
                                                                                                   §§push(_loc10_);
                                                                                                   §§push(_loc5_);
                                                                                                   if(_loc14_)
                                                                                                   {
                                                                                                      §§push(§§pop() * _loc9_);
                                                                                                   }
                                                                                                   §§pop().scaleY = §§pop();
                                                                                                   §§push(this);
                                                                                                   §§push(param1);
                                                                                                   §§push(_loc12_ - 1);
                                                                                                   if(_loc14_ || param3)
                                                                                                   {
                                                                                                      §§push(§§pop() * this.§,g§);
                                                                                                   }
                                                                                                   §§pop().§]N§(§§pop(),§§pop());
                                                                                                   if(_loc14_ || param1)
                                                                                                   {
                                                                                                      _loc11_.addChild(_loc10_);
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         addr463:
                                                                                                         _loc10_ = null;
                                                                                                         if(!_loc15_)
                                                                                                         {
                                                                                                            _loc12_++;
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§goto(addr570);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr553);
                                                                                                   }
                                                                                                }
                                                                                                §§push(§§pop() + §§pop());
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr414);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr383);
                                                                                 }
                                                                                 §§goto(addr370);
                                                                              }
                                                                           }
                                                                           §§goto(addr385);
                                                                        }
                                                                        §§goto(addr463);
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc10_ = new §?T§(_loc6_,false,param1.§2X§);
                                                                     }
                                                                  }
                                                                  §§goto(addr553);
                                                               }
                                                               §§goto(addr344);
                                                            }
                                                         }
                                                         §§push(this.§0B§);
                                                         if(!_loc15_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc14_ || this)
                                                               {
                                                                  §§goto(addr499);
                                                               }
                                                               §§goto(addr576);
                                                            }
                                                            §§goto(addr526);
                                                         }
                                                         §§goto(addr518);
                                                      }
                                                   }
                                                   §§goto(addr297);
                                                }
                                             }
                                             else
                                             {
                                                this.§-D§ = 1;
                                             }
                                          }
                                          §§goto(addr304);
                                       }
                                       addr243:
                                       throw new Error("Invalid texture for background layer: " + param1.mName);
                                    }
                                    §§goto(addr164);
                                 }
                              }
                              §§goto(addr140);
                           }
                           else
                           {
                              addr200:
                              §§push(Number(_loc10_.§4U§.bottom));
                              if(_loc14_ || param3)
                              {
                                 _loc7_ = §§pop();
                                 if(_loc14_ || param2)
                                 {
                                    addr219:
                                    §§push((_loc10_.§4U§.left + _loc10_.§4U§.right) / 2);
                                    if(!_loc15_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 §§goto(addr232);
                              }
                              _loc8_ = §§pop();
                           }
                           §§goto(addr232);
                        }
                        else
                        {
                           §§push(this);
                           §§push(_loc10_.width);
                           if(!(_loc15_ && param1))
                           {
                              §§push(§§pop() * _loc5_);
                              if(!_loc15_)
                              {
                                 §§push(§§pop() - 2);
                              }
                           }
                           §§pop().§,g§ = §§pop();
                           if(_loc14_ || param2)
                           {
                              §§goto(addr200);
                           }
                        }
                        §§goto(addr219);
                     }
                     §§goto(addr87);
                  }
               }
               §§goto(addr87);
            }
            §§goto(addr79);
         }
         §§goto(addr75);
      }
      
      public function get § R§() : Boolean
      {
         return this.§!a§;
      }
      
      private function §]N§(param1:§++§, param2:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:Object = null;
         var _loc4_:§9Q§ = null;
         var _loc5_:* = 0;
         loop0:
         for each(_loc3_ in param1.§0x§)
         {
            §§push(Boolean(_loc4_ = ParticleManager.§@!0§(_loc3_.id,this.§-M§)));
            if(!(_loc10_ && param1))
            {
               if(§§pop())
               {
                  if(!_loc10_)
                  {
                     §§pop();
                     if(_loc9_)
                     {
                        addr65:
                        if(_loc4_.§`+§ > 0)
                        {
                           _loc4_.x = param2 + _loc3_.x + param1.§%#§;
                           if(_loc9_ || this)
                           {
                              _loc4_.y = _loc3_.y;
                              _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
                              _loc4_.rotation = _loc3_.rotation;
                              if(!(_loc10_ && _loc3_))
                              {
                                 _loc4_.alpha = _loc3_.alpha;
                                 if(_loc9_ || param2)
                                 {
                                    _loc4_.start();
                                    §>I§.§2!@§.add(_loc4_);
                                    this.§0x§.push(_loc4_);
                                    if(_loc3_.isBehindGraphic)
                                    {
                                       if(_loc10_ && param2)
                                       {
                                          addr246:
                                          _loc4_.dispose();
                                          continue;
                                       }
                                       §§push(this.§4!H§);
                                       if(_loc9_ || param2)
                                       {
                                          if(!§§pop())
                                          {
                                             if(_loc10_)
                                             {
                                                continue;
                                             }
                                             this.§4!H§ = new Sprite();
                                             if(!(_loc10_ && _loc3_))
                                             {
                                                addr173:
                                                this.§4!H§.addChild(_loc4_);
                                                addr171:
                                             }
                                             addr191:
                                             §§push(0);
                                             if(!(_loc10_ && this))
                                             {
                                                _loc5_ = §§pop();
                                                if(!(_loc10_ && _loc3_))
                                                {
                                                   addr207:
                                                   loop1:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      addr233:
                                                      while(§§pop() < _loc3_.fastForwardsAfterAdd)
                                                      {
                                                         _loc4_.§9!8§(1 / 20);
                                                         if(_loc9_ || _loc3_)
                                                         {
                                                            continue loop1;
                                                         }
                                                         continue loop0;
                                                      }
                                                      if(_loc10_ && _loc3_)
                                                      {
                                                         continue loop0;
                                                      }
                                                   }
                                                }
                                                continue;
                                             }
                                             §§goto(addr233);
                                          }
                                          §§goto(addr171);
                                       }
                                       §§goto(addr173);
                                    }
                                    else
                                    {
                                       §§push(this.§0B§);
                                       if(!_loc10_)
                                       {
                                          if(!§§pop())
                                          {
                                             this.§0B§ = new Sprite();
                                          }
                                          §§push(this.§0B§);
                                       }
                                       §§pop().addChild(_loc4_);
                                       if(!_loc10_)
                                       {
                                          §§goto(addr191);
                                       }
                                    }
                                    §§goto(addr207);
                                 }
                                 §§goto(addr173);
                              }
                              §§goto(addr231);
                           }
                           §§goto(addr173);
                        }
                        else if(!_loc4_)
                        {
                           continue;
                        }
                        §§goto(addr246);
                     }
                     §§goto(addr173);
                  }
               }
            }
            §§goto(addr65);
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:ParticleDesignerPS = null;
         if(_loc4_)
         {
            §§push(this.§,!7§);
            if(_loc4_ || _loc3_)
            {
               §§pop().§]?§(0,-1,true);
               if(!(_loc5_ && _loc1_))
               {
                  this.§,!7§.removeEventListener(Event.ADDED_TO_STAGE,this.§!!0§);
                  addr43:
               }
               var _loc2_:int = 0;
               for each(_loc1_ in this.§0x§)
               {
                  if(!_loc5_)
                  {
                     §>I§.§2!@§.§<!A§(_loc1_);
                     if(_loc4_ || _loc2_)
                     {
                        _loc1_.dispose();
                     }
                  }
               }
               if(!_loc5_)
               {
                  this.§0x§ = [];
                  if(!_loc5_)
                  {
                     §§goto(addr107);
                  }
                  §§goto(addr117);
               }
               addr107:
               this.§4!H§ = null;
               if(_loc4_ || this)
               {
                  addr117:
                  this.§0B§ = null;
               }
               return;
            }
         }
         §§goto(addr43);
      }
      
      private function §!!0§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@!4§();
         }
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§%!%§);
         if(_loc4_)
         {
            §§push(§§pop() * param1);
            if(_loc4_)
            {
               addr34:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(_loc4_ || this)
            {
               §§push(this.§,!7§);
               if(!_loc5_)
               {
                  §§push(_loc3_);
                  if(!_loc5_)
                  {
                     §§push(-§§pop());
                     if(_loc4_)
                     {
                        §§pop().x = §§pop();
                        §§goto(addr75);
                     }
                  }
                  §§pop().y = §§pop();
                  if(_loc5_)
                  {
                  }
                  §§goto(addr75);
               }
               §§goto(addr68);
            }
            addr75:
            if(_loc4_)
            {
               addr68:
               §§push(this.§,!7§);
               §§push(param2);
               if(!_loc5_)
               {
                  §§push(-§§pop());
               }
            }
            this.§7[§();
            return;
         }
         §§goto(addr34);
      }
      
      private function §@!4§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:ParticleDesignerPS = null;
         if(!_loc5_)
         {
            §§push(this.§0%§);
            if(!_loc5_)
            {
               §§push(!§§pop());
               if(_loc4_ || _loc3_)
               {
                  if(!§§pop())
                  {
                     if(_loc4_)
                     {
                        addr37:
                        §§pop();
                        if(!(_loc5_ && _loc2_))
                        {
                           §§goto(addr59);
                        }
                        §§goto(addr62);
                     }
                  }
                  addr59:
                  §§goto(addr55);
               }
            }
            §§goto(addr37);
         }
         addr55:
         if(!this.§,!7§.stage)
         {
            if(_loc4_)
            {
               addr62:
               return;
            }
         }
         var _loc2_:int = 0;
         for each(_loc1_ in this.§0x§)
         {
            if(_loc4_ || _loc2_)
            {
               §>I§.§2!@§.add(_loc1_);
               if(!(_loc5_ && _loc1_))
               {
                  _loc1_.visible = true;
               }
            }
         }
      }
      
      private function §-n§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:ParticleDesignerPS = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§0x§)
         {
            if(!(_loc4_ && _loc2_))
            {
               §>I§.§2!@§.§<!A§(_loc1_);
               if(_loc5_ || _loc1_)
               {
                  _loc1_.visible = false;
               }
            }
         }
      }
      
      public function §9C§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(!_loc3_)
         {
            if(§§pop() == this.§0%§)
            {
               if(!_loc3_)
               {
                  return;
               }
            }
            else
            {
               this.§0%§ = param1;
               if(_loc2_ || _loc3_)
               {
                  §§goto(addr64);
               }
            }
            §§goto(addr67);
         }
         addr64:
         if(this.§0%§)
         {
            this.§@!4§();
            addr67:
         }
         else
         {
            this.§-n§();
         }
      }
      
      protected function §7[§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§-D§ == 1);
            if(!(_loc2_ && _loc1_))
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr43);
                  }
               }
               §§goto(addr66);
            }
            addr43:
            §§pop();
            if(_loc1_ || _loc1_)
            {
               addr66:
               if(this.§0x§.length > 0)
               {
                  if(_loc1_)
                  {
                     return;
                  }
               }
            }
            do
            {
               §§push(§`n§.§!!7§);
               if(!(_loc2_ && this))
               {
                  §§push(this.§,!7§.x - this.§,g§);
                  if(_loc1_)
                  {
                     §§push(§§pop() * §`n§.§&"§);
                  }
                  §§push(§§pop() + §§pop());
               }
               if(§§pop() <= 0)
               {
                  if(_loc1_)
                  {
                     this.§]A§();
                     break;
                  }
                  break;
               }
               this.§,!7§.x -= this.§,g§;
            }
            while(!(_loc2_ && _loc1_));
            
            return;
         }
         §§goto(addr66);
      }
      
      private function §]A§() : void
      {
      }
   }
}
