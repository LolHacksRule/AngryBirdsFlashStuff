package §_-ls§
{
   import §_-2m§.§_-0J§;
   import §_-4g§.Texture;
   import §_-LP§.DisplayObject;
   import §_-LP§.Sprite;
   import §_-LP§.§_-19§;
   import §_-NT§.§_-7F§;
   import §_-OJ§.§_-KG§;
   import §_-OJ§.§_-LW§;
   import §_-OJ§.§_-tL§;
   import §_-Ra§.§_-2X§;
   import §_-Ra§.§_-Vr§;
   import §_-Ra§.§_-fR§;
   import §_-gY§.§_-Vu§;
   import §_-mJ§.§_-4n§;
   import flash.geom.Point;
   import starling.events.Event;
   
   public class §_-ON§
   {
       
      
      private var §_-rX§:int;
      
      private var §_-Yk§:int;
      
      private var §_-5u§:Number;
      
      private var §_-bu§:Boolean;
      
      private var §_-lj§:Number = 0.15;
      
      private var §_-Cv§:Sprite;
      
      private var §_-dg§:Array;
      
      private var §_-Ap§:Boolean = true;
      
      private var §_-gS§:§_-2X§;
      
      public function §_-ON§(param1:§_-0J§, param2:Sprite, param3:§_-2X§)
      {
         var _loc19_:Boolean = false;
         var _loc20_:Boolean = true;
         var _loc5_:Texture = null;
         var _loc10_:§_-Vr§ = null;
         var _loc11_:Sprite = null;
         var _loc12_:Array = null;
         var _loc13_:Object = null;
         var _loc14_:§_-KG§ = null;
         var _loc15_:* = 0;
         this.§_-dg§ = [];
         super();
         this.§_-gS§ = param3;
         if(!_loc19_)
         {
            this.§_-Cv§ = param2;
         }
         this.§_-5u§ = param1.§_-80§;
         this.§_-bu§ = param1.§_-UR§;
         var _loc4_:* = Number(1);
         if(_loc20_)
         {
            §§push(param1.§_-KA§);
            if(!_loc19_)
            {
               if(§§pop() != 0)
               {
                  if(_loc20_ || param2)
                  {
                     §§push(param1.§_-KA§);
                     if(!_loc19_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc19_)
                        {
                           _loc4_ = §§pop();
                           addr81:
                           §§push(Number(0));
                        }
                     }
                  }
               }
               §§goto(addr81);
            }
            var _loc6_:* = §§pop();
            var _loc7_:* = Number(0);
            var _loc8_:DisplayObject;
            if(!(_loc8_ = §_-fR§.§_-xl§(param1.mName,§_-2X§.§_-mE§,false)))
            {
               if(!(_loc19_ && param2))
               {
                  §§push((_loc10_ = param3.§_-ln§(param1.mName)).pivotY);
                  if(_loc20_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc20_ || this)
                     {
                        _loc6_ = §§pop();
                        if(!_loc19_)
                        {
                           if(!this.§_-bu§)
                           {
                              if(!_loc19_)
                              {
                                 addr134:
                                 _loc7_ = Number(_loc10_.pivotX);
                              }
                           }
                        }
                        _loc5_ = _loc10_.texture;
                        §§push(this);
                        §§push(_loc5_.width);
                        if(!(_loc19_ && this))
                        {
                           §§push(§§pop() * _loc4_);
                           if(_loc20_ || param2)
                           {
                              addr158:
                              §§push(§§pop() - 2);
                           }
                           §§pop().§_-rX§ = §§pop();
                           if(!(_loc19_ && param2))
                           {
                              addr210:
                              §§push(this.§_-rX§);
                              if(_loc20_ || param2)
                              {
                                 if(§§pop() <= 0)
                                 {
                                    if(_loc20_)
                                    {
                                       throw new Error("Invalid texture for background layer: " + param1.mName);
                                    }
                                    addr316:
                                 }
                                 else
                                 {
                                    addr237:
                                    this.§_-rX§ = Math.round(this.§_-rX§);
                                    if(_loc20_ || this)
                                    {
                                       if(param1.§_-Hz§)
                                       {
                                          if(_loc20_ || param1)
                                          {
                                             addr260:
                                             §§push(this);
                                             §§push(1);
                                             §§push(§_-tL§.§_-il§);
                                             if(!_loc19_)
                                             {
                                                §§push(4);
                                                if(!(_loc19_ && param3))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc19_)
                                                   {
                                                      addr277:
                                                      §§push(this.§_-rX§);
                                                      if(!_loc19_)
                                                      {
                                                         addr281:
                                                         §§push(this.§_-lj§);
                                                         if(_loc20_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc20_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc20_ || param2)
                                                               {
                                                                  §§push(§§pop() - 1);
                                                                  if(!_loc19_)
                                                                  {
                                                                     addr306:
                                                                     §§push(§§pop() / (this.§_-rX§ * this.§_-lj§));
                                                                  }
                                                                  §§pop().§_-Yk§ = §§pop() + §§pop();
                                                                  if(_loc20_)
                                                                  {
                                                                     §§goto(addr316);
                                                                  }
                                                                  addr321:
                                                                  var _loc9_:int = 0;
                                                                  §§goto(addr320);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr306);
                                                }
                                                §§goto(addr281);
                                             }
                                             §§goto(addr277);
                                          }
                                          §§goto(addr316);
                                       }
                                       else
                                       {
                                          this.§_-Yk§ = 1;
                                          §§goto(addr320);
                                       }
                                    }
                                    §§goto(addr260);
                                 }
                                 addr320:
                                 while(_loc9_ < this.§_-Yk§)
                                 {
                                    _loc11_ = new Sprite();
                                    if(!_loc8_)
                                    {
                                       if(!_loc5_)
                                       {
                                          if(!_loc19_)
                                          {
                                             _loc8_ = §_-fR§.§_-xl§(param1.mName,§_-2X§.§_-mE§,false);
                                             addr351:
                                             §§push(_loc8_);
                                             §§push(_loc9_ * this.§_-rX§);
                                             if(_loc20_)
                                             {
                                                §§push(_loc7_);
                                                if(_loc20_ || param2)
                                                {
                                                   §§push(-§§pop());
                                                   if(!_loc19_)
                                                   {
                                                      addr369:
                                                      §§push(_loc4_);
                                                      if(_loc20_)
                                                      {
                                                         addr383:
                                                         addr384:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc20_ || param1)
                                                         {
                                                            §§push(param1.§_-Oh§);
                                                         }
                                                         §§pop().x = §§pop() + §§pop();
                                                         §§push(_loc8_);
                                                         §§push(_loc6_);
                                                         if(!(_loc19_ && param2))
                                                         {
                                                            §§push(-§§pop());
                                                            if(_loc20_)
                                                            {
                                                               §§push(§§pop() * _loc4_);
                                                            }
                                                         }
                                                         §§pop().y = §§pop();
                                                         _loc8_.scaleX = _loc4_;
                                                         if(!(_loc19_ && this))
                                                         {
                                                            _loc8_.scaleY = _loc4_;
                                                            if(_loc20_ || param3)
                                                            {
                                                               addr420:
                                                               _loc11_.addChild(_loc8_);
                                                            }
                                                            _loc12_ = [];
                                                            if(_loc20_)
                                                            {
                                                               var _loc16_:int = 0;
                                                               if(!_loc19_)
                                                               {
                                                                  loop1:
                                                                  for each(_loc13_ in param1.§_-dg§)
                                                                  {
                                                                     (_loc14_ = §_-4n§.§_-Wc§(_loc13_.id,this.§_-gS§)).x = _loc9_ * this.§_-rX§ + _loc13_.x + param1.§_-Oh§;
                                                                     _loc14_.y = _loc13_.y;
                                                                     _loc14_.scaleX = _loc14_.scaleY = _loc13_.scale;
                                                                     if(!(_loc19_ && param2))
                                                                     {
                                                                        _loc14_.rotation = _loc13_.rotation;
                                                                        _loc14_.alpha = _loc13_.alpha;
                                                                     }
                                                                     _loc14_.start();
                                                                     §_-Vu§.§_-jT§.add(_loc14_);
                                                                     if(_loc20_ || param3)
                                                                     {
                                                                        this.§_-dg§.push(_loc14_);
                                                                        if(_loc13_.isBehindGraphic)
                                                                        {
                                                                           if(!_loc19_)
                                                                           {
                                                                              _loc11_.addChildAt(_loc14_,_loc11_.getChildIndex(_loc8_));
                                                                           }
                                                                           loop4:
                                                                           while(true)
                                                                           {
                                                                              _loc15_++;
                                                                              addr536:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc15_);
                                                                                 addr537:
                                                                                 while(§§pop() < _loc13_.fastForwardsAfterAdd)
                                                                                 {
                                                                                    _loc14_.§_-IE§(1 / 20);
                                                                                    continue loop4;
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                           }
                                                                           addr535:
                                                                        }
                                                                        else
                                                                        {
                                                                           _loc11_.addChild(_loc14_);
                                                                        }
                                                                        §§push(0);
                                                                        if(_loc20_)
                                                                        {
                                                                           _loc15_ = §§pop();
                                                                           §§goto(addr536);
                                                                        }
                                                                        §§goto(addr537);
                                                                     }
                                                                     §§goto(addr535);
                                                                  }
                                                               }
                                                               if(!(_loc19_ && this))
                                                               {
                                                                  addr551:
                                                                  this.§_-Cv§.addChild(_loc11_);
                                                               }
                                                               _loc8_ = null;
                                                               if(!(_loc19_ && param1))
                                                               {
                                                                  _loc9_++;
                                                               }
                                                               continue;
                                                            }
                                                            §§goto(addr551);
                                                         }
                                                         §§goto(addr420);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                   }
                                                   §§goto(addr383);
                                                }
                                                §§goto(addr369);
                                             }
                                             §§goto(addr384);
                                          }
                                          §§goto(addr383);
                                       }
                                       else
                                       {
                                          _loc8_ = new §_-19§(_loc5_,false,false);
                                       }
                                    }
                                    §§goto(addr351);
                                 }
                                 if(_loc20_)
                                 {
                                    this.§_-Cv§.addEventListener(Event.ADDED_TO_STAGE,this.§_-h§);
                                 }
                                 return;
                              }
                              §§goto(addr321);
                           }
                           §§goto(addr237);
                        }
                        §§goto(addr158);
                     }
                  }
                  §§goto(addr134);
               }
               else
               {
                  addr188:
                  §§push(Number(_loc8_.§_-cB§.bottom));
                  if(!_loc19_)
                  {
                     _loc6_ = §§pop();
                     if(_loc20_)
                     {
                        addr197:
                        §§push((_loc8_.§_-cB§.left + _loc8_.§_-cB§.right) / 2);
                        if(_loc20_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     §§goto(addr210);
                  }
                  _loc7_ = §§pop();
               }
               §§goto(addr210);
            }
            else
            {
               §§push(this);
               §§push(_loc8_.width);
               if(!_loc19_)
               {
                  §§push(§§pop() * _loc4_);
                  if(_loc20_)
                  {
                     §§push(§§pop() - 2);
                  }
               }
               §§pop().§_-rX§ = §§pop();
               if(!(_loc19_ && this))
               {
                  §§goto(addr188);
               }
            }
            §§goto(addr197);
         }
         §§goto(addr81);
      }
      
      public function get §_-MV§() : Boolean
      {
         return this.§_-bu§;
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§_-7F§ = null;
         if(!(_loc5_ && _loc1_))
         {
            this.§_-Cv§.§_-12§(0,-1,true);
         }
         for each(_loc1_ in this.§_-dg§)
         {
            if(!_loc5_)
            {
               §_-Vu§.§_-jT§.§_-TM§(_loc1_);
               if(_loc4_)
               {
                  _loc1_.dispose();
               }
            }
         }
         if(!_loc5_)
         {
            this.§_-dg§ = [];
         }
      }
      
      private function §_-h§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-7D§();
         }
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§_-5u§);
         if(!_loc4_)
         {
            §§push(§§pop() * param1);
            if(!(_loc4_ && param2))
            {
               addr27:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            if(!(_loc4_ && _loc3_))
            {
               §§push(this.§_-Cv§);
               if(!(_loc4_ && this))
               {
                  §§push(_loc3_);
                  if(_loc5_)
                  {
                     §§push(-§§pop());
                     if(_loc5_ || _loc3_)
                     {
                        §§pop().x = §§pop();
                        if(_loc5_ || this)
                        {
                           §§goto(addr73);
                        }
                        §§goto(addr101);
                     }
                  }
                  §§goto(addr81);
               }
               addr73:
               §§push(this.§_-Cv§);
               §§push(param2);
               if(_loc5_ || param1)
               {
                  addr81:
                  §§push(-§§pop());
               }
               §§pop().y = §§pop();
               if(!_loc4_)
               {
                  addr85:
                  this.§_-pg§();
                  if(_loc5_ || _loc3_)
                  {
                     addr101:
                     this.§_-7D§();
                  }
               }
               return;
            }
            §§goto(addr85);
         }
         §§goto(addr27);
      }
      
      private function §_-7D§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§_-7F§ = null;
         var _loc2_:Point = null;
         if(_loc6_ || _loc1_)
         {
            §§push(this.§_-Ap§);
            if(_loc6_ || this)
            {
               §§push(!§§pop());
               if(_loc6_ || this)
               {
                  if(!§§pop())
                  {
                     if(_loc6_ || _loc1_)
                     {
                        §§goto(addr53);
                     }
                  }
               }
               §§goto(addr65);
            }
            addr53:
            §§pop();
            if(!(_loc5_ && _loc3_))
            {
               addr65:
               if(!this.§_-Cv§.stage)
               {
                  if(!(_loc5_ && _loc2_))
                  {
                     return;
                  }
               }
            }
            for each(_loc1_ in this.§_-dg§)
            {
               _loc2_ = _loc1_.localToGlobal(new Point(0,0));
               if(_loc6_ || _loc2_)
               {
                  §§push(_loc2_.x < -50);
                  if(!(_loc5_ && _loc1_))
                  {
                     if(!§§pop())
                     {
                        if(_loc6_)
                        {
                           §§pop();
                           §§push(_loc2_.x > this.§_-Cv§.stage.stageWidth + 51);
                        }
                     }
                  }
                  if(§§pop())
                  {
                     §§push(§_-Vu§.§_-jT§);
                     if(_loc6_)
                     {
                        §§pop().§_-TM§(_loc1_);
                        _loc1_.visible = false;
                        addr144:
                        continue;
                     }
                  }
                  else
                  {
                     §§push(§_-Vu§.§_-jT§);
                  }
                  §§pop().add(_loc1_);
                  _loc1_.visible = true;
                  continue;
               }
               §§goto(addr144);
            }
            return;
         }
         §§goto(addr65);
      }
      
      private function §_-if§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§_-7F§ = null;
         for each(_loc1_ in this.§_-dg§)
         {
            if(!(_loc4_ && _loc1_))
            {
               §_-Vu§.§_-jT§.§_-TM§(_loc1_);
               if(_loc5_ || _loc1_)
               {
                  _loc1_.visible = false;
               }
            }
         }
      }
      
      public function §_-o3§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() == this.§_-Ap§)
               {
                  return;
               }
               addr36:
               this.§_-Ap§ = param1;
               if(!(_loc3_ && param1))
               {
                  §§goto(addr48);
               }
               §§goto(addr63);
            }
            addr48:
            if(this.§_-Ap§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  addr63:
                  this.§_-7D§();
               }
            }
            else
            {
               this.§_-if§();
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function §_-pg§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.§_-Yk§ == 1)
            {
               if(_loc1_ || _loc2_)
               {
                  return;
               }
            }
         }
         do
         {
            §§push(§_-LW§.§_-wF§);
            if(_loc1_)
            {
               §§push(§§pop() + this.§_-Cv§.x * §_-LW§.§ use§);
            }
            if(§§pop() <= 0)
            {
               break;
            }
            this.§_-Cv§.x -= this.§_-rX§;
         }
         while(!_loc2_);
         
      }
   }
}
