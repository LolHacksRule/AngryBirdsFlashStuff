package §1=§
{
   import §'!B§.ParticleDesignerPS;
   import §-!`§.§7!J§;
   import §-!`§.DisplayObject;
   import §-!`§.Sprite;
   import §0!-§.Texture;
   import §;o§.ParticleManager;
   import §<!<§.§ M§;
   import §<!<§.§7E§;
   import §=U§.§3p§;
   import §=U§.§<6§;
   import §=U§.§>?§;
   import §@!X§.§7j§;
   import §]Z§.§0!H§;
   import §`a§.§ !U§;
   import starling.events.Event;
   
   public class §?!8§
   {
       
      
      private var §`9§:int;
      
      private var §9l§:int;
      
      private var §[!j§:Number;
      
      private var §0p§:Boolean;
      
      private var §>E§:Sprite;
      
      private var §=![§:Array;
      
      private var §1!0§:Boolean = true;
      
      private var §>!S§:§3p§;
      
      private var §4!f§:Sprite;
      
      private var §>,§:Sprite;
      
      public function §?!8§(param1:§0!H§, param2:Sprite, param3:§3p§, param4:Number)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         var _loc6_:Texture = null;
         var _loc13_:§>?§ = null;
         this.§=![§ = [];
         super();
         if(!_loc14_)
         {
            this.§>!S§ = param3;
            this.§>E§ = param2;
            if(!(_loc14_ && param2))
            {
               addr43:
               this.§[!j§ = param1.§ 2§;
               this.§0p§ = param1.§>T§;
            }
            var _loc5_:* = Number(1);
            if(!_loc14_)
            {
               §§push(param1.§7P§);
               if(_loc15_)
               {
                  if(§§pop() != 0)
                  {
                     if(!(_loc14_ && param3))
                     {
                        §§push(param1.§7P§);
                        if(_loc15_ || param2)
                        {
                           §§push(Number(§§pop()));
                           if(!(_loc14_ && this))
                           {
                              _loc5_ = §§pop();
                              addr87:
                              §§push(Number(0));
                           }
                        }
                     }
                  }
                  §§goto(addr87);
               }
               var _loc7_:* = §§pop();
               var _loc8_:* = Number(0);
               var _loc9_:* = Number(1);
               var _loc10_:DisplayObject;
               if(!(_loc10_ = §<6§.§&2§(param1.mName,this.§>!S§,param1.§0_§)))
               {
                  if(_loc15_)
                  {
                     §§push((_loc13_ = param3.§8!@§(param1.mName)).pivotY);
                     if(_loc15_)
                     {
                        §§push(Number(§§pop()));
                        if(!(_loc14_ && this))
                        {
                           _loc7_ = §§pop();
                           if(!_loc14_)
                           {
                              if(!this.§0p§)
                              {
                                 if(_loc15_ || param2)
                                 {
                                    addr144:
                                    _loc8_ = Number(_loc13_.pivotX);
                                 }
                              }
                           }
                           _loc6_ = _loc13_.texture;
                           §§push(this);
                           §§push(_loc13_.width);
                           if(!(_loc14_ && param1))
                           {
                              §§push(§§pop() * _loc5_);
                              if(!(_loc14_ && param2))
                              {
                                 addr168:
                                 §§push(§§pop() - 2);
                              }
                              §§pop().§`9§ = §§pop();
                              §§push(_loc13_.scale);
                              if(_loc15_ || param1)
                              {
                                 §§push(Number(§§pop()));
                              }
                              _loc9_ = §§pop();
                              if(_loc15_ || param3)
                              {
                                 addr246:
                                 if(this.§`9§ <= 0)
                                 {
                                    throw new Error("Invalid texture for background layer: " + param1.mName);
                                 }
                              }
                              this.§`9§ = Math.round(this.§`9§);
                              if(param1.§`§)
                              {
                                 §§push(this);
                                 §§push(2);
                                 §§push(§7E§.§#!U§);
                                 if(_loc15_ || this)
                                 {
                                    §§push(1.5);
                                    if(!(_loc14_ && this))
                                    {
                                       addr315:
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc14_ && param3))
                                       {
                                          §§push(this.§`9§ * param4);
                                       }
                                       §§pop().§9l§ = §§pop() + §§pop();
                                       if(_loc15_)
                                       {
                                          addr323:
                                          var _loc11_:Sprite = new Sprite();
                                          var _loc12_:int = 0;
                                          while(true)
                                          {
                                             if(_loc12_ >= this.§9l§)
                                             {
                                                if(_loc15_ || this)
                                                {
                                                   _loc11_.flatten();
                                                   if(!(_loc14_ && this))
                                                   {
                                                      addr513:
                                                      §§push(this.§>E§);
                                                      if(!_loc14_)
                                                      {
                                                         §§pop().addChild(_loc11_);
                                                         §§push(this.§4!f§);
                                                         if(_loc15_ || param3)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               §§push(this.§4!f§);
                                                               if(!(_loc14_ && param3))
                                                               {
                                                                  addr538:
                                                                  if(§§pop().numChildren > 0)
                                                                  {
                                                                     if(!_loc14_)
                                                                     {
                                                                        addr611:
                                                                        §§push(this.§>E§);
                                                                        if(!_loc14_)
                                                                        {
                                                                           §§pop().addChild(this.§4!f§);
                                                                           if(!_loc14_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           addr609:
                                                                           §§push(this.§>E§);
                                                                        }
                                                                        §§pop().addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
                                                                     }
                                                                     §§goto(addr616);
                                                                  }
                                                                  addr555:
                                                                  this.§4!f§.dispose();
                                                                  if(_loc15_)
                                                                  {
                                                                     addr558:
                                                                     §§push(this.§>,§);
                                                                     if(!(_loc14_ && param1))
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(!(_loc14_ && param2))
                                                                           {
                                                                              addr575:
                                                                              §§push(this.§>,§);
                                                                              if(!(_loc14_ && param3))
                                                                              {
                                                                                 addr594:
                                                                                 if(§§pop().numChildren > 0)
                                                                                 {
                                                                                    §§push(this.§>E§);
                                                                                    if(!_loc14_)
                                                                                    {
                                                                                       addr601:
                                                                                       §§pop().addChildAt(this.§>,§,0);
                                                                                       §§goto(addr609);
                                                                                    }
                                                                                    §§goto(addr611);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(this.§>,§);
                                                                                 }
                                                                                 §§goto(addr609);
                                                                              }
                                                                              §§pop().dispose();
                                                                              §§goto(addr609);
                                                                           }
                                                                           addr616:
                                                                           return;
                                                                        }
                                                                        §§goto(addr609);
                                                                     }
                                                                     §§goto(addr594);
                                                                  }
                                                                  §§goto(addr575);
                                                                  §§goto(addr609);
                                                               }
                                                               §§goto(addr555);
                                                            }
                                                            §§goto(addr558);
                                                         }
                                                         §§goto(addr538);
                                                      }
                                                      §§goto(addr601);
                                                   }
                                                   break;
                                                }
                                             }
                                             else
                                             {
                                                if(!_loc10_)
                                                {
                                                   if(!(_loc14_ && param2))
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         _loc10_ = §<6§.§&2§(param1.mName,this.§>!S§,param1.§0_§);
                                                         addr361:
                                                         §§push(_loc10_);
                                                         §§push(_loc12_ - 1);
                                                         if(!(_loc14_ && param1))
                                                         {
                                                            §§push(§§pop() * this.§`9§);
                                                            if(_loc15_)
                                                            {
                                                               §§push(_loc8_);
                                                               if(!(_loc14_ && param1))
                                                               {
                                                                  §§push(-§§pop());
                                                                  if(_loc15_)
                                                                  {
                                                                     addr387:
                                                                     §§push(_loc5_);
                                                                     if(!_loc14_)
                                                                     {
                                                                        addr397:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc14_)
                                                                        {
                                                                           addr395:
                                                                           §§push(§§pop() + param1.§[!l§);
                                                                        }
                                                                        §§pop().x = §§pop() + §§pop();
                                                                        if(_loc15_)
                                                                        {
                                                                           §§push(_loc10_);
                                                                           §§push(_loc7_);
                                                                           if(!_loc14_)
                                                                           {
                                                                              §§push(-§§pop());
                                                                              if(!(_loc14_ && param1))
                                                                              {
                                                                                 addr412:
                                                                                 §§push(_loc5_);
                                                                                 if(!(_loc14_ && this))
                                                                                 {
                                                                                    addr431:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc15_ || param1)
                                                                                    {
                                                                                       §§push(param1.§5!U§);
                                                                                    }
                                                                                    §§pop().y = §§pop();
                                                                                    if(_loc15_ || param1)
                                                                                    {
                                                                                       §§push(_loc10_);
                                                                                       §§push(_loc5_);
                                                                                       if(!_loc14_)
                                                                                       {
                                                                                          §§push(§§pop() * _loc9_);
                                                                                       }
                                                                                       §§pop().scaleX = §§pop();
                                                                                       if(_loc15_ || this)
                                                                                       {
                                                                                          §§push(_loc10_);
                                                                                          §§push(_loc5_);
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             §§push(§§pop() * _loc9_);
                                                                                          }
                                                                                          §§pop().scaleY = §§pop();
                                                                                          if(_loc15_)
                                                                                          {
                                                                                             §§push(this);
                                                                                             §§push(param1);
                                                                                             §§push(_loc12_ - 1);
                                                                                             if(!_loc14_)
                                                                                             {
                                                                                                §§push(§§pop() * this.§`9§);
                                                                                             }
                                                                                             §§pop().§98§(§§pop(),§§pop());
                                                                                             if(_loc15_ || param1)
                                                                                             {
                                                                                                addr479:
                                                                                                _loc11_.addChild(_loc10_);
                                                                                                _loc10_ = null;
                                                                                                if(_loc15_ || param3)
                                                                                                {
                                                                                                   _loc12_++;
                                                                                                }
                                                                                                continue;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr558);
                                                                                          }
                                                                                          §§goto(addr609);
                                                                                       }
                                                                                       §§goto(addr479);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr513);
                                                                                    }
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                              }
                                                                              §§goto(addr431);
                                                                           }
                                                                           §§goto(addr412);
                                                                        }
                                                                        break;
                                                                     }
                                                                  }
                                                                  §§goto(addr395);
                                                               }
                                                               §§goto(addr387);
                                                            }
                                                         }
                                                         §§goto(addr397);
                                                      }
                                                      else
                                                      {
                                                         _loc10_ = new §7!J§(_loc6_,false,param1.§0_§);
                                                         §§goto(addr361);
                                                      }
                                                   }
                                                   §§goto(addr611);
                                                }
                                                §§goto(addr361);
                                             }
                                             §§goto(addr513);
                                          }
                                          §§goto(addr558);
                                       }
                                       §§goto(addr323);
                                    }
                                    §§push(§§pop() / §§pop());
                                 }
                                 §§goto(addr315);
                              }
                              else
                              {
                                 this.§9l§ = 1;
                              }
                              §§goto(addr323);
                           }
                           §§goto(addr168);
                        }
                     }
                     §§goto(addr144);
                  }
                  else
                  {
                     addr209:
                     §§push(Number(_loc10_.§+!;§.bottom));
                     if(!(_loc14_ && param2))
                     {
                        _loc7_ = §§pop();
                        if(_loc15_ || param2)
                        {
                           addr228:
                           §§push((_loc10_.§+!;§.left + _loc10_.§+!;§.right) / 2);
                           if(_loc15_ || param2)
                           {
                              addr244:
                              §§push(Number(§§pop()));
                           }
                           _loc8_ = §§pop();
                        }
                        §§goto(addr246);
                     }
                     §§goto(addr244);
                  }
               }
               else
               {
                  §§push(this);
                  §§push(_loc10_.width);
                  if(!(_loc14_ && this))
                  {
                     §§push(§§pop() * _loc5_);
                     if(!_loc14_)
                     {
                        §§push(§§pop() - 2);
                     }
                  }
                  §§pop().§`9§ = §§pop();
                  if(_loc15_)
                  {
                     §§goto(addr209);
                  }
               }
               §§goto(addr228);
            }
            §§goto(addr87);
         }
         §§goto(addr43);
      }
      
      public function get §,!b§() : Boolean
      {
         return this.§0p§;
      }
      
      private function §98§(param1:§0!H§, param2:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:Object = null;
         var _loc4_:§ M§ = null;
         var _loc5_:* = 0;
         loop0:
         for each(_loc3_ in param1.§=![§)
         {
            §§push(Boolean(_loc4_ = ParticleManager.§2!>§(_loc3_.id,this.§>!S§)));
            if(_loc9_ || param1)
            {
               if(§§pop())
               {
                  if(!_loc10_)
                  {
                     addr58:
                     §§pop();
                     §§push(_loc4_.§;!N§ > 0);
                  }
               }
               if(§§pop())
               {
                  if(_loc9_)
                  {
                     _loc4_.x = param2 + _loc3_.x + param1.§[!l§;
                     _loc4_.y = _loc3_.y;
                     _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
                     if(!_loc10_)
                     {
                        _loc4_.rotation = _loc3_.rotation;
                        if(_loc9_)
                        {
                           _loc4_.alpha = _loc3_.alpha;
                           if(!(_loc10_ && param2))
                           {
                              _loc4_.start();
                              if(_loc9_ || param1)
                              {
                              }
                              addr145:
                              §§push(this.§>,§);
                              if(_loc9_)
                              {
                                 if(!§§pop())
                                 {
                                    if(!(_loc10_ && this))
                                    {
                                       this.§>,§ = new Sprite();
                                       if(!_loc10_)
                                       {
                                          addr165:
                                          this.§>,§.addChild(_loc4_);
                                          addr163:
                                          if(_loc9_)
                                          {
                                             addr190:
                                             §§push(0);
                                             if(!_loc10_)
                                             {
                                                _loc5_ = §§pop();
                                                if(!(_loc10_ && param1))
                                                {
                                                   addr211:
                                                   loop1:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      addr227:
                                                      addr233:
                                                      while(true)
                                                      {
                                                         if(§§pop() < _loc3_.fastForwardsAfterAdd)
                                                         {
                                                            _loc4_.§ l§(1 / 20);
                                                            if(!(_loc9_ || _loc3_))
                                                            {
                                                               break;
                                                            }
                                                         }
                                                         continue loop1;
                                                      }
                                                      _loc4_.dispose();
                                                      continue loop0;
                                                   }
                                                }
                                                continue;
                                             }
                                             §§goto(addr227);
                                             addr169:
                                          }
                                          §§goto(addr211);
                                       }
                                    }
                                    else
                                    {
                                       addr188:
                                       this.§4!f§.addChild(_loc4_);
                                       addr186:
                                    }
                                    §§goto(addr190);
                                 }
                                 §§goto(addr163);
                              }
                              §§goto(addr165);
                           }
                           §7j§.§&t§.add(_loc4_);
                           if(_loc9_ || param1)
                           {
                              this.§=![§.push(_loc4_);
                              if(_loc3_.isBehindGraphic)
                              {
                                 §§goto(addr145);
                              }
                              else
                              {
                                 §§push(this.§4!f§);
                                 if(!(_loc10_ && param2))
                                 {
                                    if(!§§pop())
                                    {
                                       addr180:
                                       this.§4!f§ = new Sprite();
                                       if(_loc9_)
                                       {
                                          §§goto(addr186);
                                       }
                                       §§goto(addr211);
                                    }
                                    §§goto(addr186);
                                 }
                              }
                              §§goto(addr188);
                           }
                           §§goto(addr233);
                        }
                        §§goto(addr145);
                     }
                     §§goto(addr180);
                  }
                  §§goto(addr169);
               }
               else if(!_loc4_)
               {
                  continue;
               }
               §§goto(addr233);
            }
            §§goto(addr58);
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:ParticleDesignerPS = null;
         if(_loc4_)
         {
            §§push(this.§>E§);
            if(!_loc5_)
            {
               §§pop().removeChildren(0,-1,true);
               if(!_loc5_)
               {
                  addr33:
                  this.§>E§.removeEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
               }
               for each(_loc1_ in this.§=![§)
               {
                  if(!_loc5_)
                  {
                     §7j§.§&t§.§-!6§(_loc1_);
                     if(_loc4_)
                     {
                        _loc1_.dispose();
                     }
                  }
               }
               if(!(_loc5_ && this))
               {
                  this.§=![§ = [];
                  if(_loc4_ || _loc1_)
                  {
                     this.§>,§ = null;
                     if(_loc4_)
                     {
                        addr107:
                        this.§4!f§ = null;
                     }
                  }
                  return;
               }
               §§goto(addr107);
            }
         }
         §§goto(addr33);
      }
      
      private function onAddedToStage(param1:Event) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§2g§();
         }
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§[!j§);
         if(_loc5_)
         {
            §§push(§§pop() * param1);
            if(!(_loc4_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            §§push(this.§>E§);
            if(_loc5_)
            {
               §§push(_loc3_);
               if(_loc5_ || param1)
               {
                  §§push(-§§pop());
                  if(!(_loc4_ && _loc3_))
                  {
                     §§pop().x = §§pop();
                     if(_loc5_)
                     {
                        addr79:
                        §§push(this.§>E§);
                        §§push(param2);
                        if(!_loc4_)
                        {
                           addr83:
                           §§pop().y = -§§pop();
                           if(_loc5_)
                           {
                              addr86:
                              this.§?!g§();
                           }
                        }
                        §§goto(addr83);
                     }
                     return;
                  }
               }
               §§goto(addr83);
            }
            §§goto(addr79);
         }
         §§goto(addr86);
      }
      
      private function §2g§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:ParticleDesignerPS = null;
         if(_loc5_)
         {
            §§push(this.§1!0§);
            if(_loc5_ || _loc2_)
            {
               §§push(!§§pop());
               if(_loc5_ || this)
               {
                  addr49:
                  if(!§§pop())
                  {
                     if(_loc5_)
                     {
                        §§pop();
                        if(_loc5_ || _loc2_)
                        {
                           §§goto(addr65);
                        }
                        return;
                     }
                  }
               }
               addr65:
               if(!this.§>E§.stage)
               {
                  if(!_loc5_)
                  {
                     §§goto(addr79);
                  }
               }
               §§goto(addr79);
            }
            §§goto(addr49);
         }
         addr79:
         for each(_loc1_ in this.§=![§)
         {
            if(!_loc4_)
            {
               §7j§.§&t§.add(_loc1_);
               if(!_loc5_)
               {
                  continue;
               }
            }
            _loc1_.visible = true;
         }
      }
      
      private function §7!Q§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:ParticleDesignerPS = null;
         for each(_loc1_ in this.§=![§)
         {
            if(_loc5_)
            {
               §7j§.§&t§.§-!6§(_loc1_);
               if(!_loc5_)
               {
                  continue;
               }
            }
            _loc1_.visible = false;
         }
      }
      
      public function §6!Y§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(param1);
         if(!(_loc3_ && param1))
         {
            if(§§pop() == this.§1!0§)
            {
               if(!(_loc3_ && this))
               {
                  return;
               }
            }
            this.§1!0§ = param1;
            if(_loc2_ || param1)
            {
               §§goto(addr69);
            }
            §§goto(addr70);
         }
         addr69:
         if(this.§1!0§)
         {
            addr70:
            this.§2g§();
         }
         else
         {
            this.§7!Q§();
         }
      }
      
      private function §?!g§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§9l§ == 1);
            if(!(_loc2_ && this))
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr38:
                     §§pop();
                     §§goto(addr69);
                  }
               }
               if(§§pop())
               {
                  if(_loc1_ || _loc2_)
                  {
                     addr69:
                     if(_loc1_ || this)
                     {
                        §§push(this.§=![§.length > 0);
                     }
                     return;
                  }
               }
               do
               {
                  §§push(§ !U§.§@B§);
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(this.§>E§.x - this.§`9§);
                     if(!_loc2_)
                     {
                        §§push(§§pop() * § !U§.§#!-§);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  if(§§pop() <= 0)
                  {
                     if(_loc1_)
                     {
                        break;
                     }
                     §§goto(addr125);
                  }
                  this.§>E§.x -= this.§`9§;
               }
               while(_loc1_ || _loc2_);
               
               this.§#!r§();
               addr125:
               return;
            }
         }
         §§goto(addr38);
      }
      
      private function §#!r§() : void
      {
      }
   }
}
