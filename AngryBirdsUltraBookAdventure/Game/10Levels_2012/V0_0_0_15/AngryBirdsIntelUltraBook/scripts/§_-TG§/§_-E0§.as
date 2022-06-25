package §_-TG§
{
   import §_-0BH§.§_-FK§;
   import §_-0DG§.§_-09t§;
   import §_-0DG§.§_-a2§;
   import §_-4g§.§_-pX§;
   import §_-8d§.§_-J§;
   import §_-8d§.§_-vz§;
   import §_-Ga§.§_-bm§;
   import §_-N3§.§_-Hv§;
   import §_-N3§.§_-Zc§;
   import §_-by§.§_-Tr§;
   import §_-uY§.Sprite;
   import §_-uY§.§_-09b§;
   import §_-uY§.§_-2p§;
   import §_-z4§.Texture;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-E0§
   {
      
      public static const §_-ex§:int = 0;
      
      public static const §_-Zj§:int = 1;
      
      public static const §_-03t§:int = 2;
      
      public static const §_-yK§:int = 3;
      
      public static const §_-pu§:int = 5;
      
      public static const §_-rO§:int = 3151368;
      
      protected static const §_-Ut§:int = 8;
      
      protected static const §_-zg§:int = 0;
      
      public static const BIRD_LAUNCH_FORCE:Number = 46.25;
      
      public static const BIRD_LAUNCH_FORCE_GREEN:Number = 52.5;
      
      protected static const §_-KG§:Number = -0.7;
      
      protected static const §_-RU§:Number = 0;
      
      protected static var §_-QK§:Texture;
      
      public static const §_-0Al§:Number = 0.4;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-ex§ = 0;
            loop0:
            while(true)
            {
               §_-Zj§ = 1;
               loop1:
               while(true)
               {
                  §_-03t§ = 2;
                  loop2:
                  while(true)
                  {
                     §_-yK§ = 3;
                     while(true)
                     {
                        §_-pu§ = 5;
                        addr156:
                        addr105:
                        while(true)
                        {
                           §_-rO§ = 3151368;
                           continue loop0;
                        }
                        if(!(_loc2_ && _loc1_))
                        {
                           BIRD_LAUNCH_FORCE_GREEN = 52.5;
                           loop9:
                           while(!(_loc2_ && §_-E0§))
                           {
                              §_-KG§ = -0.7;
                              while(true)
                              {
                                 §_-RU§ = 0;
                                 continue loop1;
                                 addr29:
                                 if(_loc1_ || _loc2_)
                                 {
                                    if(_loc2_ && _loc2_)
                                    {
                                       continue loop9;
                                    }
                                    if(_loc2_)
                                    {
                                       continue loop0;
                                    }
                                    if(_loc1_)
                                    {
                                       §§goto(addr47);
                                    }
                                    else
                                    {
                                       §§goto(addr156);
                                    }
                                 }
                              }
                              return;
                           }
                           while(true)
                           {
                              if(!(_loc1_ || §_-E0§))
                              {
                                 continue loop2;
                              }
                              addr98:
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§goto(addr105);
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §_-zg§ = 0;
                                    continue loop2;
                                    §§goto(addr98);
                                 }
                                 addr129:
                              }
                              §§goto(addr69);
                           }
                           addr69:
                           addr91:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      public var §_-6A§:§_-00u§;
      
      public var §_-c§:Number;
      
      public var §_-l1§:Number;
      
      public var §_-0En§:Number;
      
      protected var §_-ut§:Number;
      
      protected var §_-jY§:Number;
      
      protected var §_-Tn§:Number;
      
      protected var §_-08N§:Number;
      
      public var §_-7P§:Number;
      
      public var §_-M4§:Boolean = false;
      
      protected var §_-Fn§:Number;
      
      public var §_-j9§:Vector.<§_-pR§>;
      
      public var §_-eE§:int;
      
      public var §_-b§:int;
      
      public var §_-0CK§:Number;
      
      public var §_-wx§:Sprite;
      
      public var §_-Yy§:int = 0;
      
      public var §_-AU§:Number = 0;
      
      public var §_-oy§:Array;
      
      public var §_-lp§:Array;
      
      public var mSlingShotState:int;
      
      public var §_-0Dz§:Boolean;
      
      public var mDragging:Boolean = false;
      
      protected var §_-Js§:Boolean = false;
      
      public var §_-Rl§:Number;
      
      protected var §_-FQ§:Sprite;
      
      protected var §_-08a§:§_-2p§;
      
      protected var §_-03K§:§_-2p§;
      
      protected var §_-0A8§:Sprite;
      
      protected var §_-0B6§:Sprite;
      
      protected var §_-O-§:Sprite;
      
      protected var §_-hP§:§_-09b§;
      
      protected var §_-0Bj§:§_-09b§;
      
      private var §_-fN§:Number = 0;
      
      private var §_-em§:int = 0;
      
      protected var §_-CF§:Number = -0.7;
      
      protected var §_-NG§:Number = 0;
      
      public function §_-E0§(param1:§_-00u§, param2:§_-bm§, param3:Sprite)
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:int = 0;
         var _loc5_:§_-Tr§ = null;
         if(_loc7_ || param1)
         {
            this.§_-j9§ = new Vector.<§_-pR§>();
            loop0:
            while(true)
            {
               super();
               while(true)
               {
                  this.§_-6A§ = param1;
                  loop2:
                  while(!(_loc6_ && param3))
                  {
                     this.§_-FQ§ = param3;
                     loop3:
                     while(true)
                     {
                        if(!param2)
                        {
                           §_-FK§.log("WARNING: LevelSlingshot(), slingshot information of this level is missing");
                           break;
                        }
                        continue loop0;
                        addr59:
                        if(_loc6_ && this)
                        {
                           continue;
                        }
                        if(_loc6_)
                        {
                           continue loop2;
                        }
                        _loc4_ = 0;
                        if(!(_loc6_ && param2))
                        {
                           addr40:
                           if(_loc7_ || param2)
                           {
                              loop8:
                              while(true)
                              {
                                 if(true)
                                 {
                                    while(_loc4_ < param2.§_-9m§)
                                    {
                                       _loc5_ = param2.§_-gz§(_loc4_);
                                       if(_loc7_)
                                       {
                                          this.§_-01V§(_loc5_.id,_loc5_.x,_loc5_.y);
                                          if(!_loc6_)
                                          {
                                             _loc4_++;
                                          }
                                       }
                                    }
                                    if(_loc7_)
                                    {
                                       this.§_-em§ = this.§_-LO§();
                                       if(_loc7_)
                                       {
                                          this.§_-eE§ = 0;
                                          loop10:
                                          while(true)
                                          {
                                             if(this.§_-j9§.length > 0)
                                             {
                                                this.§_-05e§(§_-ex§);
                                                while(true)
                                                {
                                                   loop12:
                                                   while(true)
                                                   {
                                                      loop13:
                                                      while(true)
                                                      {
                                                         this.§_-Rl§ = 0;
                                                         loop14:
                                                         while(true)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               while(_loc7_)
                                                               {
                                                                  §§push(§_-FK§);
                                                                  §§push("WARNING: LevelSlingshot(), slingshot does not have any bird information ");
                                                                  if(_loc7_)
                                                                  {
                                                                     §§push(this.§_-c§);
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc7_)
                                                                        {
                                                                           §§push(§§pop() + " ");
                                                                           if(_loc7_ || param2)
                                                                           {
                                                                           }
                                                                           addr279:
                                                                           §§pop().log(§§pop());
                                                                           while(true)
                                                                           {
                                                                              this.§_-05e§(§_-yK§);
                                                                              §§goto(addr237);
                                                                           }
                                                                           addr280:
                                                                        }
                                                                        §§push(this.§_-l1§);
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                  }
                                                                  §§goto(addr279);
                                                               }
                                                               continue loop10;
                                                               addr244:
                                                            }
                                                            this.§_-Lo§();
                                                            loop15:
                                                            while(true)
                                                            {
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     if(!_loc6_)
                                                                     {
                                                                        this.update(0,true);
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           this.§_-0Ee§();
                                                                           while(_loc7_)
                                                                           {
                                                                              this.updateAnimations(0);
                                                                              if(_loc7_)
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(_loc7_ || param3)
                                                                                       {
                                                                                          break loop8;
                                                                                       }
                                                                                       break loop3;
                                                                                    }
                                                                                    continue loop15;
                                                                                 }
                                                                                 continue loop16;
                                                                              }
                                                                           }
                                                                           addr217:
                                                                           continue loop13;
                                                                        }
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               continue loop14;
                                                            }
                                                            while(true)
                                                            {
                                                               continue loop12;
                                                            }
                                                            addr237:
                                                            §§goto(addr280);
                                                         }
                                                      }
                                                   }
                                                }
                                                addr232:
                                             }
                                             §§goto(addr244);
                                          }
                                       }
                                       §§goto(addr237);
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    this.§_-6l§();
                                    addr52:
                                    while(!(_loc6_ && param1))
                                    {
                                       §§goto(addr59);
                                    }
                                    continue loop0;
                                 }
                              }
                              return;
                              addr47:
                           }
                           while(true)
                           {
                              §§goto(addr49);
                              §§goto(addr40);
                           }
                           addr85:
                        }
                        §§goto(addr52);
                     }
                     if(!_loc6_)
                     {
                        this.§_-05e§(§_-yK§);
                        §§goto(addr217);
                     }
                     §§goto(addr232);
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-FQ§;
      }
      
      public function get timeOfLastBirdShot() : Number
      {
         return this.§_-fN§;
      }
      
      public function get birdsAvailable() : Boolean
      {
         return this.§_-eE§ < this.§_-j9§.length;
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            if(this.§_-j9§.length > 0)
            {
               this.§_-N6§(0);
               continue;
            }
            loop1:
            while(true)
            {
               this.§_-j9§ = null;
               loop2:
               while(true)
               {
                  §§push(this.§_-FQ§);
                  if(!_loc2_)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(this.§_-FQ§);
                           addr105:
                           while(true)
                           {
                              §§pop().dispose();
                              addr106:
                              addr96:
                              loop7:
                              while(true)
                              {
                                 this.§_-FQ§ = null;
                                 addr94:
                                 while(true)
                                 {
                                    if(!_loc2_)
                                    {
                                       break loop7;
                                    }
                                    continue loop7;
                                 }
                              }
                           }
                        }
                        addr103:
                     }
                     while(true)
                     {
                        this.§_-wx§ = null;
                        loop5:
                        while(!(_loc2_ && _loc1_))
                        {
                           this.§_-oy§ = null;
                           while(true)
                           {
                              if(_loc2_ && _loc2_)
                              {
                                 continue loop5;
                              }
                              if(_loc1_)
                              {
                                 continue;
                              }
                              §§goto(addr103);
                           }
                           §§goto(addr106);
                        }
                        continue loop2;
                        §§goto(addr96);
                     }
                     if(!(_loc2_ && this))
                     {
                        if(_loc1_)
                        {
                           return;
                        }
                        continue loop0;
                     }
                     continue loop1;
                  }
                  §§goto(addr105);
               }
            }
         }
      }
      
      public function §_-v4§(param1:String, param2:Number, param3:Number, param4:int = -1) : §_-pR§
      {
         var _loc5_:§_-pR§;
         (_loc5_ = this.§_-01V§(param1,param2,param3,param4)).§_-0A4§();
         return _loc5_;
      }
      
      protected function §_-01V§(param1:String, param2:Number, param3:Number, param4:int = -1) : §_-pR§
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§_-pR§ = new §_-pR§(this,new Sprite(),param1,param2,param3);
         if(_loc7_ || this)
         {
            if(param4 >= 0)
            {
               this.§_-j9§.splice(param4,0,_loc5_);
               loop0:
               while(true)
               {
                  if(_loc7_)
                  {
                     if(!(_loc6_ && param1))
                     {
                        while(true)
                        {
                           continue loop0;
                        }
                        addr87:
                     }
                     else
                     {
                        while(true)
                        {
                           this.§_-j9§.push(_loc5_);
                        }
                        addr91:
                     }
                  }
                  while(true)
                  {
                     continue loop0;
                  }
               }
               return _loc5_;
            }
            §§goto(addr91);
         }
         §§goto(addr87);
      }
      
      public function §_-05e§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.mSlingShotState = param1;
            loop0:
            while(true)
            {
               §§push(this.mSlingShotState);
               loop1:
               while(true)
               {
                  §§push(§_-ex§);
                  loop2:
                  while(§§pop() != §§pop())
                  {
                     §§push(this.mSlingShotState);
                     loop3:
                     while(true)
                     {
                        §§push(§_-Zj§);
                        loop4:
                        while(§§pop() != §§pop())
                        {
                           §§push(this.mSlingShotState);
                           while(true)
                           {
                              §§push(§_-03t§);
                              addr259:
                              loop6:
                              while(true)
                              {
                                 if(_loc3_ || param1)
                                 {
                                    if(§§pop() == §§pop())
                                    {
                                       break;
                                    }
                                    §§push(this.mSlingShotState);
                                    loop7:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop3;
                                       }
                                       if(_loc2_)
                                       {
                                          break;
                                       }
                                       §§push(§_-yK§);
                                       while(§§pop() != §§pop())
                                       {
                                          continue loop7;
                                       }
                                       loop27:
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             this.§_-Tf§();
                                             loop28:
                                             while(true)
                                             {
                                                this.§_-0CK§ = 2000;
                                                addr218:
                                                addr29:
                                                while(!_loc3_)
                                                {
                                                   continue loop28;
                                                }
                                                addr57:
                                                loop11:
                                                while(true)
                                                {
                                                   this.mDragging = false;
                                                   if(_loc2_)
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc2_)
                                                   {
                                                      if(!(_loc2_ && _loc3_))
                                                      {
                                                         if(_loc3_ || param1)
                                                         {
                                                            return;
                                                         }
                                                         addr208:
                                                         while(true)
                                                         {
                                                            this.mDragging = false;
                                                            addr211:
                                                            while(true)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               this.§_-Js§ = false;
                                                            }
                                                         }
                                                      }
                                                      while(!(_loc2_ && param1))
                                                      {
                                                         if(!_loc2_)
                                                         {
                                                            this.§_-Tf§();
                                                            while(true)
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  continue loop27;
                                                               }
                                                               if(!(_loc2_ && param1))
                                                               {
                                                                  this.§_-j9§[this.§_-eE§].setPosition(this.§_-Tn§ - this.§_-j9§[this.§_-eE§].radius * Math.cos(this.§_-AU§ / (180 / Math.PI)),this.§_-08N§ + this.§_-j9§[this.§_-eE§].radius * Math.sin(this.§_-AU§ / (180 / Math.PI)));
                                                                  while(_loc3_)
                                                                  {
                                                                     if(_loc3_ || _loc3_)
                                                                     {
                                                                        if(_loc2_)
                                                                        {
                                                                           break loop2;
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                     addr282:
                                                                     while(true)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                  }
                                                                  §§goto(addr218);
                                                                  addr117:
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc3_ || param1))
                                                                     {
                                                                        break loop6;
                                                                        addr247:
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  addr240:
                                                               }
                                                            }
                                                            addr132:
                                                         }
                                                         while(true)
                                                         {
                                                            if(!(_loc2_ && param1))
                                                            {
                                                               this.§_-0CK§ = 0;
                                                               §§goto(addr282);
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               addr314:
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         this.§_-Tf§();
                                                         §§goto(addr240);
                                                         addr277:
                                                         this.§_-Js§ = false;
                                                      }
                                                      §§goto(addr247);
                                                   }
                                                   §§goto(addr117);
                                                }
                                                while(true)
                                                {
                                                   if(_loc3_ || param1)
                                                   {
                                                      if(_loc3_ || _loc2_)
                                                      {
                                                         §§goto(addr29);
                                                      }
                                                      §§goto(addr211);
                                                   }
                                                   §§goto(addr132);
                                                }
                                             }
                                          }
                                          addr270:
                                          while(!(_loc3_ || this))
                                          {
                                             break loop4;
                                          }
                                          §§goto(addr277);
                                       }
                                    }
                                    continue loop1;
                                 }
                                 continue loop2;
                              }
                              while(true)
                              {
                                 this.§_-0CK§ = 10000;
                                 §§goto(addr270);
                              }
                              if(_loc2_ && _loc2_)
                              {
                                 continue;
                              }
                              §§push(§_-pu§);
                              if(!_loc2_)
                              {
                                 if(!(_loc3_ || _loc2_))
                                 {
                                    §§goto(addr259);
                                 }
                                 if(!(_loc3_ || param1))
                                 {
                                    continue loop4;
                                 }
                                 if(§§pop() == §§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       while(true)
                                       {
                                          if(!this.mDragging)
                                          {
                                             this.§_-Tf§();
                                             §§goto(addr57);
                                          }
                                       }
                                       addr205:
                                    }
                                    §§goto(addr208);
                                 }
                                 §§goto(addr29);
                              }
                              §§goto(addr231);
                           }
                        }
                        while(true)
                        {
                           this.§_-Tf§();
                           §§goto(addr292);
                        }
                     }
                  }
                  while(true)
                  {
                     this.§_-Tf§();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr205);
      }
      
      public function get §_-0AM§() : §_-00u§
      {
         return this.§_-6A§;
      }
      
      public function §_-8A§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.mSlingShotState == §_-yK§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     §§pop();
                     addr44:
                     return this.§_-0CK§ <= 0;
                  }
               }
            }
         }
         §§goto(addr44);
      }
      
      private function §_-6l§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:§_-J§ = this.getSlingshotAnimation();
         var _loc2_:§_-vz§ = _loc1_.getFrame(0);
         var _loc3_:§_-vz§ = _loc1_.getFrame(1);
         if(!(_loc5_ && this))
         {
            this.§_-hP§ = new §_-09b§(_loc2_.texture);
            while(true)
            {
               §§push(this.§_-hP§);
               addr248:
               loop1:
               while(true)
               {
                  §§push(_loc2_.scale);
                  addr250:
                  while(true)
                  {
                     §§pop().scaleX = §§pop();
                     continue loop1;
                  }
               }
            }
            addr258:
         }
         loop3:
         while(true)
         {
            §§push(this.§_-hP§);
            if(!_loc5_)
            {
               §§push(_loc2_.scale);
               if(_loc4_ || _loc1_)
               {
                  §§pop().scaleY = §§pop();
                  loop4:
                  while(true)
                  {
                     this.§_-0Bj§ = new §_-09b§(_loc3_.texture);
                     while(!_loc5_)
                     {
                        §§push(this.§_-0Bj§);
                        loop6:
                        while(true)
                        {
                           §§push(_loc3_.scale);
                           addr207:
                           while(true)
                           {
                              §§pop().scaleX = §§pop();
                              continue loop6;
                           }
                        }
                        loop9:
                        for(; !(_loc5_ && _loc1_); if(_loc5_ && _loc3_)
                        {
                           continue;
                        },if(!_loc4_)
                        {
                           continue loop4;
                        },§§goto(addr102))
                        {
                           this.§_-N4§();
                           loop10:
                           while(true)
                           {
                              this.§_-yR§();
                              loop11:
                              while(true)
                              {
                                 this.§_-wx§ = new Sprite();
                                 loop12:
                                 while(true)
                                 {
                                    §§push(this.§_-FQ§);
                                    loop13:
                                    while(true)
                                    {
                                       §§pop().addChild(this.§_-hP§);
                                       loop14:
                                       while(_loc4_ || this)
                                       {
                                          if(!_loc5_)
                                          {
                                             §§push(this.§_-FQ§);
                                             loop15:
                                             while(true)
                                             {
                                                §§pop().addChild(this.§_-0A8§);
                                                continue loop12;
                                                addr125:
                                                loop17:
                                                while(true)
                                                {
                                                   if(_loc4_ || this)
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         break;
                                                      }
                                                      §§pop().addChild(this.§_-wx§);
                                                      loop18:
                                                      while(_loc4_)
                                                      {
                                                         §§push(this.§_-FQ§);
                                                         loop19:
                                                         while(!_loc5_)
                                                         {
                                                            §§pop().addChild(this.§_-O-§);
                                                            loop20:
                                                            while(true)
                                                            {
                                                               §§push(this.§_-FQ§);
                                                               while(_loc4_)
                                                               {
                                                                  §§pop().addChild(this.§_-0B6§);
                                                                  while(true)
                                                                  {
                                                                     if(!_loc5_)
                                                                     {
                                                                        if(!(_loc5_ && _loc1_))
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        continue loop18;
                                                                        continue loop18;
                                                                     }
                                                                     continue loop20;
                                                                     addr72:
                                                                     §§pop().addChild(this.§_-0Bj§);
                                                                     do
                                                                     {
                                                                        §§push(this);
                                                                        §§push(this.§_-l1§);
                                                                        if(!_loc5_)
                                                                        {
                                                                           §§push(§§pop() + 8.5);
                                                                        }
                                                                        §§pop().§_-0En§ = §§pop();
                                                                     }
                                                                     while(!_loc4_);
                                                                     
                                                                     if(_loc4_)
                                                                     {
                                                                        if(!_loc5_)
                                                                        {
                                                                           if(!(_loc5_ && this))
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 return;
                                                                              }
                                                                              continue loop10;
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        continue loop12;
                                                                     }
                                                                  }
                                                                  §§push(this.§_-FQ§);
                                                                  continue loop4;
                                                                  if(_loc5_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§goto(addr72);
                                                               }
                                                               continue loop19;
                                                            }
                                                         }
                                                         continue loop17;
                                                      }
                                                      continue loop11;
                                                   }
                                                   continue loop15;
                                                }
                                                continue loop13;
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr258);
                                          }
                                       }
                                       §§goto(addr208);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     continue loop3;
                  }
               }
               §§goto(addr250);
            }
            §§goto(addr248);
         }
      }
      
      protected function getSlingshotAnimation() : §_-J§
      {
         return this.§_-6A§.animationManager.getAnimation("SLINGSHOT");
      }
      
      public function §_-N4§() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:Rectangle = new Rectangle(0,0,100,100);
         if(_loc3_ || _loc3_)
         {
            this.§_-ut§ = this.§_-c§;
            while(true)
            {
               loop1:
               while(true)
               {
                  this.§_-jY§ = this.§_-l1§;
                  do
                  {
                     this.§_-Fn§ = §_-L8§.§_-Cr§;
                  }
                  while(_loc2_ && _loc1_);
                  
                  if(_loc3_)
                  {
                     while(false)
                     {
                        continue loop1;
                     }
                     _loc1_ = null;
                     return;
                     addr67:
                  }
                  break;
               }
            }
         }
         §§goto(addr67);
      }
      
      protected function §_-yR§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:BitmapData = null;
         if(!_loc4_)
         {
            if(!§_-QK§)
            {
               if(_loc3_)
               {
                  addr25:
                  _loc2_ = new BitmapData(18,26,true,4281341704);
                  if(!_loc4_)
                  {
                     §_-QK§ = this.§_-6A§.textureManager.getTextureFromBitmapData(_loc2_);
                     addr42:
                     this.§_-O-§ = new Sprite();
                  }
                  §§goto(addr42);
               }
               var _loc1_:§_-09b§ = new §_-09b§(§_-QK§);
               if(_loc3_)
               {
                  _loc1_.rotation = Math.PI;
                  loop0:
                  while(true)
                  {
                     _loc1_.x = _loc1_.width / 2;
                     loop1:
                     while(true)
                     {
                        _loc1_.y = _loc1_.height / 2;
                        while(true)
                        {
                           this.§_-O-§.addChild(_loc1_);
                           addr163:
                           while(!_loc4_)
                           {
                              this.§_-0A8§ = new Sprite();
                              continue loop0;
                           }
                           addr109:
                           continue loop1;
                           if(_loc4_ && _loc1_)
                           {
                              continue;
                           }
                           this.§_-03K§ = new §_-2p§(2,2,§_-rO§);
                           loop9:
                           while(_loc3_ || _loc1_)
                           {
                              this.§_-0B6§.addChild(this.§_-03K§);
                              if(!(_loc4_ && _loc2_))
                              {
                                 if(!_loc4_)
                                 {
                                    if(_loc4_)
                                    {
                                       continue loop0;
                                    }
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.§_-0A8§.addChild(this.§_-08a§);
                                       addr123:
                                       while(!_loc4_)
                                       {
                                          while(true)
                                          {
                                             this.§_-0B6§ = new Sprite();
                                             break loop9;
                                          }
                                       }
                                       §§goto(addr163);
                                    }
                                    addr134:
                                 }
                                 return;
                              }
                           }
                           while(_loc3_)
                           {
                              §§goto(addr109);
                              §§goto(addr94);
                           }
                           addr94:
                           §§goto(addr123);
                        }
                     }
                  }
               }
               §§goto(addr125);
            }
            §§goto(addr42);
         }
         §§goto(addr25);
      }
      
      public function updateAnimations(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.§_-08N§);
         if(!_loc6_)
         {
            §§push(§§pop() / §_-00u§.§_-lY§);
            if(_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(this.§_-Tn§);
         if(_loc7_ || _loc2_)
         {
            §§push(§§pop() / §_-00u§.§_-lY§);
            if(_loc7_ || _loc2_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(3.5);
         if(_loc7_ || _loc3_)
         {
            §§push(8);
            §§push(this.§_-Fn§);
            if(!_loc6_)
            {
               §§push(this.§_-7P§);
               if(!(_loc6_ && _loc3_))
               {
                  addr77:
                  §§push(§§pop() - §§pop());
                  if(!_loc6_)
                  {
                     §§push(this.§_-Fn§);
                  }
                  §§push(§§pop() + §§pop() * §§pop());
                  if(!(_loc6_ && _loc3_))
                  {
                     addr87:
                     var _loc4_:Number = §§pop();
                     if(!_loc6_)
                     {
                        §§push(this.§_-O-§);
                        loop0:
                        while(true)
                        {
                           §§push(_loc3_);
                           loop1:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              while(true)
                              {
                                 §§push(this.§_-O-§);
                                 loop3:
                                 for(; _loc7_; while(true)
                                 {
                                    §§push(this.§_-O-§);
                                    if(_loc6_ && _loc3_)
                                    {
                                       continue loop3;
                                    }
                                    §§push(this.§_-AU§);
                                    if(_loc7_ || _loc3_)
                                    {
                                       if(_loc6_)
                                       {
                                          continue loop1;
                                       }
                                       §§push(-§§pop());
                                       if(!_loc6_)
                                       {
                                          addr565:
                                          §§push(§§pop() / (180 / Math.PI));
                                       }
                                       §§goto(addr570);
                                    }
                                    §§goto(addr565);
                                 },§§goto(addr585))
                                 {
                                    §§push(_loc2_);
                                    while(true)
                                    {
                                       §§pop().y = §§pop();
                                       continue loop3;
                                       addr570:
                                       if(_loc6_ && param1)
                                       {
                                          continue;
                                       }
                                       §§pop().rotation = §§pop();
                                       while(true)
                                       {
                                          §§push(this.§_-hP§);
                                          loop7:
                                          while(true)
                                          {
                                             §§push(this.§_-c§);
                                             addr534:
                                             while(true)
                                             {
                                                §§push(§_-00u§.§_-lY§);
                                                addr536:
                                                while(true)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   addr537:
                                                   while(true)
                                                   {
                                                      §§push(3);
                                                      addr538:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         addr539:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop();
                                                            continue loop7;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          if(!(_loc7_ || param1))
                                          {
                                             continue;
                                          }
                                          §§goto(addr259);
                                       }
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                        }
                     }
                     §§goto(addr447);
                  }
                  §§goto(addr87);
               }
               §§push(§§pop() / §§pop());
            }
            §§goto(addr77);
         }
         §§goto(addr87);
      }
      
      public function useMightyEagle() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         loop0:
         while(true)
         {
            if(this.§_-j9§.length > 0)
            {
               this.§_-N6§(0,true);
               continue;
            }
            loop1:
            while(true)
            {
               this.§_-0F2§();
               loop2:
               while(true)
               {
                  this.§_-01V§("BIRD_SARDINE",this.§_-c§,this.§_-l1§);
                  while(!_loc2_)
                  {
                     if(!_loc2_)
                     {
                        this.§_-05e§(§_-03t§);
                        if(!(_loc2_ && _loc1_))
                        {
                           if(_loc1_)
                           {
                              break loop2;
                           }
                           continue loop2;
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
                  continue loop1;
               }
               return;
            }
         }
      }
      
      protected function §_-0F2§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-pX§.playSound("Bird_Red_Destroyed1");
         }
      }
      
      public function makeBirdsJumpForJoy() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§_-05e§(§_-pu§);
         }
      }
      
      public function §_-Tf§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            §§push(this);
            §§push(this.§_-ut§);
            §§push(this.§_-jY§);
            if(!(_loc1_ && this))
            {
               §§push(this.§_-Fn§);
               if(!_loc1_)
               {
                  §§push(§§pop() / 8);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().setNewCoordinatesForRubber(§§pop(),§§pop());
         }
      }
      
      public function setNewCoordinatesForRubber(param1:Number, param2:Number, param3:Boolean = true) : Boolean
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         if(_loc9_ || param3)
         {
            §§push(this.§_-Tn§);
            loop0:
            while(true)
            {
               §§push(param1);
               loop1:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(this.§_-08N§);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(param2);
                                    addr1288:
                                    while(true)
                                    {
                                       §§push(§§pop() == §§pop());
                                    }
                                    addr1186:
                                    if(_loc10_ && param1)
                                    {
                                       continue;
                                    }
                                    §§push(this.§_-Fn§);
                                    loop17:
                                    while(true)
                                    {
                                       §§push(param1);
                                       loop18:
                                       while(true)
                                       {
                                          §§push(this.§_-ut§);
                                          loop19:
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                             loop20:
                                             while(true)
                                             {
                                                §§push(§§pop() * §§pop());
                                                loop21:
                                                while(true)
                                                {
                                                   §§push(this.§_-7P§);
                                                   loop22:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() / §§pop());
                                                      loop23:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         loop24:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            loop25:
                                                            while(_loc9_)
                                                            {
                                                               param1 = §§pop();
                                                               loop26:
                                                               while(true)
                                                               {
                                                                  §§push(this.§_-jY§);
                                                                  loop27:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§_-Fn§);
                                                                     loop28:
                                                                     while(true)
                                                                     {
                                                                        §§push(param2);
                                                                        loop29:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§_-jY§);
                                                                           loop30:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              loop31:
                                                                              while(_loc9_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 loop32:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§_-7P§);
                                                                                    loop33:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() / §§pop());
                                                                                       loop34:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          loop35:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             loop36:
                                                                                             while(true)
                                                                                             {
                                                                                                param2 = §§pop();
                                                                                                loop37:
                                                                                                while(true)
                                                                                                {
                                                                                                   this.§_-7P§ = this.§_-Fn§;
                                                                                                   loop38:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      loop39:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§_-Tn§ = param1;
                                                                                                         loop40:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            this.§_-08N§ = param2;
                                                                                                            loop41:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               this.§_-AU§ = Math.atan2(-(this.§_-08N§ - this.§_-jY§),this.§_-Tn§ - this.§_-ut§);
                                                                                                               loop42:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this);
                                                                                                                  §§push(this.§_-AU§);
                                                                                                                  if(_loc9_ || this)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * (180 / Math.PI));
                                                                                                                  }
                                                                                                                  §§pop().§_-AU§ = §§pop();
                                                                                                                  loop43:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.mDragging);
                                                                                                                     loop44:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(false);
                                                                                                                        loop45:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop() == §§pop())
                                                                                                                           {
                                                                                                                              loop46:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this);
                                                                                                                                 §§push(param1);
                                                                                                                                 if(!_loc10_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + this.§_-CF§);
                                                                                                                                 }
                                                                                                                                 §§pop().§_-Tn§ = §§pop();
                                                                                                                                 loop47:
                                                                                                                                 for(; !(_loc10_ && param3); while(!(_loc10_ && param1))
                                                                                                                                 {
                                                                                                                                    §§goto(addr673);
                                                                                                                                    §§push(this.§_-AU§);
                                                                                                                                 })
                                                                                                                                 {
                                                                                                                                    §§push(this);
                                                                                                                                    §§push(param2);
                                                                                                                                    if(!(_loc10_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + this.§_-NG§);
                                                                                                                                    }
                                                                                                                                    §§pop().§_-08N§ = §§pop();
                                                                                                                                    loop48:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       this.§_-AU§ = -160;
                                                                                                                                       while(!_loc10_)
                                                                                                                                       {
                                                                                                                                          addr895:
                                                                                                                                          if(!(_loc9_ || this))
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          if(_loc9_ || param3)
                                                                                                                                          {
                                                                                                                                             this.§_-7P§ = _loc7_;
                                                                                                                                             while(!(_loc10_ && this))
                                                                                                                                             {
                                                                                                                                                if(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   continue loop48;
                                                                                                                                                }
                                                                                                                                                this.§_-Tn§ = param1;
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc9_ || param3)
                                                                                                                                                   {
                                                                                                                                                      this.§_-08N§ = param2;
                                                                                                                                                      continue loop26;
                                                                                                                                                   }
                                                                                                                                                   addr1219:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(param3);
                                                                                                                                                      addr1220:
                                                                                                                                                      while(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§_-ut§);
                                                                                                                                                            if(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               continue loop24;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1186);
                                                                                                                                                         }
                                                                                                                                                         continue loop6;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1221);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             loop56:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(4);
                                                                                                                                                if(_loc10_ && param3)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                loop57:
                                                                                                                                                for(; !(_loc10_ && param3); while(!(_loc10_ && param2))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr1026);
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                })
                                                                                                                                                {
                                                                                                                                                   _loc6_ = §§pop();
                                                                                                                                                   loop58:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§_-Fn§);
                                                                                                                                                      loop59:
                                                                                                                                                      for(; _loc9_; if(!(_loc10_ && param1))
                                                                                                                                                      {
                                                                                                                                                         continue loop27;
                                                                                                                                                      })
                                                                                                                                                      {
                                                                                                                                                         §§push(2);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                            continue loop57;
                                                                                                                                                            loop71:
                                                                                                                                                            while(!(_loc10_ && param2))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc4_);
                                                                                                                                                               loop72:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                  loop73:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                     loop74:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        loop75:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                                                                           loop76:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop4;
                                                                                                                                                                              }
                                                                                                                                                                              loop77:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 loop78:
                                                                                                                                                                                 for(; !_loc10_; while(_loc9_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr735);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr778);
                                                                                                                                                                                 })
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       loop79:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          loop80:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§_-AU§);
                                                                                                                                                                                             addr913:
                                                                                                                                                                                             addr1026:
                                                                                                                                                                                             loop81:
                                                                                                                                                                                             for(; !(_loc10_ && param1); if(_loc10_ && param3)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             },§§goto(addr523),§§push(_loc8_))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(-90);
                                                                                                                                                                                                loop82:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                                                                   loop83:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      loop84:
                                                                                                                                                                                                      while(_loc9_ || param3)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            addr932:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() < §§pop());
                                                                                                                                                                                                            }
                                                                                                                                                                                                            loop116:
                                                                                                                                                                                                            while(_loc9_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               loop117:
                                                                                                                                                                                                               while(!(_loc10_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§_-7P§);
                                                                                                                                                                                                                  loop118:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                                                                                                                     loop119:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                        loop120:
                                                                                                                                                                                                                        while(_loc9_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                           loop121:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc10_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc9_ || param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop57;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(_loc10_ && param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 param2 = §§pop();
                                                                                                                                                                                                                                 loop122:
                                                                                                                                                                                                                                 while(_loc9_ || param3)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr895);
                                                                                                                                                                                                                                    addr269:
                                                                                                                                                                                                                                    if(!(_loc9_ || param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(this.§_-7P§);
                                                                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(this.§_-Fn§);
                                                                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc9_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc9_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc9_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc10_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc10_ && param3))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc10_ && param2)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop21;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr109:
                                                                                                                                                                                                                                                            §§push(0.8);
                                                                                                                                                                                                                                                            if(!(_loc10_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc10_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop31;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr133:
                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                           if(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc10_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr147:
                                                                                                                                                                                                                                                                                 §§push(§§pop() >= §§pop());
                                                                                                                                                                                                                                                                                 loop136:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc10_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc10_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc9_ || param1)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr159:
                                                                                                                                                                                                                                                                                             if(_loc9_ || this)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   loop131:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         loop132:
                                                                                                                                                                                                                                                                                                         while(!(_loc10_ && this))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc9_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!(_loc10_ && this))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     this.§_-q1§();
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        this.§_-M4§ = false;
                                                                                                                                                                                                                                                                                                                        loop134:
                                                                                                                                                                                                                                                                                                                        while(!(_loc10_ && param3))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop132;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              loop135:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 this.§_-0Dz§ = true;
                                                                                                                                                                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop134;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc10_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue loop58;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       if(_loc10_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue loop40;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(true);
                                                                                                                                                                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop136;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             return §§pop();
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                             addr1001:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop77;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                while(_loc9_ || param1)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(this.§_-AU§);
                                                                                                                                                                                                                                                                                                                                                      addr973:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop71;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr1291:
                                                                                                                                                                                                                                                                                                                                                      §§push(true);
                                                                                                                                                                                                                                                                                                                                                      break loop135;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr1249:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      this.§_-7P§ = Math.sqrt((param2 - this.§_-jY§) * (param2 - this.§_-jY§) + (param1 - this.§_-ut§) * (param1 - this.§_-ut§));
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1002);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                addr1002:
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          addr1000:
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(this.§_-7P§);
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(this.§_-Fn§);
                                                                                                                                                                                                                                                                                                                                             break loop117;
                                                                                                                                                                                                                                                                                                                                             addr499:
                                                                                                                                                                                                                                                                                                                                             if(_loc10_ && param1)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             param2 = §§pop();
                                                                                                                                                                                                                                                                                                                                             if(_loc10_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop47;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             this.§_-7P§ = _loc8_;
                                                                                                                                                                                                                                                                                                                                             if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop42;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                this.§_-Tn§ = param1;
                                                                                                                                                                                                                                                                                                                                                if(_loc10_ && param3)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop26;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   this.§_-08N§ = param2;
                                                                                                                                                                                                                                                                                                                                                   break loop132;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1221);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr817);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(!(_loc9_ || param2))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             continue loop80;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§push(this.§_-ut§);
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                             addr945:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(param1);
                                                                                                                                                                                                                                                                                                                                                addr946:
                                                                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(this.§_-ut§);
                                                                                                                                                                                                                                                                                                                                                   addr948:
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                      addr949:
                                                                                                                                                                                                                                                                                                                                                      while(_loc9_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                         if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            continue loop17;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§push(this.§_-7P§);
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                            continue loop17;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      continue loop29;
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       addr935:
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc9_ || param1)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§goto(addr269);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(!(_loc10_ && param2))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop41;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr507);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          continue loop41;
                                                                                                                                                                                                                                                                                                                                          addr334:
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr351:
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             break loop136;
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          if(_loc9_ || this)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                continue loop135;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             addr360:
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    loop129:
                                                                                                                                                                                                                                                                                                                                    for(; !_loc10_; §§goto(addr133))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc9_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc9_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(this.§_-M4§);
                                                                                                                                                                                                                                                                                                                                                loop130:
                                                                                                                                                                                                                                                                                                                                                while(!(_loc10_ && param3))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr208:
                                                                                                                                                                                                                                                                                                                                                   if(!(_loc10_ && param2))
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         continue loop2;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                                                                                                                      if(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr225:
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc10_ && this))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            addr232:
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc10_ && param3))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                                     if(_loc9_ || param2)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc10_ && param3))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!§§pop())
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              continue loop131;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§pop();
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr260);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           addr259:
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1001);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     loop157:
                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              break loop130;
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           loop150:
                                                                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr615:
                                                                                                                                                                                                                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          break loop76;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr624:
                                                                                                                                                                                                                                                                                                                                                                                          §§push(this.§_-Fn§);
                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                          addr625:
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                             addr626:
                                                                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                addr646:
                                                                                                                                                                                                                                                                                                                                                                                                §§push(Math.abs(this.§_-AU§ - -90 - _loc5_) - _loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               continue loop118;
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            addr715:
                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                               addr716:
                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc9_ || param3))
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        if(_loc9_ || param3)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                                                                 continue loop157;
                                                                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                                                                              addr735:
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1220);
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr225);
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     addr1221:
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop17;
                                                                                                                                                                                                                                                                                                                                                                                                                  this.§_-7P§ = Math.sqrt((this.§_-08N§ - this.§_-jY§) * (this.§_-08N§ - this.§_-jY§) + (this.§_-Tn§ - this.§_-ut§) * (this.§_-Tn§ - this.§_-ut§));
                                                                                                                                                                                                                                                                                                                                                                                                                  return false;
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr932);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         addr652:
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc10_ && param1)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               continue loop117;
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                                                            loop99:
                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(_loc10_ && this)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  while(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(this.§_-jY§);
                                                                                                                                                                                                                                                                                                                                                                                                                        while(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                              continue loop116;
                                                                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                                                                           continue loop19;
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        continue loop30;
                                                                                                                                                                                                                                                                                                                                                                                                                        addr844:
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     continue loop18;
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop22;
                                                                                                                                                                                                                                                                                                                                                                                                                  addr838:
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               if(!(_loc10_ && this))
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  if(!(_loc9_ || param3))
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     continue loop33;
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr715);
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               addr600:
                                                                                                                                                                                                                                                                                                                                                                                                               loop149:
                                                                                                                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  if(_loc10_ && param1)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     continue loop99;
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        addr611:
                                                                                                                                                                                                                                                                                                                                                                                                                        break loop149;
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                     if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        break loop135;
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     continue loop150;
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               continue loop34;
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         addr684:
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr946);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   addr665:
                                                                                                                                                                                                                                                                                                                                                                                                   §§push(Number(§§pop() + §§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                   loop142:
                                                                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      _loc8_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                      addr667:
                                                                                                                                                                                                                                                                                                                                                                                                      if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§push(this.§_-ut§);
                                                                                                                                                                                                                                                                                                                                                                                                      while(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         continue loop81;
                                                                                                                                                                                                                                                                                                                                                                                                         if(!(_loc9_ || param1))
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            continue;
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         addr478:
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               continue loop142;
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop59;
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               continue loop120;
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            addr673:
                                                                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                                                                  §§push(-90);
                                                                                                                                                                                                                                                                                                                                                                                                                  while(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                                                                                        while(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr684);
                                                                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                                                                        continue loop83;
                                                                                                                                                                                                                                                                                                                                                                                                                        addr681:
                                                                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                                                                     continue loop71;
                                                                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                                                                  continue loop82;
                                                                                                                                                                                                                                                                                                                                                                                                                  addr676:
                                                                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                                                                               continue loop121;
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr478);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                                         addr831:
                                                                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               continue loop84;
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr838);
                                                                                                                                                                                                                                                                                                                                                                                                               §§push(param2);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1288);
                                                                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         continue loop23;
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   continue loop43;
                                                                                                                                                                                                                                                                                                                                                                                                   addr666:
                                                                                                                                                                                                                                                                                                                                                                                                   addr649:
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                continue loop116;
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1181);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       §§push(this.§_-7P§);
                                                                                                                                                                                                                                                                                                                                                                                       addr998:
                                                                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                                                          addr999:
                                                                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1000);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    addr1029:
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1290);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr277:
                                                                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§push(this.§_-7P§);
                                                                                                                                                                                                                                                                                                                                                                                    addr280:
                                                                                                                                                                                                                                                                                                                                                                                    while(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(!(_loc10_ && this))
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             if(_loc9_ || param1)
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                if(_loc9_ || param2)
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   addr305:
                                                                                                                                                                                                                                                                                                                                                                                                   if(!(_loc10_ && param3))
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      if(_loc9_ || this)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(this.§_-Fn§);
                                                                                                                                                                                                                                                                                                                                                                                                         if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            continue loop129;
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§push(0.45);
                                                                                                                                                                                                                                                                                                                                                                                                         while(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                                            continue loop129;
                                                                                                                                                                                                                                                                                                                                                                                                            §§goto(addr109);
                                                                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr646);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      §§goto(addr944);
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                                                                         param1 = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                                         break loop122;
                                                                                                                                                                                                                                                                                                                                                                                                         §§goto(addr305);
                                                                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                                                                      addr968:
                                                                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                                                                   §§goto(addr665);
                                                                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                                                                §§goto(addr666);
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                                                                addr556:
                                                                                                                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          param1 = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                          break loop136;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr471);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr479);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 addr277:
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr513);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           continue loop24;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        continue loop78;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     continue loop3;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  continue loop44;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr1002);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                                                                                                                                                                               continue loop78;
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr232);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            addr769:
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr726);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr259);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                                                                                                                         continue loop47;
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr208);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr778:
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                while(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(this.§_-AU§);
                                                                                                                                                                                                                                                                                                                                                      addr571:
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(-90);
                                                                                                                                                                                                                                                                                                                                                            if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                                                               if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr582:
                                                                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc6_);
                                                                                                                                                                                                                                                                                                                                                                        if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           if(_loc9_ || param3)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 if(_loc10_)
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    continue loop75;
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr600);
                                                                                                                                                                                                                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr649);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr956);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr625);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  continue loop72;
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr681);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr676);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         addr751:
                                                                                                                                                                                                                                                                                                                                                         addr1054:
                                                                                                                                                                                                                                                                                                                                                         while(!(_loc10_ && this))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                                                               while(!_loc10_)
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr769);
                                                                                                                                                                                                                                                                                                                                                                  §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                                                                                  if(_loc10_ && this)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     addr448:
                                                                                                                                                                                                                                                                                                                                                                     §§push(this.§_-7P§);
                                                                                                                                                                                                                                                                                                                                                                     if(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        if(!(_loc10_ && this))
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                                                           break loop129;
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        continue loop74;
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr949);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr831);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               continue loop73;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            continue loop35;
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            _loc5_ = §§pop();
                                                                                                                                                                                                                                                                                                                                                            continue loop56;
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr751);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr999);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                continue loop76;
                                                                                                                                                                                                                                                                                                                                                addr201:
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr334);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr945);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          addr543:
                                                                                                                                                                                                                                                                                                                                          §§push(this.§_-7P§);
                                                                                                                                                                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                                             while(_loc9_ || param2)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(!_loc9_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   continue loop28;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr556);
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr608);
                                                                                                                                                                                                                                                                                                                                             addr546:
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr600);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr665);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    addr260:
                                                                                                                                                                                                                                                                                                                                    if(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§goto(addr471);
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr546);
                                                                                                                                                                                                                                                                                                                                    addr327:
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1291);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              return §§pop();
                                                                                                                                                                                                                                                                                                                              addr43:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr615);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr745);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr667);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr388);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(!_loc10_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc9_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§goto(addr277);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr805);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr374);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr43);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop21;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop79;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr935);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr751);
                                                                                                                                                                                                                                                                                                   §§push(this.§_-7P§);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr159);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr934:
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr611);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr201);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr259);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc10_ && param2)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop46;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr396:
                                                                                                                                                                                                                                                                                    §§push(this.§_-jY§);
                                                                                                                                                                                                                                                                                    if(_loc9_ || this)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr411:
                                                                                                                                                                                                                                                                                          §§push(_loc8_);
                                                                                                                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc9_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop119;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§push(param2);
                                                                                                                                                                                                                                                                                             if(!_loc10_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr418:
                                                                                                                                                                                                                                                                                                if(_loc9_ || param3)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(this.§_-jY§);
                                                                                                                                                                                                                                                                                                   if(!_loc10_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc9_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr432:
                                                                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                         if(_loc9_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!_loc10_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§goto(addr437);
                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr625);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr652);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr844);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(!(_loc10_ && param1))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr539);
                                                                                                                                                                                                                                                                                                         §§goto(addr418);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr665);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr948);
                                                                                                                                                                                                                                                                                                   addr530:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr538);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr448);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr716);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr571);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr622);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1010);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr437);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr327);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr528:
                                                                                                                                                                                                                                                                        §§goto(addr530);
                                                                                                                                                                                                                                                                        §§push(this.§_-ut§);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr543);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr432);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr448);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr324);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr582);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr624);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr662:
                                                                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr714);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr665);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr523:
                                                                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop32;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr528);
                                                                                                                                                                                                                                                   §§push(param1);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr626);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr411);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr133);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr396);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr280);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr830);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr998);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1002);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop25;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr965:
                                                                                                                                                                                                                        while(!_loc10_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr968);
                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr973);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop() <= §§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop39;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1219);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop1;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc10_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop24;
                                                                                                                                                                                                }
                                                                                                                                                                                                _loc7_ = §§pop();
                                                                                                                                                                                                §§goto(addr1029);
                                                                                                                                                                                                §§goto(addr913);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr934);
                                                                                                                                                                                       §§goto(addr932);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop45;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop5;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr1059:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc4_ = §§pop();
                                                                                                                                                         continue loop43;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop36;
                                                                                                                                             }
                                                                                                                                             addr817:
                                                                                                                                             while(!_loc10_)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1054);
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                §§goto(addr1055);
                                                                                                                                             }
                                                                                                                                             addr1055:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1059);
                                                                                                                                             }
                                                                                                                                             addr1058:
                                                                                                                                             addr1051:
                                                                                                                                          }
                                                                                                                                          §§goto(addr1249);
                                                                                                                                       }
                                                                                                                                       continue loop38;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 continue loop37;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§goto(addr1058);
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
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop20;
                                                                           }
                                                                        }
                                                                     }
                                                                     if(!(_loc9_ || this))
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§goto(addr499);
                                                                  }
                                                               }
                                                            }
                                                            continue loop0;
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
                           }
                        }
                        while(true)
                        {
                           §§goto(addr1002);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr360);
      }
      
      protected function §_-q1§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §_-pX§.playSound("SlingshotStreched");
         }
      }
      
      public function §_-0Ct§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this);
            §§push(this.§_-c§);
            §§push(this.§_-l1§);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() + param1);
            }
            §§pop().setPosition(§§pop(),§§pop());
         }
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(param1);
         if(_loc7_)
         {
            §§push(§§pop() - this.§_-c§);
            if(_loc7_ || param2)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         if(!_loc6_)
         {
            this.§_-c§ = param1;
         }
         §§push(param2);
         if(!(_loc6_ && param1))
         {
            §§push(§§pop() - this.§_-l1§);
            if(!(_loc6_ && this))
            {
               addr55:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(!(_loc6_ && param2))
            {
               this.§_-l1§ = param2;
            }
            loop0:
            while(true)
            {
               §§push(this);
               §§push(this.§_-0En§);
               if(!_loc6_)
               {
                  §§push(§§pop() + _loc5_);
               }
               §§pop().§_-0En§ = §§pop();
               while(true)
               {
                  §§push(this);
                  §§push(this.§_-jY§);
                  if(!_loc6_)
                  {
                     §§push(§§pop() + _loc5_);
                  }
                  §§pop().§_-jY§ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§_-08N§);
                     if(_loc7_ || this)
                     {
                        §§push(§§pop() + _loc5_);
                     }
                     §§pop().§_-08N§ = §§pop();
                     loop3:
                     while(true)
                     {
                        §§push(this);
                        §§push(this.§_-ut§);
                        if(_loc7_)
                        {
                           §§push(§§pop() + _loc4_);
                        }
                        §§pop().§_-ut§ = §§pop();
                        loop4:
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§_-Tn§);
                           if(!(_loc6_ && param1))
                           {
                              §§push(§§pop() + _loc4_);
                           }
                           §§pop().§_-Tn§ = §§pop();
                           while(true)
                           {
                              if(_loc7_ || this)
                              {
                                 if(_loc6_)
                                 {
                                    break;
                                 }
                                 if(param3)
                                 {
                                    if(_loc7_)
                                    {
                                       this.updateAnimations(0);
                                    }
                                    continue loop3;
                                 }
                                 addr69:
                                 while(true)
                                 {
                                    this.§_-0Dz§ = true;
                                    if(_loc7_)
                                    {
                                       break;
                                    }
                                    continue loop3;
                                 }
                                 if(_loc7_)
                                 {
                                    if(!_loc6_)
                                    {
                                       return;
                                    }
                                    continue loop2;
                                 }
                                 continue;
                              }
                              continue loop4;
                           }
                           continue loop0;
                        }
                     }
                  }
                  if(_loc6_ && param1)
                  {
                     continue;
                  }
                  §§goto(addr69);
               }
            }
         }
         §§goto(addr55);
      }
      
      public function getLaunchSpeed() : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:* = Number(0);
         var _loc2_:§_-pR§ = null;
         _loc2_ = this.§_-j9§[this.§_-eE§];
         §§push(this.§_-7P§);
         if(_loc5_ || this)
         {
            §§push(§§pop() / this.§_-Fn§);
            if(!_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         if(_loc5_)
         {
            if(_loc2_ != null)
            {
               if(_loc5_)
               {
                  if(_loc2_.name.toUpperCase() == "BIRD_GREEN")
                  {
                     if(!_loc4_)
                     {
                        §§push(§_-E0§.BIRD_LAUNCH_FORCE_GREEN);
                        if(!(_loc4_ && _loc1_))
                        {
                           §§push(Number(§§pop()));
                           if(_loc5_)
                           {
                              addr105:
                              §§push(Number(§§pop()));
                              if(_loc5_ || this)
                              {
                                 addr113:
                                 _loc1_ = §§pop();
                                 addr114:
                                 §§push(_loc1_);
                                 if(_loc5_ || _loc3_)
                                 {
                                 }
                                 §§goto(addr124);
                              }
                              addr124:
                              return §§pop();
                              §§push(§§pop() * _loc3_);
                           }
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr114);
                  }
                  else
                  {
                     §§push(§_-E0§.BIRD_LAUNCH_FORCE);
                     if(!(_loc4_ && _loc1_))
                     {
                        §§push(Number(§§pop()));
                        if(!_loc5_)
                        {
                        }
                        §§goto(addr105);
                     }
                  }
                  §§goto(addr105);
               }
            }
         }
         §§goto(addr113);
      }
      
      public function §_-03l§() : Point
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:§_-pR§ = null;
         if(_loc3_ || _loc3_)
         {
            if(this.§_-j9§.length <= this.§_-eE§)
            {
               return null;
            }
            if(!_loc2_)
            {
               _loc1_ = this.§_-j9§[this.§_-eE§];
            }
         }
         return new Point(_loc1_.x,_loc1_.y);
      }
      
      public function §_-DY§() : Point
      {
         return new Point(this.§_-ut§,this.§_-jY§);
      }
      
      public function update(param1:Number, param2:Boolean = true) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§_-pR§ = null;
         if(!_loc4_)
         {
            this.§_-aT§(param1);
         }
         while(true)
         {
            if(this.§_-0Dz§)
            {
               loop1:
               while(_loc5_)
               {
                  this.updateAnimations(param1);
                  while(true)
                  {
                     addr46:
                     if(_loc4_ && param1)
                     {
                        continue;
                     }
                     if(false)
                     {
                        loop5:
                        while(true)
                        {
                           if(this.§_-0CK§ < 0)
                           {
                              addr60:
                              while(!(_loc4_ && _loc3_))
                              {
                                 this.§_-0CK§ = 0;
                                 while(true)
                                 {
                                 }
                              }
                              while(true)
                              {
                                 continue loop5;
                                 §§goto(addr60);
                              }
                              addr60:
                              addr85:
                           }
                           while(true)
                           {
                              if(this.mSlingShotState != §_-yK§)
                              {
                                 this.§_-ER§(param1,param2);
                                 break;
                              }
                              if(_loc4_ && this)
                              {
                                 break;
                              }
                              if(_loc5_)
                              {
                                 if(!_loc4_)
                                 {
                                    if(_loc5_)
                                    {
                                       §§goto(addr356);
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr60);
                              }
                              §§goto(addr70);
                           }
                           §§goto(addr46);
                        }
                        continue;
                     }
                     _loc3_ = null;
                     if(!(_loc4_ && param2))
                     {
                        if(this.§_-j9§.length > 0)
                        {
                           if(!_loc4_)
                           {
                              _loc3_ = this.§_-j9§[this.§_-eE§];
                              addr124:
                              if(_loc3_)
                              {
                                 if(_loc5_)
                                 {
                                    _loc3_.§_-U§(param1);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       addr350:
                                       if(_loc3_)
                                       {
                                          addr334:
                                          if(this.mSlingShotState != §_-ex§)
                                          {
                                             addr283:
                                             if(this.mSlingShotState != §_-Zj§)
                                             {
                                                §§push(this.mSlingShotState);
                                                if(_loc5_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      §§push(§_-03t§);
                                                      if(!_loc4_)
                                                      {
                                                         if(!_loc5_)
                                                         {
                                                            §§goto(addr334);
                                                         }
                                                         if(§§pop() == §§pop())
                                                         {
                                                            addr208:
                                                            if(_loc5_)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  addr212:
                                                                  §§push(_loc3_);
                                                                  §§push(this.§_-Tn§);
                                                                  if(_loc5_)
                                                                  {
                                                                     §§push(_loc3_.radius);
                                                                     if(_loc5_ || this)
                                                                     {
                                                                        §§push(§§pop() * Math.cos(this.§_-AU§ / (180 / Math.PI)));
                                                                        if(!_loc4_)
                                                                        {
                                                                           addr239:
                                                                           §§push(§§pop() - §§pop());
                                                                           §§push(this.§_-08N§);
                                                                           if(_loc5_ || this)
                                                                           {
                                                                              addr248:
                                                                              §§push(_loc3_.radius);
                                                                              if(_loc5_ || this)
                                                                              {
                                                                                 §§push(§§pop() * Math.sin(this.§_-AU§ / (180 / Math.PI)));
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                           }
                                                                        }
                                                                        §§pop().setPosition(§§pop(),§§pop());
                                                                        addr269:
                                                                        if(_loc5_ || param2)
                                                                        {
                                                                           §§push(this.§_-Js§);
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(!(_loc4_ && param2))
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       if(!(_loc4_ && _loc3_))
                                                                                       {
                                                                                          addr176:
                                                                                          §§push(this);
                                                                                          §§push(this.§_-7P§);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(this.§_-Fn§);
                                                                                             if(_loc5_)
                                                                                             {
                                                                                                addr186:
                                                                                                §§push(§§pop() / §§pop());
                                                                                                §§push(this.§_-AU§);
                                                                                             }
                                                                                             §§pop().§_-q0§(§§pop(),§§pop());
                                                                                             addr189:
                                                                                             if(!_loc5_)
                                                                                             {
                                                                                                §§goto(addr269);
                                                                                             }
                                                                                             if(false)
                                                                                             {
                                                                                                addr193:
                                                                                             }
                                                                                             §§goto(addr356);
                                                                                          }
                                                                                          §§goto(addr186);
                                                                                       }
                                                                                       addr342:
                                                                                       if(_loc5_ || this)
                                                                                       {
                                                                                          _loc3_.§_-dI§();
                                                                                          addr277:
                                                                                          addr356:
                                                                                          return;
                                                                                          addr327:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr356);
                                                                                          addr355:
                                                                                       }
                                                                                       §§goto(addr356);
                                                                                    }
                                                                                    §§goto(addr208);
                                                                                 }
                                                                                 §§goto(addr189);
                                                                              }
                                                                              §§goto(addr356);
                                                                           }
                                                                           addr293:
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc5_ || param1)
                                                                              {
                                                                                 if(_loc5_ || param2)
                                                                                 {
                                                                                    this.§_-05e§(§_-03t§);
                                                                                    addr311:
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§goto(addr193);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr335:
                                                                                       if(this.§_-0CK§ <= 0)
                                                                                       {
                                                                                          addr339:
                                                                                          this.§_-05e§(§_-Zj§);
                                                                                          §§goto(addr342);
                                                                                       }
                                                                                       §§goto(addr277);
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    addr352:
                                                                                    this.§_-05e§(§_-yK§);
                                                                                 }
                                                                                 §§goto(addr355);
                                                                              }
                                                                              §§goto(addr311);
                                                                           }
                                                                           §§goto(addr193);
                                                                        }
                                                                        §§goto(addr311);
                                                                     }
                                                                     §§goto(addr248);
                                                                  }
                                                                  §§goto(addr239);
                                                               }
                                                               §§goto(addr339);
                                                            }
                                                            §§goto(addr327);
                                                         }
                                                         §§goto(addr356);
                                                      }
                                                      §§goto(addr283);
                                                   }
                                                   §§goto(addr334);
                                                }
                                                §§goto(addr283);
                                             }
                                             if(_loc5_ || this)
                                             {
                                                addr291:
                                                §§goto(addr293);
                                                §§push(_loc3_.§_-1l§);
                                             }
                                             §§goto(addr311);
                                          }
                                          §§goto(addr335);
                                       }
                                       §§goto(addr352);
                                    }
                                    §§goto(addr176);
                                 }
                                 §§goto(addr335);
                              }
                              §§goto(addr350);
                           }
                           §§goto(addr291);
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr212);
                  }
               }
               continue;
            }
            while(true)
            {
               §§push(this);
               §§push(this.§_-0CK§);
               if(_loc5_ || param2)
               {
                  §§push(§§pop() - param1);
               }
               §§pop().§_-0CK§ = §§pop();
               §§goto(addr85);
               §§goto(addr95);
            }
         }
      }
      
      public function §_-IY§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:§_-pR§ = null;
         if(!(_loc6_ && this))
         {
            if(this.§_-j9§.length > 0)
            {
               if(!(_loc6_ && param1))
               {
                  _loc5_ = this.§_-j9§[this.§_-eE§];
                  addr56:
                  if(!_loc5_)
                  {
                     if(_loc7_ || this)
                     {
                        §§goto(addr75);
                     }
                  }
                  else
                  {
                     _loc5_.setPosition(param1,param2);
                  }
                  do
                  {
                     this.§_-q0§(param3,param4);
                  }
                  while(!(_loc7_ || param3));
                  
               }
               return;
            }
            §§goto(addr56);
         }
         addr75:
      }
      
      protected function §_-q0§(param1:Number, param2:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:§_-pR§ = null;
         if(!_loc4_)
         {
            this.§_-CF§ = §_-KG§;
            if(!(_loc4_ && this))
            {
               this.§_-NG§ = §_-RU§;
               if(_loc5_)
               {
                  if(this.§_-j9§.length > 0)
                  {
                     if(_loc5_)
                     {
                        addr44:
                        _loc3_ = this.§_-j9§[this.§_-eE§];
                        addr51:
                        if(!_loc3_)
                        {
                           if(_loc5_ || _loc3_)
                           {
                              §§goto(addr60);
                           }
                        }
                        else
                        {
                           addr171:
                           this.mDragging = false;
                           while(true)
                           {
                              this.§_-Js§ = false;
                              while(true)
                              {
                                 this.§_-fN§ = new Date().time;
                                 loop3:
                                 while(true)
                                 {
                                    this.§_-6A§.§_-QL§(_loc3_,param1,param2);
                                    addr158:
                                    addr150:
                                    addr121:
                                    loop2:
                                    while(true)
                                    {
                                       this.§_-N6§(this.§_-eE§,_loc3_.§_-PV§ > 0);
                                       addr143:
                                       while(true)
                                       {
                                          if(_loc5_ || param1)
                                          {
                                             break loop2;
                                          }
                                          continue loop3;
                                       }
                                    }
                                    this.playBirdShotSound();
                                    §§goto(addr123);
                                 }
                              }
                           }
                        }
                        §§goto(addr117);
                     }
                     addr123:
                     while(_loc4_)
                     {
                        §§goto(addr158);
                        §§goto(addr150);
                     }
                     while(true)
                     {
                        if(this.§_-eE§ >= this.§_-j9§.length)
                        {
                           if(_loc5_)
                           {
                              if(!_loc4_)
                              {
                                 this.§_-05e§(§_-yK§);
                                 addr106:
                                 if(!_loc4_)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          break;
                                          addr117:
                                       }
                                       continue loop5;
                                    }
                                    continue loop6;
                                 }
                                 §§goto(addr143);
                              }
                              §§goto(addr121);
                           }
                        }
                        else
                        {
                           this.§_-05e§(§_-ex§);
                           if(_loc5_ || this)
                           {
                              break;
                           }
                        }
                        §§goto(addr106);
                     }
                     return;
                  }
                  §§goto(addr51);
               }
               §§goto(addr171);
            }
            §§goto(addr44);
         }
         addr60:
      }
      
      protected function playBirdShotSound() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = int(Math.random() * 3) + 1;
         if(_loc2_ || this)
         {
            §§push(§_-pX§);
            §§push("BirdShot");
            if(_loc2_ || _loc2_)
            {
               §§push(§§pop() + _loc1_);
            }
            §§pop().playSound(§§pop());
         }
      }
      
      public function §_-ER§(param1:Number, param2:Boolean = true) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§_-eE§);
         if(!_loc5_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         §§push(_loc3_);
         if(_loc6_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc4_:* = §§pop();
         while(true)
         {
            §§push(_loc4_);
            if(!_loc5_)
            {
               if(§§pop() >= this.§_-j9§.length)
               {
                  if(!_loc5_)
                  {
                     if(_loc6_ || param1)
                     {
                        if(_loc6_)
                        {
                           if(_loc6_ || this)
                           {
                              break;
                           }
                           addr104:
                           this.§_-j9§[_loc4_].update(param1,true,param2);
                        }
                     }
                     else
                     {
                        addr97:
                     }
                     addr83:
                     _loc4_++;
                  }
                  continue;
               }
               addr102:
               if(this.mSlingShotState == §_-pu§)
               {
                  §§goto(addr104);
               }
               else
               {
                  this.§_-j9§[_loc4_].update(param1,false,param2);
                  §§goto(addr97);
               }
               §§goto(addr104);
            }
            §§goto(addr102);
         }
      }
      
      public function updateScoreForRemainingBirds() : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc1_:§_-pR§ = null;
         var _loc2_:* = 0;
         if(_loc6_ || _loc3_)
         {
            this.mDragging = false;
            while(true)
            {
               addr62:
               while(true)
               {
                  this.§_-Tf§();
               }
               addr44:
               if(!(_loc5_ && this))
               {
                  return false;
               }
            }
         }
         while(this.§_-b§ >= this.§_-j9§.length)
         {
            if(_loc6_ || _loc1_)
            {
               §§goto(addr44);
            }
            else
            {
               if(!(_loc6_ || _loc3_))
               {
                  continue;
               }
               if(true)
               {
                  break;
               }
            }
            §§goto(addr62);
         }
         _loc1_ = this.§_-j9§[this.§_-b§];
         if(_loc6_ || _loc1_)
         {
            §§push(§_-09t§.§_-yf§(_loc1_.name).score);
            if(!(_loc5_ && _loc1_))
            {
               §§push(int(§§pop()));
            }
            _loc2_ = §§pop();
            if(!(_loc5_ && _loc2_))
            {
               addr175:
               while(true)
               {
                  §§push(this.§_-6A§);
                  §§push(_loc2_);
                  §§push(§_-40§.§_-Rz§);
                  §§push(true);
                  §§push(_loc1_.x);
                  §§push(_loc1_.y);
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(3);
                     if(_loc6_ || _loc1_)
                     {
                        addr131:
                        §§push(§§pop() - §§pop());
                        §§push(§_-Hv§.§_-04e§(_loc1_.name));
                     }
                     §§pop().addScore(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                     if(_loc5_ && _loc1_)
                     {
                        break;
                     }
                     continue;
                  }
                  §§goto(addr131);
               }
            }
            return true;
         }
         §§goto(addr175);
      }
      
      public function §_-LO§() : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:§_-pR§ = null;
         var _loc1_:* = 0;
         for each(_loc2_ in this.§_-j9§)
         {
            if(_loc5_)
            {
               §§push(_loc1_);
               if(!_loc6_)
               {
                  §§push(int(§§pop() + §_-09t§.§_-yf§(_loc2_.name).score));
               }
               _loc1_ = §§pop();
            }
         }
         return _loc1_;
      }
      
      public function §_-KF§() : int
      {
         return this.§_-em§;
      }
      
      public function §_-aT§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:int = 0;
         if(_loc3_)
         {
            §§push(this.§_-Rl§);
            loop0:
            while(true)
            {
               §§push(0);
               addr196:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     addr21:
                     return;
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§_-Rl§);
                     if(!_loc4_)
                     {
                        §§push(§§pop() - param1);
                     }
                     §§pop().§_-Rl§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      public function §_-0Ee§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = 0;
         var _loc1_:* = 1000;
         loop0:
         while(true)
         {
            §§push(this.§_-6A§.objects.§_-1X§(this.§_-ut§,this.§_-0En§));
            loop1:
            while(true)
            {
               §§push(int(§§pop()));
               loop2:
               while(true)
               {
                  _loc2_ = §§pop();
                  loop3:
                  while(true)
                  {
                     §§push(_loc2_);
                     loop4:
                     while(true)
                     {
                        §§push(-1);
                        while(true)
                        {
                           if(§§pop() == §§pop())
                           {
                              this.§_-0Ct§(0.1);
                              while(true)
                              {
                                 §§push(_loc1_);
                                 if(_loc3_ || _loc3_)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop());
                                       if(_loc3_ || _loc1_)
                                       {
                                          §§push(§§pop() - 1);
                                          if(!_loc4_)
                                          {
                                             _loc1_ = §§pop();
                                             addr58:
                                             if(!_loc3_)
                                             {
                                                continue loop2;
                                             }
                                             if(!(_loc3_ || _loc2_))
                                             {
                                                continue loop1;
                                             }
                                             §§push(0);
                                          }
                                       }
                                       if(_loc4_ && _loc2_)
                                       {
                                          break;
                                       }
                                       if(§§pop() <= §§pop())
                                       {
                                          if(_loc3_)
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop3;
                                             }
                                             loop7:
                                             while(true)
                                             {
                                                this.§_-Rl§ = -1;
                                                addr103:
                                                while(true)
                                                {
                                                   continue loop7;
                                                }
                                             }
                                             addr91:
                                          }
                                          while(!_loc4_)
                                          {
                                             if(_loc3_)
                                             {
                                                return;
                                             }
                                             §§goto(addr103);
                                             §§goto(addr91);
                                          }
                                          continue;
                                       }
                                       continue loop0;
                                    }
                                    continue loop4;
                                 }
                                 §§goto(addr58);
                              }
                              continue;
                           }
                           §§goto(addr103);
                        }
                     }
                  }
               }
            }
         }
      }
      
      public function §_-12§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§_-FQ§);
            loop0:
            while(true)
            {
               §§push(param1);
               addr74:
               while(true)
               {
                  §§push(-§§pop());
                  addr75:
                  while(true)
                  {
                     §§pop().x = §§pop();
                     continue loop0;
                  }
               }
            }
            addr73:
         }
         while(true)
         {
            §§push(this.§_-FQ§);
            if(_loc4_ || param2)
            {
               §§push(param2);
               if(!_loc3_)
               {
                  if(!_loc3_)
                  {
                     addr60:
                     §§push(-§§pop());
                     if(!_loc3_)
                     {
                        §§pop().y = §§pop();
                        if(!(_loc3_ && this))
                        {
                           break;
                        }
                        continue;
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr75);
               }
               §§goto(addr60);
            }
            else
            {
               §§goto(addr73);
            }
         }
      }
      
      public function canStartDragging(param1:Point) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.mSlingShotState == §_-03t§);
            if(_loc2_ || param1)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§pop();
                     addr99:
                     loop2:
                     while(true)
                     {
                        §§push(this.setNewCoordinatesForRubber(param1.x,param1.y,true));
                        loop3:
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           if(_loc2_)
                           {
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       §§push(true);
                                       break;
                                    }
                                    if(_loc3_ && this)
                                    {
                                       continue loop2;
                                    }
                                 }
                                 §§push(false);
                                 if(!_loc2_)
                                 {
                                    break;
                                 }
                                 if(_loc2_)
                                 {
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       return §§pop();
                                    }
                                    continue loop1;
                                 }
                                 continue loop3;
                              }
                              addr56:
                           }
                           return §§pop();
                        }
                     }
                  }
                  addr98:
               }
               §§goto(addr56);
            }
            §§goto(addr98);
         }
         §§goto(addr99);
      }
      
      public function canShootTheBird() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.mSlingShotState == §_-03t§);
            if(_loc1_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     §§pop();
                     addr49:
                     §§push(this.§_-7P§);
                     §§push(this.§_-Fn§);
                     if(_loc1_)
                     {
                        §§push(§§pop() * §_-0Al§);
                     }
                     return §§pop() > §§pop();
                  }
               }
            }
         }
         §§goto(addr49);
      }
      
      public function cancelDragging() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.mDragging = false;
            if(_loc3_)
            {
               this.§_-05e§(§_-03t§);
            }
         }
         var _loc1_:§_-pR§ = this.§_-j9§[this.§_-eE§];
         if(_loc3_ || _loc2_)
         {
            _loc1_.§_-G5§(§_-a2§.§_-GK§);
         }
      }
      
      public function startDragging() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.mDragging = true;
         }
         var _loc1_:§_-pR§ = this.§_-j9§[this.§_-eE§];
         if(!_loc2_)
         {
            _loc1_.§_-G5§(§_-a2§.§_-02X§);
         }
      }
      
      public function shoot() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§_-Js§ = true;
         }
      }
      
      protected function §_-N6§(param1:int, param2:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:§_-pR§ = null;
         if(!(_loc5_ && _loc3_))
         {
            if(param1 < 0)
            {
               if(!_loc5_)
               {
                  return;
               }
            }
            else
            {
               if(this.§_-j9§[param1])
               {
                  if(_loc4_)
                  {
                     _loc3_ = this.§_-j9§[param1];
                     addr46:
                     if(_loc4_)
                     {
                        this.§_-wx§.removeChild(_loc3_.sprite);
                        while(true)
                        {
                           if(param2)
                           {
                              if(_loc4_ || param2)
                              {
                                 this.§_-FE§(this.§_-j9§[param1]);
                              }
                              while(!_loc5_)
                              {
                                 loop3:
                                 while(!(_loc5_ && this))
                                 {
                                    while(true)
                                    {
                                       this.§_-j9§[param1] = null;
                                       if(!(_loc4_ || param1))
                                       {
                                          continue loop3;
                                       }
                                       if(true)
                                       {
                                          break;
                                       }
                                       while(true)
                                       {
                                          _loc3_.dispose();
                                          continue loop3;
                                       }
                                    }
                                    this.§_-j9§.splice(param1,1);
                                    return;
                                 }
                              }
                              continue;
                           }
                           §§goto(addr80);
                        }
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr131);
               }
               §§goto(addr126);
            }
            §§goto(addr126);
         }
         §§goto(addr46);
      }
      
      public function §_-FE§(param1:§_-pR§) : void
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc6_:Number = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc2_:Number = 5;
         var _loc3_:int = 5;
         var _loc4_:* = Number(90);
         var _loc5_:int = 0;
         loop0:
         while(true)
         {
            if(_loc5_ >= _loc3_)
            {
               if(_loc10_ || param1)
               {
                  if(_loc9_ && this)
                  {
                     continue;
                  }
                  if(!(_loc9_ && _loc3_))
                  {
                     §§push(this.§_-6A§);
                     if(_loc10_)
                     {
                        §§push(§§pop().particles);
                        if(_loc10_)
                        {
                           §§push(§_-Hv§.§_-0AR§);
                           if(_loc10_ || param1)
                           {
                              §§push(§_-Zc§.§_-MP§);
                              if(!_loc9_)
                              {
                                 §§push(§_-Hv§.§_-vg§);
                                 if(_loc10_)
                                 {
                                    §§push(param1.x);
                                    if(!(_loc9_ && _loc2_))
                                    {
                                       §§push(param1.y);
                                       if(_loc10_)
                                       {
                                          §§push(1000);
                                          if(_loc10_ || _loc2_)
                                          {
                                             §§push("");
                                             if(!(_loc9_ && param1))
                                             {
                                                §§push(0);
                                                if(_loc10_)
                                                {
                                                   §§pop().§_-0EQ§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),Math.cos(_loc6_),0,5,_loc2_ * 5);
                                                   break;
                                                }
                                                loop1:
                                                while(true)
                                                {
                                                   §§push(_loc2_);
                                                   if(!(_loc9_ && this))
                                                   {
                                                      §§push(§§pop() * Math.cos(_loc6_));
                                                   }
                                                   §§push(_loc2_);
                                                   if(_loc10_ || _loc2_)
                                                   {
                                                      §§push(-§§pop());
                                                      if(_loc10_)
                                                      {
                                                         addr185:
                                                         §§push(§§pop() * Math.sin(_loc6_));
                                                      }
                                                      §§push(5);
                                                      §§push(_loc2_);
                                                      if(_loc10_)
                                                      {
                                                         §§push(§§pop() * 20);
                                                      }
                                                      §§pop().§_-0EQ§(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
                                                      while(!_loc10_)
                                                      {
                                                         loop13:
                                                         while(true)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               if(!_loc9_)
                                                               {
                                                                  break;
                                                               }
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§push(param1.sprite);
                                                                  addr368:
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     §§push(-§§pop().width);
                                                                     if(!(_loc9_ && param1))
                                                                     {
                                                                        if(!_loc10_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§_-00u§.§_-lY§);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                        }
                                                                        addr381:
                                                                     }
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        addr383:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           addr384:
                                                                           while(true)
                                                                           {
                                                                              _loc7_ = §§pop();
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§push(Math.random() * -_loc7_);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(2);
                                                                                    addr393:
                                                                                    addr288:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       addr394:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                       }
                                                                                    }
                                                                                    if(!(_loc10_ || _loc3_))
                                                                                    {
                                                                                       continue;
                                                                                    }
                                                                                    if(!(_loc9_ && _loc2_))
                                                                                    {
                                                                                       _loc8_ = §§pop();
                                                                                       if(_loc10_ || _loc2_)
                                                                                       {
                                                                                          if(!(_loc10_ || this))
                                                                                          {
                                                                                             continue loop17;
                                                                                          }
                                                                                          §§push(Math.random() * -_loc8_);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             addr324:
                                                                                             if(_loc10_ || this)
                                                                                             {
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   §§push(2);
                                                                                                   if(!(_loc9_ && _loc3_))
                                                                                                   {
                                                                                                      addr342:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                         addr347:
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         if(_loc10_)
                                                                                                         {
                                                                                                            if(!(_loc9_ && this))
                                                                                                            {
                                                                                                               addr358:
                                                                                                               §§push(Number(§§pop()));
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                            addr411:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Math.random() * (720 / _loc3_));
                                                                                                               addr417:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(_loc9_ && _loc3_)
                                                                                                                  {
                                                                                                                     continue loop14;
                                                                                                                  }
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     addr427:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc4_ = §§pop();
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(180 / Math.PI);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr381);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr393);
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   break loop15;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr394);
                                                                                          }
                                                                                          §§goto(addr342);
                                                                                       }
                                                                                       §§goto(addr347);
                                                                                    }
                                                                                    §§goto(addr417);
                                                                                 }
                                                                              }
                                                                              addr395:
                                                                              while(true)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 addr396:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc7_ = §§pop();
                                                                                    continue loop15;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     continue loop14;
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(param1.sprite);
                                                               if(!(_loc9_ && param1))
                                                               {
                                                                  §§push(-§§pop().height);
                                                                  if(!(_loc9_ && _loc3_))
                                                                  {
                                                                     if(_loc10_ || _loc3_)
                                                                     {
                                                                        §§push(§_-00u§.§_-lY§);
                                                                        if(_loc10_ || this)
                                                                        {
                                                                           if(!_loc9_)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc9_ && this)
                                                                                 {
                                                                                    continue loop13;
                                                                                 }
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(!(_loc9_ && _loc2_))
                                                                                    {
                                                                                       if(_loc10_ || this)
                                                                                       {
                                                                                          if(_loc10_ || _loc3_)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(!(_loc9_ && param1))
                                                                                             {
                                                                                                §§goto(addr288);
                                                                                             }
                                                                                             §§goto(addr324);
                                                                                          }
                                                                                          §§goto(addr383);
                                                                                       }
                                                                                       §§goto(addr395);
                                                                                    }
                                                                                    §§goto(addr347);
                                                                                 }
                                                                                 §§goto(addr396);
                                                                              }
                                                                              §§goto(addr427);
                                                                           }
                                                                           §§goto(addr384);
                                                                        }
                                                                        §§goto(addr324);
                                                                     }
                                                                     §§goto(addr426);
                                                                  }
                                                                  §§goto(addr347);
                                                               }
                                                               §§goto(addr368);
                                                            }
                                                            §§goto(addr358);
                                                         }
                                                         §§push(this.§_-6A§);
                                                         while(true)
                                                         {
                                                            §§push(§§pop().particles);
                                                            addr136:
                                                            while(true)
                                                            {
                                                               §§push(§_-Hv§.§_-gA§);
                                                               addr138:
                                                               while(true)
                                                               {
                                                                  §§push(§_-Zc§.§_-MP§);
                                                                  addr140:
                                                                  while(true)
                                                                  {
                                                                     §§push(§_-Hv§.§_-vg§);
                                                                     addr142:
                                                                     while(true)
                                                                     {
                                                                        §§push(param1.x);
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(_loc7_);
                                                                           if(!_loc9_)
                                                                           {
                                                                              addr150:
                                                                              §§push(§§pop() + §§pop());
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1.y);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                 }
                                                                                 addr156:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(1500);
                                                                                    addr157:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push("");
                                                                                       continue loop1;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr150:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr156);
                                                                           }
                                                                        }
                                                                        §§goto(addr150);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      _loc5_++;
                                                      continue loop0;
                                                      addr196:
                                                   }
                                                   §§goto(addr185);
                                                }
                                                addr162:
                                             }
                                             while(true)
                                             {
                                                §§goto(addr162);
                                             }
                                          }
                                          §§goto(addr157);
                                       }
                                       §§goto(addr156);
                                    }
                                    §§goto(addr150);
                                 }
                                 §§goto(addr142);
                              }
                              §§goto(addr140);
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr136);
                     }
                     §§goto(addr135);
                  }
                  §§goto(addr196);
               }
               break;
            }
            §§push(_loc4_);
            §§goto(addr411);
         }
      }
      
      public function §_-zn§(param1:§_-pR§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§_-N6§(this.§_-j9§.indexOf(param1));
         }
      }
      
      public function §_-Lo§() : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:§_-pR§ = null;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:§_-pR§ = null;
         var _loc1_:* = 0;
         while(true)
         {
            §§push(_loc1_);
            if(!_loc6_)
            {
               if(§§pop() >= this.§_-j9§.length - 1)
               {
                  if(_loc7_ || this)
                  {
                     §§goto(addr233);
                  }
                  §§goto(addr240);
               }
               else
               {
                  §§push(Number(Math.sqrt((this.§_-c§ - this.§_-j9§[_loc1_].x) * (this.§_-c§ - this.§_-j9§[_loc1_].x) + (this.§_-l1§ - this.§_-j9§[_loc1_].y) * (this.§_-l1§ - this.§_-j9§[_loc1_].y))));
                  if(_loc7_ || _loc2_)
                  {
                     _loc3_ = §§pop();
                     if(_loc7_)
                     {
                        §§push(Number(Math.sqrt((this.§_-c§ - this.§_-j9§[_loc1_ + 1].x) * (this.§_-c§ - this.§_-j9§[_loc1_ + 1].x) + (this.§_-l1§ - this.§_-j9§[_loc1_ + 1].y) * (this.§_-l1§ - this.§_-j9§[_loc1_ + 1].y))));
                        if(_loc7_ || _loc2_)
                        {
                           §§push(§§pop());
                           if(!_loc6_)
                           {
                              _loc4_ = §§pop();
                              addr146:
                              §§push(_loc3_);
                           }
                           if(§§pop() < §§pop())
                           {
                              if(!(_loc6_ && _loc3_))
                              {
                                 _loc5_ = this.§_-j9§[_loc1_];
                                 if(_loc7_ || this)
                                 {
                                    this.§_-j9§.splice(_loc1_,1);
                                 }
                                 loop1:
                                 while(true)
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       this.§_-j9§.splice(_loc1_ + 1,0,_loc5_);
                                       while(!_loc6_)
                                       {
                                          _loc1_ = int(Math.max(-1,_loc1_ - 2));
                                          if(_loc7_)
                                          {
                                             if(true)
                                             {
                                                break loop2;
                                             }
                                             continue loop2;
                                          }
                                       }
                                       continue loop1;
                                    }
                                 }
                              }
                              else
                              {
                                 addr233:
                                 if(this.§_-wx§.numChildren > 0)
                                 {
                                    §§push(this.§_-wx§);
                                    if(_loc7_)
                                    {
                                       §§pop().removeChildAt(0);
                                       if(_loc7_ || _loc1_)
                                       {
                                          §§goto(addr233);
                                       }
                                       addr240:
                                       §§push(0);
                                       if(_loc7_ || _loc1_)
                                       {
                                          _loc1_ = §§pop();
                                          §§goto(addr290);
                                       }
                                       break;
                                    }
                                    §§goto(addr233);
                                 }
                                 if(_loc6_)
                                 {
                                 }
                                 §§goto(addr290);
                              }
                              §§goto(addr290);
                           }
                           _loc1_++;
                           if(_loc7_)
                           {
                              continue;
                           }
                           §§goto(addr290);
                        }
                        §§goto(addr146);
                     }
                     §§goto(addr233);
                  }
                  §§goto(addr146);
               }
            }
            break;
         }
         while(true)
         {
            if(§§pop() >= this.§_-j9§.length)
            {
               addr290:
               if(_loc7_ || _loc1_)
               {
                  addr285:
                  §§push(_loc1_);
                  break loop0;
               }
            }
            _loc2_ = this.§_-j9§[_loc1_];
            if(_loc7_)
            {
               this.§_-wx§.addChildAt(_loc2_.sprite,0);
               if(_loc6_)
               {
                  continue;
               }
            }
            _loc1_++;
            continue;
            return;
         }
      }
      
      public function §_-bS§(param1:Number, param2:Number) : §_-pR§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:int = 0;
         while(true)
         {
            if(_loc3_ >= this.§_-j9§.length)
            {
               if(_loc4_ && this)
               {
                  continue;
               }
               if(_loc5_)
               {
                  break;
               }
               addr91:
            }
            else if(this.§_-j9§[_loc3_])
            {
               if(_loc5_)
               {
                  if(this.§_-j9§[_loc3_].isInCoordinates(param1,param2))
                  {
                     §§goto(addr86);
                  }
               }
               else
               {
                  §§goto(addr91);
               }
            }
            _loc3_++;
         }
         if(!(_loc4_ && this))
         {
            return null;
         }
         addr86:
         return this.§_-j9§[_loc3_];
      }
      
      public function §_-0Cq§(param1:Number, param2:Number) : §_-E0§
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(this.§_-c§);
               loop1:
               while(true)
               {
                  §§push(this.§_-Fn§);
                  loop2:
                  while(true)
                  {
                     §§push(4);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() / §§pop());
                        loop4:
                        while(true)
                        {
                           §§push(§§pop() - §§pop());
                           loop5:
                           while(true)
                           {
                              §§push(§§pop() >= §§pop());
                              loop6:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop7:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop11:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   loop12:
                                                   while(true)
                                                   {
                                                      if(_loc4_ || param1)
                                                      {
                                                         §§pop();
                                                         loop13:
                                                         while(true)
                                                         {
                                                            §§push(param2);
                                                            loop14:
                                                            for(; !(_loc3_ && param2); §§push(this.§_-l1§),if(_loc3_ && _loc3_)
                                                            {
                                                               continue;
                                                            },§§push(this.§_-0En§),if(!_loc3_)
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  if(_loc4_ || param2)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     §§push(§§pop() <= §§pop());
                                                                     if(_loc4_)
                                                                     {
                                                                        if(!(_loc3_ && this))
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              continue loop12;
                                                                           }
                                                                           §§goto(addr67);
                                                                        }
                                                                        §§goto(addr125);
                                                                     }
                                                                     §§goto(addr156);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     §§goto(addr177);
                                                                     §§push(this.§_-Fn§);
                                                                  }
                                                                  addr173:
                                                               }
                                                               §§goto(addr87);
                                                            },§§goto(addr124))
                                                            {
                                                               §§push(this.§_-l1§);
                                                               loop15:
                                                               while(_loc4_ || param2)
                                                               {
                                                                  §§push(this.§_-Fn§);
                                                                  if(_loc4_)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     §§push(4);
                                                                     if(!_loc3_)
                                                                     {
                                                                        addr114:
                                                                        §§push(§§pop() / §§pop());
                                                                        if(!_loc3_)
                                                                        {
                                                                           if(!(_loc3_ && this))
                                                                           {
                                                                              §§push(§§pop() - §§pop());
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() >= §§pop());
                                                                                 addr125:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc4_ || this)
                                                                                    {
                                                                                       if(_loc3_ && param1)
                                                                                       {
                                                                                          break;
                                                                                          addr139:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          if(_loc3_ && this)
                                                                                          {
                                                                                             continue loop11;
                                                                                          }
                                                                                          if(!(_loc4_ || param2))
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             while(§§pop())
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   return this;
                                                                                                }
                                                                                                addr157:
                                                                                                while(!_loc3_)
                                                                                                {
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      break loop12;
                                                                                                   }
                                                                                                   continue loop14;
                                                                                                }
                                                                                                continue loop13;
                                                                                             }
                                                                                             return null;
                                                                                             addr67:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                          }
                                                                                          §§goto(addr157);
                                                                                       }
                                                                                       continue loop7;
                                                                                    }
                                                                                    continue loop10;
                                                                                 }
                                                                                 continue loop6;
                                                                              }
                                                                              addr124:
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(4);
                                                                                 addr178:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    §§push(§§pop() / §§pop());
                                                                                 }
                                                                              }
                                                                              addr177:
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              break loop15;
                                                                           }
                                                                           continue loop4;
                                                                        }
                                                                     }
                                                                     §§goto(addr178);
                                                                  }
                                                                  §§goto(addr114);
                                                               }
                                                               while(true)
                                                               {
                                                                  continue loop9;
                                                               }
                                                            }
                                                            continue loop0;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            break loop12;
                                                         }
                                                         addr218:
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      continue loop0;
                                                   }
                                                   addr219:
                                                }
                                                §§goto(addr139);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr218);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr219);
      }
      
      public function §_-aF§(param1:§_-bm§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:§_-pR§ = null;
         var _loc4_:§_-Tr§ = null;
         if(!_loc5_)
         {
            param1.§_-7M§ = this.§_-c§;
            if(_loc6_)
            {
               param1.§_-Rc§ = this.§_-l1§;
            }
         }
         var _loc2_:* = Number(0);
         while(_loc2_ < this.§_-j9§.length)
         {
            _loc3_ = this.§_-j9§[_loc2_];
            (_loc4_ = new §_-Tr§()).x = _loc3_.x;
            if(_loc6_)
            {
               _loc4_.y = _loc3_.y;
               loop1:
               while(true)
               {
                  _loc4_.id = _loc3_.name;
                  loop2:
                  while(true)
                  {
                     addr95:
                     while(true)
                     {
                        param1.§_-0AY§(_loc4_);
                        addr99:
                        while(!_loc5_)
                        {
                           if(!_loc6_)
                           {
                              continue loop1;
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
            while(true)
            {
               §§push(_loc2_);
               if(_loc6_)
               {
                  §§push(§§pop() + 1);
                  if(!(_loc5_ && param1))
                  {
                     §§push(Number(§§pop()));
                  }
               }
               _loc2_ = §§pop();
               if(_loc6_)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr95);
               }
               §§goto(addr99);
            }
         }
      }
      
      public function §_-3z§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         while(this.§_-j9§.length > 0)
         {
            this.§_-zn§(this.§_-j9§[0]);
            if(_loc1_)
            {
               break;
            }
         }
      }
      
      public function §_-wL§(param1:Point, param2:Point) : Array
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:Array = new Array();
         var _loc4_:* = Number(0);
         loop0:
         while(true)
         {
            §§push(_loc4_);
            loop1:
            while(!_loc6_)
            {
               if(!_loc6_)
               {
                  if(§§pop() >= this.§_-j9§.length)
                  {
                     if(!_loc6_)
                     {
                        if(_loc5_ || this)
                        {
                           §§push(this.§_-c§);
                           loop2:
                           while(true)
                           {
                              §§push(§§pop() > param1.x);
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop4:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          addr206:
                                          loop15:
                                          while(true)
                                          {
                                             §§push(this.§_-c§);
                                             addr148:
                                             while(true)
                                             {
                                                §§push(§§pop() < param2.x);
                                                addr151:
                                                while(!(_loc6_ && param2))
                                                {
                                                }
                                                continue loop15;
                                             }
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       while(!_loc6_)
                                       {
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(!(_loc5_ || _loc3_))
                                                {
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      §§goto(addr135);
                                                   }
                                                   addr134:
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         _loc3_.push(this);
                                                      }
                                                      if(!(_loc5_ || this))
                                                      {
                                                         addr135:
                                                         §§goto(addr24);
                                                      }
                                                   }
                                                   addr24:
                                                   while(true)
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         while(_loc5_ || param2)
                                                         {
                                                            §§push(this.§_-l1§);
                                                         }
                                                         continue loop0;
                                                         addr171:
                                                      }
                                                      if(_loc5_ || param2)
                                                      {
                                                         §§push(this.§_-l1§);
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               continue loop11;
                                                            }
                                                            continue loop1;
                                                         }
                                                         addr144:
                                                      }
                                                      §§goto(addr206);
                                                      while(_loc5_ || _loc3_)
                                                      {
                                                         continue loop2;
                                                         §§goto(addr144);
                                                      }
                                                      §§goto(addr148);
                                                   }
                                                   return _loc3_;
                                                }
                                             }
                                             continue;
                                             addr124:
                                          }
                                          §§goto(addr163);
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                        }
                        else
                        {
                           addr207:
                           §§push(_loc4_);
                           addr252:
                        }
                        addr210:
                        §§push(Number(§§pop() + 1));
                        break;
                     }
                     §§goto(addr206);
                  }
                  else if(this.§_-j9§[_loc4_].isInsideRectangle(param1.y,param2.y,param1.x,param2.x))
                  {
                     if(!(_loc6_ && _loc3_))
                     {
                        _loc3_.push(this.§_-j9§[_loc4_]);
                     }
                     §§goto(addr252);
                  }
                  §§goto(addr207);
               }
               §§goto(addr210);
            }
            _loc4_ = §§pop();
         }
      }
      
      public function §_-ly§() : Array
      {
         return [this.§_-0Bj§,this.§_-hP§];
      }
      
      public function §_-wC§(param1:String, param2:Number, param3:Number) : §_-pR§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:§_-pR§ = this.§_-01V§(param1,param2,param3);
         if(!(_loc6_ && param1))
         {
            this.§_-Lo§();
         }
         return _loc4_;
      }
      
      public function §_-0Cp§() : Number
      {
         return this.§_-j9§.length;
      }
   }
}
