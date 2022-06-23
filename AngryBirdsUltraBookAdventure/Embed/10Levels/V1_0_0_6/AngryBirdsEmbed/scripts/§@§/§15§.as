package §@§
{
   import §'%§.ParticleManager;
   import §,_§.§4K§;
   import §,_§.DisplayObject;
   import §,_§.Sprite;
   import §3G§.§ +§;
   import §3G§.§!E§;
   import §3c§.§^z§;
   import §5`§.§%F§;
   import §5`§.§49§;
   import §5`§.§?y§;
   import §7!=§.Texture;
   import §8!>§.§7!4§;
   import §>!H§.ParticleDesignerPS;
   import §catch§.§4@§;
   import starling.events.Event;
   
   public class §15§
   {
       
      
      private var §%%§:int;
      
      private var §>-§:int;
      
      private var §=l§:Number;
      
      private var §8W§:Boolean;
      
      private var §62§:Sprite;
      
      private var §9'§:Array;
      
      private var §5K§:Boolean = true;
      
      private var §^S§:§?y§;
      
      private var §@N§:Sprite;
      
      private var §0!4§:Sprite;
      
      public function §15§(param1:§7!4§, param2:Sprite, param3:§?y§, param4:Number)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc6_:Texture = null;
         var _loc13_:§%F§ = null;
         this.§9'§ = [];
         if(_loc14_ || param3)
         {
            super();
            if(_loc14_ || param2)
            {
               addr41:
               this.§^S§ = param3;
               if(!(_loc15_ && param3))
               {
                  this.§62§ = param2;
                  if(_loc14_ || this)
                  {
                     this.§=l§ = param1.§#A§;
                     if(_loc14_ || param3)
                     {
                        addr72:
                        this.§8W§ = param1.§94§;
                     }
                     var _loc5_:* = Number(1);
                     if(!_loc15_)
                     {
                        §§push(param1.§]H§);
                        if(_loc14_ || param2)
                        {
                           if(§§pop() != 0)
                           {
                              if(!(_loc15_ && this))
                              {
                                 addr99:
                                 §§push(param1.§]H§);
                                 if(_loc14_ || param2)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc15_)
                                    {
                                    }
                                    addr114:
                                    var _loc7_:* = §§pop();
                                    var _loc8_:* = Number(0);
                                    var _loc9_:* = Number(1);
                                    var _loc10_:DisplayObject;
                                    if(!(_loc10_ = §49§.§"4§(param1.mName,this.§^S§,param1.§8J§)))
                                    {
                                       if(!_loc15_)
                                       {
                                          §§push((_loc13_ = param3.§9,§(param1.mName)).pivotY);
                                          if(!(_loc15_ && this))
                                          {
                                             §§push(Number(§§pop()));
                                             if(!(_loc15_ && param3))
                                             {
                                                _loc7_ = §§pop();
                                                if(_loc14_ || param1)
                                                {
                                                   if(!this.§8W§)
                                                   {
                                                      if(!_loc15_)
                                                      {
                                                         addr174:
                                                         _loc8_ = Number(_loc13_.pivotX);
                                                      }
                                                   }
                                                }
                                                _loc6_ = _loc13_.texture;
                                                §§push(this);
                                                §§push(_loc13_.width);
                                                if(!(_loc15_ && param1))
                                                {
                                                   §§push(§§pop() * _loc5_);
                                                   if(_loc14_)
                                                   {
                                                      addr193:
                                                      §§push(§§pop() - 2);
                                                   }
                                                   §§pop().§%%§ = §§pop();
                                                   if(!(_loc15_ && this))
                                                   {
                                                      §§push(_loc13_.scale);
                                                      if(!(_loc15_ && param1))
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      _loc9_ = §§pop();
                                                      addr266:
                                                      if(this.§%%§ <= 0)
                                                      {
                                                         if(_loc14_)
                                                         {
                                                            throw new Error("Invalid texture for background layer: " + param1.mName);
                                                         }
                                                      }
                                                   }
                                                   this.§%%§ = Math.round(this.§%%§);
                                                   if(param1.§ !"§)
                                                   {
                                                      if(_loc14_ || this)
                                                      {
                                                         §§push(this);
                                                         §§push(2);
                                                         §§push(§!E§.§2C§);
                                                         if(_loc14_)
                                                         {
                                                            §§push(1.5);
                                                            if(_loc14_)
                                                            {
                                                               addr322:
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc14_)
                                                               {
                                                                  §§push(this.§%%§ * param4);
                                                               }
                                                               §§pop().§>-§ = §§pop() + §§pop();
                                                               addr328:
                                                               var _loc11_:Sprite = new Sprite();
                                                               var _loc12_:int = 0;
                                                               while(true)
                                                               {
                                                                  if(_loc12_ >= this.§>-§)
                                                                  {
                                                                     _loc11_.flatten();
                                                                     §§push(this.§62§);
                                                                     if(!_loc15_)
                                                                     {
                                                                        §§pop().addChild(_loc11_);
                                                                        break;
                                                                     }
                                                                     §§goto(addr569);
                                                                  }
                                                                  if(!_loc10_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        if(!_loc14_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        _loc10_ = §49§.§"4§(param1.mName,this.§^S§,param1.§8J§);
                                                                     }
                                                                     else
                                                                     {
                                                                        _loc10_ = new §4K§(_loc6_,false,param1.§8J§);
                                                                     }
                                                                  }
                                                                  §§push(_loc10_);
                                                                  §§push(_loc12_ - 1);
                                                                  if(_loc14_)
                                                                  {
                                                                     §§push(§§pop() * this.§%%§);
                                                                     if(!_loc15_)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        if(!(_loc15_ && param2))
                                                                        {
                                                                           §§push(-§§pop());
                                                                           if(_loc14_ || param3)
                                                                           {
                                                                              §§push(_loc5_);
                                                                              if(!(_loc15_ && param2))
                                                                              {
                                                                                 addr401:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    §§push(param1.§6_§);
                                                                                 }
                                                                                 §§pop().x = §§pop() + §§pop();
                                                                                 if(_loc14_)
                                                                                 {
                                                                                    §§push(_loc10_);
                                                                                    §§push(_loc7_);
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       §§push(-§§pop());
                                                                                       if(!(_loc15_ && this))
                                                                                       {
                                                                                          addr417:
                                                                                          §§push(_loc5_);
                                                                                          if(_loc14_ || param3)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc14_ || param2)
                                                                                             {
                                                                                                addr435:
                                                                                                §§push(§§pop() + param1.§;!"§);
                                                                                             }
                                                                                             §§pop().y = §§pop();
                                                                                             §§push(_loc10_);
                                                                                             §§push(_loc5_);
                                                                                             if(_loc14_ || this)
                                                                                             {
                                                                                                §§push(§§pop() * _loc9_);
                                                                                             }
                                                                                             §§pop().scaleX = §§pop();
                                                                                             §§push(_loc10_);
                                                                                             §§push(_loc5_);
                                                                                             if(!(_loc15_ && this))
                                                                                             {
                                                                                                §§push(§§pop() * _loc9_);
                                                                                             }
                                                                                             §§pop().scaleY = §§pop();
                                                                                             addr461:
                                                                                             §§push(this);
                                                                                             §§push(param1);
                                                                                             §§push(_loc12_ - 1);
                                                                                             if(!(_loc15_ && this))
                                                                                             {
                                                                                                §§push(§§pop() * this.§%%§);
                                                                                             }
                                                                                             §§pop().§>!7§(§§pop(),§§pop());
                                                                                             _loc11_.addChild(_loc10_);
                                                                                             _loc10_ = null;
                                                                                             if(!_loc15_)
                                                                                             {
                                                                                                _loc12_++;
                                                                                             }
                                                                                             continue;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr435);
                                                                                    }
                                                                                    §§goto(addr417);
                                                                                 }
                                                                                 §§goto(addr461);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                        }
                                                                        §§goto(addr401);
                                                                     }
                                                                  }
                                                                  §§goto(addr401);
                                                               }
                                                               §§push(this.§@N§);
                                                               if(!_loc15_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc15_)
                                                                     {
                                                                        §§push(this.§@N§);
                                                                        if(_loc14_)
                                                                        {
                                                                           if(§§pop().numChildren > 0)
                                                                           {
                                                                              if(_loc14_)
                                                                              {
                                                                                 §§push(this.§62§);
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    §§pop().addChild(this.§@N§);
                                                                                    if(_loc14_ || this)
                                                                                    {
                                                                                       addr531:
                                                                                       §§push(this.§0!4§);
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(_loc14_ || param2)
                                                                                             {
                                                                                                §§push(this.§0!4§);
                                                                                                if(!(_loc15_ && param2))
                                                                                                {
                                                                                                   addr562:
                                                                                                   if(§§pop().numChildren > 0)
                                                                                                   {
                                                                                                      §§push(this.§62§);
                                                                                                      if(!_loc15_)
                                                                                                      {
                                                                                                         §§goto(addr569);
                                                                                                      }
                                                                                                      §§goto(addr583);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(this.§0!4§);
                                                                                                   }
                                                                                                   §§goto(addr569);
                                                                                                }
                                                                                                §§pop().dispose();
                                                                                                if(!_loc14_)
                                                                                                {
                                                                                                }
                                                                                                §§goto(addr569);
                                                                                             }
                                                                                             §§goto(addr575);
                                                                                          }
                                                                                          §§goto(addr583);
                                                                                       }
                                                                                       §§goto(addr562);
                                                                                    }
                                                                                    addr569:
                                                                                    §§pop().addChildAt(this.§0!4§,0);
                                                                                    if(_loc14_)
                                                                                    {
                                                                                       addr583:
                                                                                       this.§62§.addEventListener(Event.ADDED_TO_STAGE,this.§ null§);
                                                                                       addr575:
                                                                                    }
                                                                                    return;
                                                                                 }
                                                                                 §§goto(addr583);
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr530:
                                                                              this.§@N§.dispose();
                                                                              §§goto(addr531);
                                                                           }
                                                                           §§goto(addr531);
                                                                        }
                                                                        §§goto(addr530);
                                                                     }
                                                                     §§goto(addr583);
                                                                  }
                                                                  §§goto(addr531);
                                                               }
                                                               §§goto(addr530);
                                                               addr324:
                                                            }
                                                            §§push(§§pop() / §§pop());
                                                         }
                                                         §§goto(addr322);
                                                      }
                                                      §§goto(addr324);
                                                   }
                                                   else
                                                   {
                                                      this.§>-§ = 1;
                                                   }
                                                   §§goto(addr328);
                                                }
                                                §§goto(addr193);
                                             }
                                          }
                                          §§goto(addr174);
                                       }
                                       else
                                       {
                                          addr248:
                                          §§push((_loc10_.§4!1§.left + _loc10_.§4!1§.right) / 2);
                                          if(!(_loc15_ && param3))
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          _loc8_ = §§pop();
                                       }
                                    }
                                    else
                                    {
                                       §§push(this);
                                       §§push(_loc10_.width);
                                       if(_loc14_)
                                       {
                                          §§push(§§pop() * _loc5_);
                                          if(_loc14_ || param2)
                                          {
                                             §§push(§§pop() - 2);
                                          }
                                       }
                                       §§pop().§%%§ = §§pop();
                                       if(_loc14_ || param2)
                                       {
                                          §§push(Number(_loc10_.§4!1§.bottom));
                                          if(!_loc15_)
                                          {
                                             _loc7_ = §§pop();
                                             if(!_loc15_)
                                             {
                                                §§goto(addr248);
                                             }
                                             §§goto(addr266);
                                          }
                                          §§goto(addr248);
                                       }
                                    }
                                    §§goto(addr266);
                                 }
                                 _loc5_ = §§pop();
                              }
                           }
                           §§push(Number(0));
                        }
                        §§goto(addr114);
                     }
                     §§goto(addr99);
                  }
               }
            }
            §§goto(addr72);
         }
         §§goto(addr41);
      }
      
      public function get §6i§() : Boolean
      {
         return this.§8W§;
      }
      
      private function §>!7§(param1:§7!4§, param2:Number) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc3_:Object = null;
         var _loc4_:§ +§ = null;
         var _loc5_:* = 0;
         loop0:
         for each(_loc3_ in param1.§9'§)
         {
            §§push(Boolean(_loc4_ = ParticleManager.§1!>§(_loc3_.id,this.§^S§)));
            if(_loc10_ || param1)
            {
               if(§§pop())
               {
                  if(_loc10_)
                  {
                     §§pop();
                     if(_loc10_ || _loc3_)
                     {
                        addr71:
                        if(_loc4_.§>m§ > 0)
                        {
                           if(_loc10_)
                           {
                              _loc4_.x = param2 + _loc3_.x + param1.§6_§;
                              if(!(_loc9_ && param1))
                              {
                                 _loc4_.y = _loc3_.y;
                                 _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
                                 addr104:
                                 _loc4_.rotation = _loc3_.rotation;
                                 _loc4_.alpha = _loc3_.alpha;
                                 if(_loc10_)
                                 {
                                    _loc4_.start();
                                    if(_loc10_ || _loc3_)
                                    {
                                       §4@§.§&R§.add(_loc4_);
                                       this.§9'§.push(_loc4_);
                                       if(_loc10_)
                                       {
                                          if(_loc3_.isBehindGraphic)
                                          {
                                             §§push(this.§0!4§);
                                             if(!(_loc9_ && _loc3_))
                                             {
                                                if(!§§pop())
                                                {
                                                   if(_loc10_)
                                                   {
                                                      addr158:
                                                      this.§0!4§ = new Sprite();
                                                      if(_loc10_ || this)
                                                      {
                                                         addr171:
                                                         this.§0!4§.addChild(_loc4_);
                                                         addr169:
                                                         if(!_loc10_)
                                                         {
                                                            continue;
                                                         }
                                                         addr191:
                                                         §§push(0);
                                                         if(_loc10_ || param1)
                                                         {
                                                            _loc5_ = §§pop();
                                                            if(_loc9_ && this)
                                                            {
                                                               continue;
                                                            }
                                                            addr227:
                                                            while(true)
                                                            {
                                                               §§push(_loc5_);
                                                            }
                                                            addr227:
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop() < _loc3_.fastForwardsAfterAdd)
                                                            {
                                                               _loc4_.§"!D§(1 / 20);
                                                               addr208:
                                                               while(true)
                                                               {
                                                                  _loc5_++;
                                                                  if(!_loc10_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  §§goto(addr227);
                                                                  §§goto(addr208);
                                                               }
                                                               addr243:
                                                               _loc4_.dispose();
                                                               addr224:
                                                               continue loop0;
                                                               addr224:
                                                            }
                                                            if(_loc9_)
                                                            {
                                                               continue loop0;
                                                            }
                                                         }
                                                      }
                                                      continue;
                                                   }
                                                   §§goto(addr224);
                                                }
                                                §§goto(addr169);
                                             }
                                             §§goto(addr171);
                                          }
                                          else
                                          {
                                             §§push(this.§@N§);
                                             if(!_loc9_)
                                             {
                                                if(!§§pop())
                                                {
                                                   addr181:
                                                   this.§@N§ = new Sprite();
                                                   if(_loc10_)
                                                   {
                                                      addr189:
                                                      this.§@N§.addChild(_loc4_);
                                                      addr187:
                                                      §§goto(addr191);
                                                   }
                                                   §§goto(addr227);
                                                }
                                                §§goto(addr187);
                                             }
                                             §§goto(addr189);
                                          }
                                       }
                                       §§goto(addr227);
                                    }
                                    §§goto(addr181);
                                 }
                              }
                              §§goto(addr158);
                           }
                           §§goto(addr224);
                        }
                        else
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                           if(!(_loc10_ || param1))
                           {
                              continue;
                           }
                        }
                        §§goto(addr243);
                     }
                     §§goto(addr104);
                  }
               }
            }
            §§goto(addr71);
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:ParticleDesignerPS = null;
         if(!(_loc4_ && _loc1_))
         {
            §§push(this.§62§);
            if(_loc5_)
            {
               §§pop().§`Y§(0,-1,true);
               addr54:
               if(_loc5_)
               {
                  §§push(this.§62§);
               }
               var _loc3_:* = this.§9'§;
               for each(_loc1_ in _loc3_)
               {
                  if(!_loc4_)
                  {
                     §4@§.§&R§.§4O§(_loc1_);
                     if(_loc4_)
                     {
                        continue;
                     }
                  }
                  _loc1_.dispose();
               }
               if(_loc5_)
               {
                  this.§9'§ = [];
                  if(!_loc4_)
                  {
                     this.§0!4§ = null;
                     if(!(_loc4_ && _loc3_))
                     {
                        addr108:
                        this.§@N§ = null;
                     }
                  }
                  return;
               }
               §§goto(addr108);
            }
            §§pop().removeEventListener(Event.ADDED_TO_STAGE,this.§ null§);
         }
         §§goto(addr54);
      }
      
      private function § null§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§^,§();
         }
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§=l§);
         if(!(_loc4_ && param1))
         {
            §§push(§§pop() * param1);
            if(_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(!(_loc4_ && param1))
         {
            §§push(this.§62§);
            if(!(_loc4_ && param1))
            {
               §§push(_loc3_);
               if(!_loc4_)
               {
                  §§push(-§§pop());
                  if(_loc5_)
                  {
                     §§pop().x = §§pop();
                     if(!_loc4_)
                     {
                        addr79:
                        §§push(this.§62§);
                        §§push(param2);
                        if(_loc4_ && this)
                        {
                        }
                        addr88:
                        §§pop().y = §§pop();
                        if(_loc5_ || this)
                        {
                           this.§6w§();
                        }
                     }
                     §§goto(addr98);
                  }
                  §§push(-§§pop());
               }
               §§goto(addr88);
            }
            §§goto(addr79);
         }
         addr98:
      }
      
      private function §^,§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:ParticleDesignerPS = null;
         if(!(_loc5_ && this))
         {
            §§push(this.§5K§);
            if(_loc4_)
            {
               §§push(!§§pop());
               if(!(_loc5_ && _loc1_))
               {
                  if(!§§pop())
                  {
                     if(_loc4_ || _loc3_)
                     {
                     }
                  }
                  §§goto(addr64);
               }
               §§pop();
               if(_loc4_)
               {
                  §§push(!this.§62§.stage);
               }
               §§goto(addr67);
            }
            addr64:
            if(§§pop())
            {
               if(!_loc5_)
               {
                  §§goto(addr67);
               }
            }
            var _loc2_:int = 0;
            for each(_loc1_ in this.§9'§)
            {
               if(_loc4_)
               {
                  §4@§.§&R§.add(_loc1_);
                  if(!(_loc5_ && _loc2_))
                  {
                     _loc1_.visible = true;
                  }
               }
            }
            return;
         }
         addr67:
      }
      
      private function §;]§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§9'§)
         {
            if(_loc5_)
            {
               §4@§.§&R§.§4O§(_loc1_);
               if(!_loc4_)
               {
                  _loc1_.visible = false;
               }
            }
         }
      }
      
      public function §=K§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(_loc2_)
         {
            if(§§pop() == this.§5K§)
            {
               return;
            }
            this.§5K§ = param1;
            §§push(this.§5K§);
         }
         if(§§pop())
         {
            this.§^,§();
         }
         else
         {
            this.§;]§();
         }
      }
      
      private function §6w§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§>-§ == 1);
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  if(!_loc1_)
                  {
                     addr34:
                     §§pop();
                     §§goto(addr66);
                  }
               }
               if(§§pop())
               {
                  if(_loc2_ || _loc1_)
                  {
                     return;
                  }
                  §§goto(addr66);
               }
               addr66:
               if(!(_loc1_ && this))
               {
                  §§push(this.§9'§.length > 0);
               }
               do
               {
                  §§push(§^z§.§<H§);
                  if(_loc2_)
                  {
                     §§push(this.§62§.x - this.§%%§);
                     if(_loc2_)
                     {
                        §§push(§§pop() * §^z§.§%!8§);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  if(§§pop() <= 0)
                  {
                     if(!(_loc1_ && _loc1_))
                     {
                        this.§5c§();
                        break;
                     }
                     break;
                  }
                  this.§62§.x -= this.§%%§;
               }
               while(_loc2_);
               
               return;
            }
         }
         §§goto(addr34);
      }
      
      private function §5c§() : void
      {
      }
   }
}
