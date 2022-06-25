package §_-vJ§
{
   import §_-0BV§.ParticleManager;
   import §_-0Ea§.§_-AY§;
   import §_-0O§.ParticleDesignerPS;
   import §_-8d§.§_-0FF§;
   import §_-8d§.§_-mB§;
   import §_-8d§.§_-vz§;
   import §_-9T§.§_-QO§;
   import §_-JK§.§_-S2§;
   import §_-TG§.§_-00u§;
   import §_-TG§.§_-Cb§;
   import §_-uY§.DisplayObject;
   import §_-uY§.Sprite;
   import §_-uY§.§_-09b§;
   import §_-z4§.Texture;
   import starling.events.Event;
   
   public class §_-h5§
   {
       
      
      private var §_-2y§:int;
      
      private var §_-e6§:int;
      
      private var §_-0D3§:Number;
      
      private var §_-QM§:Boolean;
      
      private var §_-FQ§:Sprite;
      
      private var §_-1V§:Array;
      
      private var §_-JF§:Boolean = true;
      
      private var §_-00g§:§_-0FF§;
      
      private var §_-n3§:Sprite;
      
      private var §_-2Z§:Sprite;
      
      public function §_-h5§(param1:§_-QO§, param2:Sprite, param3:§_-0FF§, param4:Number)
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         var _loc6_:Texture = null;
         var _loc13_:§_-vz§ = null;
         if(!_loc15_)
         {
            this.§_-1V§ = [];
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§_-00g§ = param3;
                  while(true)
                  {
                     this.§_-FQ§ = param2;
                     addr32:
                     if(!(_loc14_ || param3))
                     {
                        continue;
                     }
                     if(_loc15_)
                     {
                        continue loop1;
                     }
                     if(false)
                     {
                        loop4:
                        while(true)
                        {
                           this.§_-0D3§ = param1.§_-0D2§;
                           addr48:
                           while(true)
                           {
                              if(_loc14_)
                              {
                                 continue loop0;
                              }
                              addr62:
                              while(true)
                              {
                                 continue loop4;
                              }
                           }
                           continue loop1;
                        }
                        addr76:
                        var _loc5_:* = Number(1);
                        if(!_loc15_)
                        {
                           §§push(param1.§_-XE§);
                           if(_loc14_ || param2)
                           {
                              if(§§pop() != 0)
                              {
                                 if(!_loc15_)
                                 {
                                    §§push(param1.§_-XE§);
                                    if(!(_loc15_ && this))
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc14_ || param1)
                                       {
                                          _loc5_ = §§pop();
                                          addr112:
                                          §§push(Number(0));
                                       }
                                    }
                                 }
                              }
                              §§goto(addr112);
                           }
                           var _loc7_:* = §§pop();
                           var _loc8_:* = Number(0);
                           var _loc9_:* = Number(1);
                           var _loc10_:DisplayObject;
                           if(!(_loc10_ = §_-mB§.§_-pc§(param1.mName,this.§_-00g§,param1.§_-94§)))
                           {
                              if(!_loc15_)
                              {
                                 §§push((_loc13_ = param3.§_-70§(param1.mName)).pivotY);
                                 if(_loc14_ || param3)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc14_ || param1)
                                    {
                                       _loc7_ = §§pop();
                                       if(!_loc15_)
                                       {
                                          if(!this.§_-QM§)
                                          {
                                             if(!(_loc15_ && this))
                                             {
                                                addr174:
                                                _loc8_ = Number(_loc13_.pivotX);
                                             }
                                          }
                                       }
                                       _loc6_ = _loc13_.texture;
                                       if(!_loc15_)
                                       {
                                          §§push(this);
                                          §§push(_loc13_.width);
                                          if(_loc14_)
                                          {
                                             §§push(§§pop() * _loc5_);
                                             if(_loc14_)
                                             {
                                                §§push(§§pop() - 2);
                                             }
                                          }
                                          §§pop().§_-2y§ = §§pop();
                                          if(!_loc15_)
                                          {
                                             §§push(_loc13_.scale);
                                             if(!_loc15_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             _loc9_ = §§pop();
                                             if(_loc14_)
                                             {
                                                addr260:
                                                if(this.§_-2y§ <= 0)
                                                {
                                                   if(!(_loc15_ && this))
                                                   {
                                                      §§goto(addr271);
                                                   }
                                                }
                                                this.§_-2y§ = Math.round(this.§_-2y§);
                                             }
                                          }
                                          loop6:
                                          while(true)
                                          {
                                             addr303:
                                             addr346:
                                             while(true)
                                             {
                                                if(param1.§_-9s§)
                                                {
                                                   if(_loc14_ || param1)
                                                   {
                                                      §§push(this);
                                                      §§push(2);
                                                      §§push(§_-00u§.§_-F1§);
                                                      if(_loc14_)
                                                      {
                                                         §§push(1.5);
                                                         if(!(_loc15_ && param3))
                                                         {
                                                            addr336:
                                                            §§push(§§pop() * §§pop());
                                                            if(!_loc15_)
                                                            {
                                                               §§push(this.§_-2y§ * param4);
                                                            }
                                                            §§pop().§_-e6§ = §§pop() + §§pop();
                                                            break;
                                                         }
                                                         §§push(§§pop() / §§pop());
                                                      }
                                                      §§goto(addr336);
                                                   }
                                                   break;
                                                }
                                                this.§_-e6§ = 1;
                                                if(!_loc14_)
                                                {
                                                   break;
                                                }
                                                continue loop6;
                                             }
                                             var _loc11_:Sprite = new Sprite();
                                             var _loc12_:int = 0;
                                             loop8:
                                             while(true)
                                             {
                                                if(_loc12_ >= this.§_-e6§)
                                                {
                                                   if(!(_loc15_ && param3))
                                                   {
                                                      _loc11_.flatten();
                                                      if(_loc14_ || param2)
                                                      {
                                                         §§push(this.§_-FQ§);
                                                         loop28:
                                                         while(true)
                                                         {
                                                            §§pop().addChild(_loc11_);
                                                            loop29:
                                                            while(true)
                                                            {
                                                               §§push(this.§_-n3§);
                                                               addr718:
                                                               addr721:
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     addr726:
                                                                     if(!_loc15_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§_-FQ§);
                                                                        addr728:
                                                                        while(true)
                                                                        {
                                                                           §§pop().addChild(this.§_-n3§);
                                                                           addr731:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                        }
                                                                     }
                                                                     addr726:
                                                                  }
                                                                  addr662:
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§_-2Z§);
                                                                     loop13:
                                                                     while(§§pop())
                                                                     {
                                                                        if(_loc14_)
                                                                        {
                                                                           §§push(this.§_-2Z§);
                                                                           while(§§pop().numChildren <= 0)
                                                                           {
                                                                              §§push(this.§_-2Z§);
                                                                              if(!(_loc14_ || this))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(_loc15_)
                                                                              {
                                                                                 continue loop13;
                                                                              }
                                                                              §§pop().dispose();
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    addr661:
                                                                                    break loop13;
                                                                                 }
                                                                                 break loop8;
                                                                              }
                                                                           }
                                                                        }
                                                                        while(!_loc15_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§_-FQ§);
                                                                              addr677:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().addChildAt(this.§_-2Z§,0);
                                                                                 break loop8;
                                                                              }
                                                                           }
                                                                           if(!(_loc14_ || param1))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!_loc15_)
                                                                           {
                                                                              if(!_loc15_)
                                                                              {
                                                                                 return;
                                                                                 addr643:
                                                                              }
                                                                              continue loop29;
                                                                           }
                                                                           §§goto(addr731);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc14_ || param3)
                                                                           {
                                                                              addr714:
                                                                              while(true)
                                                                              {
                                                                                 continue loop12;
                                                                              }
                                                                              addr714:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr726);
                                                                           }
                                                                        }
                                                                     }
                                                                     addr601:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.§_-FQ§);
                                                                        if(_loc14_ || param2)
                                                                        {
                                                                           if(!(_loc15_ && this))
                                                                           {
                                                                              if(!_loc14_)
                                                                              {
                                                                                 continue loop28;
                                                                              }
                                                                              §§pop().addEventListener(Event.ADDED_TO_STAGE,this.§_-b-§);
                                                                              if(_loc14_ || param2)
                                                                              {
                                                                                 §§goto(addr632);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr659);
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr677);
                                                                        §§goto(addr661);
                                                                     }
                                                                     §§goto(addr728);
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this.§_-n3§);
                                                                  while(§§pop().numChildren <= 0)
                                                                  {
                                                                     §§push(this.§_-n3§);
                                                                     if(!_loc14_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     if(_loc14_ || param1)
                                                                     {
                                                                        §§pop().dispose();
                                                                        §§goto(addr707);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr718);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr726);
                                                   }
                                                   §§goto(addr731);
                                                }
                                                else
                                                {
                                                   if(!_loc10_)
                                                   {
                                                      if(_loc14_ || param2)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            if(!(_loc15_ && param1))
                                                            {
                                                               _loc10_ = §_-mB§.§_-pc§(param1.mName,this.§_-00g§,param1.§_-94§);
                                                               addr401:
                                                               §§push(_loc10_);
                                                               §§push(_loc12_ - 1);
                                                               if(_loc14_ || param1)
                                                               {
                                                                  §§push(§§pop() * this.§_-2y§);
                                                                  if(!(_loc15_ && param3))
                                                                  {
                                                                     addr421:
                                                                     §§push(_loc8_);
                                                                     if(!(_loc15_ && param1))
                                                                     {
                                                                        §§push(-§§pop());
                                                                        if(_loc14_ || param2)
                                                                        {
                                                                           addr437:
                                                                           §§push(_loc5_);
                                                                           if(!(_loc15_ && this))
                                                                           {
                                                                              addr457:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!(_loc15_ && param3))
                                                                              {
                                                                                 addr455:
                                                                                 §§push(§§pop() + param1.§_-2n§);
                                                                              }
                                                                              §§pop().x = §§pop() + §§pop();
                                                                              if(!(_loc15_ && param3))
                                                                              {
                                                                                 §§push(_loc10_);
                                                                                 §§push(_loc7_);
                                                                                 if(_loc14_ || this)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                    if(!(_loc15_ && param3))
                                                                                    {
                                                                                       §§push(_loc5_);
                                                                                       if(!_loc15_)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!_loc15_)
                                                                                          {
                                                                                             addr567:
                                                                                             §§push(§§pop() + param1.§_-xh§);
                                                                                          }
                                                                                          §§pop().y = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc10_);
                                                                                             §§push(_loc5_);
                                                                                             if(_loc14_ || param2)
                                                                                             {
                                                                                                §§push(§§pop() * _loc9_);
                                                                                             }
                                                                                             §§pop().scaleX = §§pop();
                                                                                             if(_loc15_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(!(_loc14_ || param1))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§push(_loc10_);
                                                                                             §§push(_loc5_);
                                                                                             if(!(_loc15_ && param3))
                                                                                             {
                                                                                                §§push(§§pop() * _loc9_);
                                                                                             }
                                                                                             §§pop().scaleY = §§pop();
                                                                                             if(_loc14_ || param1)
                                                                                             {
                                                                                                do
                                                                                                {
                                                                                                   §§push(this);
                                                                                                   §§push(param1);
                                                                                                   §§push(_loc12_ - 1);
                                                                                                   if(_loc14_ || this)
                                                                                                   {
                                                                                                      §§push(§§pop() * this.§_-2y§);
                                                                                                   }
                                                                                                   §§pop().§_-xl§(§§pop(),§§pop());
                                                                                                   if(!_loc15_)
                                                                                                   {
                                                                                                      _loc11_.addChild(_loc10_);
                                                                                                      if(!(_loc14_ || param1))
                                                                                                      {
                                                                                                         break loop8;
                                                                                                      }
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§goto(addr714);
                                                                                                }
                                                                                                while(false);
                                                                                                
                                                                                                _loc10_ = null;
                                                                                                if(_loc14_)
                                                                                                {
                                                                                                   _loc12_++;
                                                                                                }
                                                                                                continue loop8;
                                                                                             }
                                                                                             §§goto(addr675);
                                                                                          }
                                                                                          §§goto(addr643);
                                                                                       }
                                                                                       §§goto(addr567);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr567);
                                                                              }
                                                                              break;
                                                                           }
                                                                        }
                                                                        §§goto(addr455);
                                                                     }
                                                                     §§goto(addr437);
                                                                  }
                                                                  §§goto(addr457);
                                                               }
                                                               §§goto(addr421);
                                                            }
                                                            §§goto(addr714);
                                                         }
                                                         else
                                                         {
                                                            _loc10_ = new §_-09b§(_loc6_,false,param1.§_-94§);
                                                            §§goto(addr401);
                                                         }
                                                      }
                                                      §§goto(addr721);
                                                   }
                                                   §§goto(addr401);
                                                }
                                             }
                                             while(true)
                                             {
                                                §§goto(addr601);
                                             }
                                          }
                                       }
                                       addr271:
                                       throw new Error("Invalid texture for background layer: " + param1.mName);
                                    }
                                 }
                                 §§goto(addr174);
                              }
                              else
                              {
                                 addr247:
                                 §§push((_loc10_.§_-XV§.left + _loc10_.§_-XV§.right) / 2);
                                 if(_loc14_)
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
                              if(_loc14_ || this)
                              {
                                 §§push(§§pop() * _loc5_);
                                 if(!(_loc15_ && param3))
                                 {
                                    addr223:
                                    §§push(§§pop() - 2);
                                 }
                                 §§pop().§_-2y§ = §§pop();
                                 if(_loc14_ || param1)
                                 {
                                    §§push(Number(_loc10_.§_-XV§.bottom));
                                    if(_loc14_)
                                    {
                                       _loc7_ = §§pop();
                                       if(!(_loc15_ && this))
                                       {
                                          §§goto(addr247);
                                       }
                                       §§goto(addr260);
                                    }
                                    §§goto(addr247);
                                 }
                                 §§goto(addr260);
                              }
                              §§goto(addr223);
                           }
                           §§goto(addr260);
                        }
                     }
                     else
                     {
                        §§goto(addr76);
                     }
                     §§goto(addr112);
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      public function get §_-D0§() : Boolean
      {
         return this.§_-QM§;
      }
      
      private function §_-xl§(param1:§_-QO§, param2:Number) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:Object = null;
         var _loc4_:§_-Cb§ = null;
         var _loc5_:int = 0;
         for each(_loc3_ in param1.§_-1V§)
         {
            §§push(Boolean(_loc4_ = ParticleManager.§_-0D0§(_loc3_.id,this.§_-00g§)));
            if(_loc9_)
            {
               if(§§pop())
               {
                  if(!(_loc10_ && _loc3_))
                  {
                     addr58:
                     §§pop();
                     if(_loc9_ || param1)
                     {
                        addr70:
                        if(_loc4_.§_-cJ§ > 0)
                        {
                           if(!(_loc10_ && this))
                           {
                              _loc4_.x = param2 + _loc3_.x + param1.§_-2n§;
                              if(!(_loc10_ && this))
                              {
                                 _loc4_.y = _loc3_.y;
                                 if(!_loc10_)
                                 {
                                    _loc4_.scaleX = _loc4_.scaleY = _loc3_.scale;
                                    if(_loc9_ || param2)
                                    {
                                       _loc4_.rotation = _loc3_.rotation;
                                       loop20:
                                       while(true)
                                       {
                                          _loc4_.alpha = _loc3_.alpha;
                                          while(true)
                                          {
                                             _loc4_.start();
                                             while(true)
                                             {
                                                §_-AY§.§_-CK§.add(_loc4_);
                                                loop4:
                                                while(_loc9_ || param2)
                                                {
                                                   while(true)
                                                   {
                                                      this.§_-1V§.push(_loc4_);
                                                      addr284:
                                                      loop5:
                                                      while(true)
                                                      {
                                                         if(_loc3_.isBehindGraphic)
                                                         {
                                                            if(_loc9_)
                                                            {
                                                               §§push(this.§_-2Z§);
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     continue;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr237);
                                                            §§push(this.§_-n3§);
                                                         }
                                                         §§goto(addr267);
                                                         while(true)
                                                         {
                                                            if(!(_loc9_ || param2))
                                                            {
                                                               continue loop5;
                                                            }
                                                            §§goto(addr187);
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc10_ && param2)
                                                      {
                                                         continue loop4;
                                                      }
                                                      §§goto(addr245);
                                                   }
                                                }
                                             }
                                             continue loop20;
                                          }
                                       }
                                    }
                                    §§goto(addr257);
                                 }
                                 §§goto(addr307);
                              }
                              §§goto(addr176);
                           }
                           §§goto(addr284);
                        }
                        else
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                           if(_loc9_)
                           {
                              §§goto(addr156);
                           }
                        }
                        §§goto(addr178);
                     }
                     §§goto(addr185);
                  }
               }
               §§goto(addr70);
            }
            §§goto(addr58);
         }
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:ParticleDesignerPS = null;
         if(!(_loc4_ && _loc2_))
         {
            §§push(this.§_-FQ§);
            if(_loc5_ || _loc2_)
            {
               §§pop().§_-0BM§(0,-1,true);
               addr64:
               if(!(_loc4_ && this))
               {
                  §§push(this.§_-FQ§);
               }
               var _loc2_:int = 0;
               for each(_loc1_ in this.§_-1V§)
               {
                  if(!_loc4_)
                  {
                     §_-AY§.§_-CK§.§_-Ob§(_loc1_);
                     if(_loc4_ && _loc2_)
                     {
                        continue;
                     }
                  }
                  _loc1_.dispose();
               }
               if(_loc5_)
               {
                  this.§_-1V§ = [];
                  while(true)
                  {
                     this.§_-2Z§ = null;
                     loop2:
                     while(!(_loc4_ && this))
                     {
                        while(true)
                        {
                           this.§_-n3§ = null;
                           if(_loc5_ || _loc2_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        return;
                     }
                  }
               }
               §§goto(addr136);
            }
            §§pop().removeEventListener(Event.ADDED_TO_STAGE,this.§_-b-§);
         }
         §§goto(addr64);
      }
      
      private function §_-b-§(param1:Event) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§_-b5§();
         }
      }
      
      public function setSideScroll(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§_-0D3§);
         if(_loc4_)
         {
            §§push(§§pop() * param1);
            if(_loc4_ || param2)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            §§push(this.§_-FQ§);
            loop0:
            while(true)
            {
               §§push(_loc3_);
               if(!(_loc5_ && param2))
               {
                  §§push(-§§pop());
               }
               addr95:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§_-bh§();
            if(!_loc4_)
            {
               continue;
            }
            if(_loc4_ || this)
            {
               break;
            }
            §§goto(addr96);
         }
      }
      
      private function §_-b5§() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:ParticleDesignerPS = null;
         if(!_loc4_)
         {
            §§push(this.§_-JF§);
            if(!_loc4_)
            {
               §§push(!§§pop());
               if(!(_loc4_ && _loc2_))
               {
                  if(!§§pop())
                  {
                     if(_loc5_ || this)
                     {
                     }
                  }
                  §§goto(addr65);
               }
               §§pop();
               if(!(_loc4_ && _loc1_))
               {
                  addr61:
                  addr65:
                  if(§§pop())
                  {
                     if(!(_loc4_ && this))
                     {
                        §§goto(addr73);
                     }
                  }
                  for each(_loc1_ in this.§_-1V§)
                  {
                     if(!(_loc4_ && this))
                     {
                        §_-AY§.§_-CK§.add(_loc1_);
                        if(!(_loc5_ || this))
                        {
                           continue;
                        }
                     }
                     _loc1_.visible = true;
                  }
                  return;
                  §§push(!this.§_-FQ§.stage);
               }
               addr73:
               return;
            }
            §§goto(addr65);
         }
         §§goto(addr61);
      }
      
      private function §_-0EX§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:ParticleDesignerPS = null;
         var _loc3_:* = this.§_-1V§;
         for each(_loc1_ in _loc3_)
         {
            if(_loc4_ || _loc1_)
            {
               §_-AY§.§_-CK§.§_-Ob§(_loc1_);
               if(_loc4_ || _loc3_)
               {
                  _loc1_.visible = false;
               }
            }
         }
      }
      
      public function §_-bN§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §§push(param1);
            while(true)
            {
               if(§§pop() == this.§_-JF§)
               {
                  addr92:
                  return;
               }
               while(true)
               {
                  this.§_-JF§ = param1;
                  addr85:
                  §§goto(addr80);
               }
            }
            addr80:
            while(true)
            {
               if(!_loc3_)
               {
                  continue loop0;
               }
               continue loop1;
            }
            return;
         }
         §§goto(addr76);
      }
      
      private function §_-bh§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§_-e6§ == 1);
            if(!(_loc1_ && this))
            {
               if(!§§pop())
               {
                  loop3:
                  while(true)
                  {
                     §§pop();
                     addr133:
                     while(true)
                     {
                        §§push(this.§_-1V§.length > 0);
                        if(_loc2_ || _loc1_)
                        {
                           break;
                        }
                        continue loop3;
                     }
                  }
                  addr132:
               }
               while(§§pop())
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  addr118:
                  if(_loc2_)
                  {
                     return;
                  }
                  §§goto(addr133);
               }
               while(true)
               {
                  §§push(§_-S2§.§_-qy§);
                  if(_loc2_)
                  {
                     §§push(this.§_-FQ§.x - this.§_-2y§);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(§§pop() * §_-S2§.§_-4-§);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  if(§§pop() <= 0)
                  {
                     if(!(_loc1_ && this))
                     {
                        this.§_-LH§();
                     }
                     if(_loc2_ || _loc1_)
                     {
                        break;
                     }
                  }
                  else
                  {
                     this.§_-FQ§.x -= this.§_-2y§;
                  }
               }
               return;
            }
            §§goto(addr132);
         }
         §§goto(addr118);
      }
      
      private function §_-LH§() : void
      {
      }
   }
}
