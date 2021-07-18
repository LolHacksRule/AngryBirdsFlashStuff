package §_-CR§
{
   import §_-Cx§.§_-Gb§;
   import §_-Cx§.§_-UW§;
   import §_-HU§.§_-6n§;
   import §_-HU§.§_-Ju§;
   import §_-HU§.§_-Pq§;
   import §_-HU§.§_-gs§;
   import §_-HU§.§_-yP§;
   import §_-Iw§.b2Body;
   import §_-Iw§.b2BodyDef;
   import §_-Iw§.b2FilterData;
   import §_-Iw§.b2Fixture;
   import §_-Iw§.b2World;
   import §_-Ja§.b2Vec2;
   import §_-Kt§.b2PolygonShape;
   import §_-LP§.Sprite;
   import §_-OJ§.§_-tL§;
   import §_-OJ§.§_-vI§;
   import §_-e3§.§_-54§;
   import §_-lh§.b2Settings;
   import §_-rQ§.§_-Ou§;
   import flash.geom.Point;
   
   public class §_-Dz§
   {
      
      public static const §_-vu§:uint;
      
      public static const §_-UM§:uint;
      
      public static const §_-Du§:uint;
      
      public static const §_-mc§:uint;
      
      public static const §_-wb§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§§findproperty(§_-vu§));
            §§push(1);
            if(_loc2_)
            {
               §§push(§§pop() << §§pop());
            }
            §§pop().§_-vu§ = §§pop();
            if(!(_loc1_ && §_-Dz§))
            {
               §§push(§§findproperty(§_-UM§));
               §§push(1);
               if(_loc2_)
               {
                  §§push(§§pop() << 2);
               }
               §§pop().§_-UM§ = §§pop();
               if(!_loc1_)
               {
                  §§push(§§findproperty(§_-Du§));
                  §§push(1);
                  if(!_loc1_)
                  {
                     §§push(§§pop() << 3);
                  }
                  §§pop().§_-Du§ = §§pop();
                  if(_loc1_)
                  {
                  }
                  §§goto(addr81);
               }
               §§push(§§findproperty(§_-mc§));
               §§push(1);
               if(_loc2_ || _loc1_)
               {
                  §§push(§§pop() << 4);
               }
               §§pop().§_-mc§ = §§pop();
               if(_loc1_ && _loc2_)
               {
               }
               §§goto(addr81);
            }
         }
         addr81:
      }
      
      private var §_-r§:int;
      
      private var §_-C0§:int;
      
      public var §_-L1§:String;
      
      public var §_-1n§:int;
      
      private var §_-CX§:§_-Pq§;
      
      private var §_-gH§:§_-F5§;
      
      private var §_-fy§:b2World;
      
      public var §_-v2§:Boolean = false;
      
      private var §_-7K§:b2Fixture;
      
      private var §_-ih§:b2Body;
      
      private var §_-Xn§:b2Vec2;
      
      public var §_-Qm§:Number;
      
      public var §_-FF§:Number;
      
      private var §_-1k§:Number;
      
      private var §_-wy§:Number;
      
      private var §_-hB§:Number;
      
      private var §default§:Number;
      
      private var §_-0N§:Number;
      
      private var §_-qn§:Number;
      
      private var §_-Sz§:Number;
      
      public var §_-Qr§:Number = 1;
      
      public var §_-3h§:Number = 0;
      
      public var §_-fO§:Number = 0;
      
      protected var §_-J3§:Boolean = false;
      
      public var §_-e7§:§_-l9§;
      
      private var §_-Cv§:Sprite;
      
      private var mX:Number = 0;
      
      private var mY:Number = 0;
      
      private var §_-O5§:Number = 0;
      
      private var §_-KA§:Number = 1.0;
      
      private var §_-kf§:Boolean = true;
      
      public function §_-Dz§(param1:§_-F5§, param2:Sprite, param3:b2World, param4:§_-tL§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number)
      {
         var _loc15_:Boolean = false;
         var _loc16_:Boolean = true;
         var _loc13_:b2PolygonShape = null;
         super();
         this.§_-L1§ = param6;
         this.§_-CX§ = §_-yP§.§_-nU§(param6);
         this.§_-gH§ = param1;
         if(!(_loc15_ && param2))
         {
            this.§_-Cv§ = param2;
            this.§_-KA§ = param10;
            this.§_-r§ = param5;
            this.§_-1n§ = this.§_-CX§.§_-1n§;
         }
         this.§_-C0§ = this.§_-CX§.§_-NI§();
         this.§_-e7§ = new §_-l9§(this,param2,param4);
         if(_loc16_ || param2)
         {
            §§push(this.§_-e7§);
            if(_loc16_ || param2)
            {
               if(!§§pop().§_-Yy§(param1.§_-Ag§.§_-tJ§))
               {
                  if(!(_loc15_ && param2))
                  {
                     §§push(this.§_-e7§);
                     if(_loc16_ || param1)
                     {
                        §§push(this.§_-C0§);
                        if(!_loc15_)
                        {
                           §§pop().§_-hu§(§§pop(),this.§_-CX§.§_-zH§(),this.§_-CX§.§_-ff§() / §_-tL§.§_-7m§,this.§_-CX§.§_-zE§() / §_-tL§.§_-7m§);
                           addr122:
                           §§push(this.§_-e7§);
                           §§push(this.§_-C0§);
                        }
                        §§pop().§_-Hl§(§§pop() == §_-Ju§.§_-d9§);
                        addr128:
                        this.§_-fy§ = param3;
                        var _loc11_:b2BodyDef = this.createBodyDefinition(param7,param8);
                        this.§_-ih§ = this.§_-fy§.§_-EK§(_loc11_);
                        this.§_-ih§.§_-g6§(this);
                        if(_loc16_)
                        {
                           §§push(this.§_-C0§);
                           if(_loc16_)
                           {
                              §§push(§_-Ju§.§_-4b§);
                              if(_loc16_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    addr158:
                                    §§push(b2PolygonShape);
                                    §§push(this.§_-CX§.shape.§_-sa§);
                                    if(!_loc15_)
                                    {
                                       §§push(param10);
                                       if(!(_loc15_ && param1))
                                       {
                                          addr174:
                                          §§push(§§pop() * §§pop());
                                          §§push(this.§_-CX§.shape.§_-cr§);
                                          if(!_loc15_)
                                          {
                                             §§push(§§pop() * param10);
                                          }
                                       }
                                       _loc13_ = §§pop().§_-5V§(§§pop(),§§pop());
                                       if(!(_loc15_ && param1))
                                       {
                                          this.§_-7K§ = this.§_-ih§.CreateFixture2(_loc13_,this.§_-CX§.§_-eG§());
                                          if(!_loc15_)
                                          {
                                             addr258:
                                             §§push(this.§_-7K§);
                                             if(_loc16_)
                                             {
                                                §§push(this.§_-CX§);
                                                if(_loc16_)
                                                {
                                                   §§push(§§pop().§_-gJ§());
                                                   if(_loc16_)
                                                   {
                                                      §§pop().§_-FW§(§§pop());
                                                      addr283:
                                                      if(!(_loc15_ && this))
                                                      {
                                                         addr281:
                                                         §§push(this.§_-7K§);
                                                         §§push(this.§_-CX§.§_-sA§());
                                                      }
                                                      var _loc12_:b2FilterData = new b2FilterData();
                                                      §§push(this.§_-gt§());
                                                      if(!_loc15_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            _loc12_.§try§ = §_-vu§;
                                                            if(!_loc15_)
                                                            {
                                                               §§push(_loc12_);
                                                               §§push(65535);
                                                               if(_loc16_)
                                                               {
                                                                  §§push(§§pop() & ~§_-UM§);
                                                               }
                                                               §§pop().§_-Gi§ = §§pop();
                                                               if(_loc16_ || param1)
                                                               {
                                                                  addr351:
                                                                  this.§_-7K§.§_-9A§(_loc12_);
                                                                  if(!(_loc15_ && param1))
                                                                  {
                                                                     addr362:
                                                                     this.§_-1k§ = this.§_-CX§.§_-3j§();
                                                                     §§push(this.§_-CX§);
                                                                     if(_loc16_ || param1)
                                                                     {
                                                                        §§push(§§pop().§_-FF§);
                                                                        if(_loc16_ || param3)
                                                                        {
                                                                           §§push(0);
                                                                           if(_loc16_ || this)
                                                                           {
                                                                              if(§§pop() > §§pop())
                                                                              {
                                                                                 this.§_-Qm§ = this.§_-FF§ = this.§_-CX§.§_-FF§;
                                                                                 addr446:
                                                                                 if(this.§_-CX§.§_-1n§ == §_-Pq§.§_-J-§)
                                                                                 {
                                                                                    this.§_-Cv§.visible = false;
                                                                                    addr469:
                                                                                    if(this.isTexture())
                                                                                    {
                                                                                       if(_loc16_ || this)
                                                                                       {
                                                                                          addr479:
                                                                                          if(param9 != 0)
                                                                                          {
                                                                                             if(_loc16_)
                                                                                             {
                                                                                                addr484:
                                                                                                this.§_-JM§(param9);
                                                                                                addr487:
                                                                                                this.§_-vU§();
                                                                                                if(_loc15_)
                                                                                                {
                                                                                                }
                                                                                                addr504:
                                                                                                this.§_-e7§.§_-Py§(this.§_-CX§.shape);
                                                                                                return;
                                                                                                addr502:
                                                                                             }
                                                                                             this.§_-Qk§(0,1);
                                                                                             §§goto(addr502);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr487);
                                                                                    }
                                                                                    §§goto(addr479);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(this.§_-e7§);
                                                                                    if(!_loc15_)
                                                                                    {
                                                                                       §§pop().setDamagedFrame();
                                                                                       if(!(_loc15_ && param2))
                                                                                       {
                                                                                          §§goto(addr469);
                                                                                       }
                                                                                       §§goto(addr487);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr504);
                                                                              }
                                                                              else
                                                                              {
                                                                                 this.§_-Qm§ = this.§_-FF§ = Math.round(this.§_-jY§(true) * this.§_-CX§.§_-yd§());
                                                                                 if(!_loc15_)
                                                                                 {
                                                                                    §§push(this.§_-Qm§);
                                                                                    if(_loc16_ || param1)
                                                                                    {
                                                                                       §§push(1);
                                                                                       if(_loc16_)
                                                                                       {
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             this.§_-Qm§ = this.§_-FF§ = 1;
                                                                                          }
                                                                                          §§goto(addr446);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr479);
                                                                                 }
                                                                              }
                                                                              §§goto(addr487);
                                                                           }
                                                                        }
                                                                        §§goto(addr479);
                                                                     }
                                                                     §§goto(addr446);
                                                                  }
                                                                  §§goto(addr484);
                                                               }
                                                               §§goto(addr479);
                                                            }
                                                            §§goto(addr362);
                                                         }
                                                         else
                                                         {
                                                            §§push(this.§_-L1§);
                                                            if(!(_loc15_ && param3))
                                                            {
                                                               §§push(§§pop().toUpperCase() == "MISC_WHITE_BIRD_EGG");
                                                               if(_loc16_)
                                                               {
                                                                  addr327:
                                                                  if(!§§pop())
                                                                  {
                                                                     if(_loc16_)
                                                                     {
                                                                        addr331:
                                                                        §§pop();
                                                                        §§push(this.§_-L1§.toUpperCase() == "MISC_FOOD_EGG");
                                                                        if(!_loc16_)
                                                                        {
                                                                        }
                                                                        §§goto(addr469);
                                                                     }
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     _loc12_.§try§ = §_-UM§;
                                                                     §§push(_loc12_);
                                                                     §§push(65535);
                                                                     if(!_loc15_)
                                                                     {
                                                                        §§push(§§pop() & ~§_-vu§);
                                                                     }
                                                                     §§pop().§_-Gi§ = §§pop();
                                                                  }
                                                                  §§goto(addr351);
                                                               }
                                                            }
                                                            §§goto(addr331);
                                                         }
                                                      }
                                                      §§goto(addr327);
                                                   }
                                                   §§pop().§_-6X§(§§pop());
                                                   §§goto(addr283);
                                                }
                                             }
                                             §§goto(addr281);
                                          }
                                       }
                                       §§goto(addr283);
                                    }
                                    §§goto(addr174);
                                 }
                                 else
                                 {
                                    §§push(this.§_-C0§);
                                    if(_loc16_)
                                    {
                                       addr208:
                                       §§push(§_-Ju§.§_-d9§);
                                       if(_loc16_ || param3)
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!_loc15_)
                                          {
                                             if(!§§pop())
                                             {
                                                if(!(_loc15_ && param2))
                                                {
                                                   addr229:
                                                   §§pop();
                                                   if(_loc16_)
                                                   {
                                                      addr237:
                                                      if(this.§_-C0§ == §_-Ju§.§_-K9§)
                                                      {
                                                      }
                                                      §§goto(addr258);
                                                   }
                                                   this.§_-7K§ = this.§_-ih§.CreateFixture2(this.§_-CX§.shape.§_-3O§(param10),this.§_-CX§.§_-eG§());
                                                   §§goto(addr258);
                                                }
                                             }
                                             §§goto(addr237);
                                          }
                                          §§goto(addr229);
                                       }
                                    }
                                    §§goto(addr237);
                                 }
                              }
                              §§goto(addr237);
                           }
                           §§goto(addr208);
                        }
                        §§goto(addr158);
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr128);
               }
            }
            §§goto(addr122);
         }
         §§goto(addr128);
      }
      
      public static function §_-OR§(param1:int, param2:§_-6n§, param3:String = "") : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            if(param2 == null)
            {
               if(!(_loc5_ && param3))
               {
                  return;
               }
            }
         }
         var _loc4_:String;
         §§push(_loc4_ = param2.§_-xd§[param1]);
         if(_loc6_ || §_-Dz§)
         {
            if(§§pop().length > 0)
            {
               if(!(_loc5_ && §_-Dz§))
               {
                  §§push(param3);
                  if(!_loc5_)
                  {
                     if(§§pop().length <= 0)
                     {
                        if(_loc6_)
                        {
                           addr71:
                           §§push(param2.§_-C6§);
                           if(_loc5_ && param1)
                           {
                           }
                        }
                        §§goto(addr81);
                     }
                     §_-Ou§.§_-ml§(_loc4_,param3);
                     addr81:
                     param3 = §§pop();
                     §§goto(addr80);
                  }
                  addr80:
                  if(_loc6_ || param2)
                  {
                  }
                  return;
               }
               §§goto(addr71);
            }
         }
         §§goto(addr81);
      }
      
      public static function §_-kV§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(360);
         §§push(param1);
         if(!(_loc3_ && _loc3_))
         {
            §§push(180);
            if(_loc2_ || param1)
            {
               §§push(§§pop() * §§pop());
               if(_loc2_ || §_-Dz§)
               {
                  §§push(§§pop() / Math.PI);
                  if(!_loc3_)
                  {
                     addr51:
                     §§push(§§pop() % 360);
                  }
               }
               §§push(§§pop() - §§pop());
               if(!(_loc3_ && _loc2_))
               {
                  §§push(§§pop() % 360);
               }
               return §§pop();
            }
         }
         §§goto(addr51);
      }
      
      public static function §_-gB§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(360);
         §§push(param1);
         if(!_loc4_)
         {
            §§push(§§pop() % 360);
         }
         §§push(§§pop() - §§pop());
         if(_loc3_ || _loc3_)
         {
            §§push(§§pop() / (180 / Math.PI));
            if(_loc3_)
            {
               addr48:
               §§push(Number(§§pop()));
            }
            return §§pop();
         }
         §§goto(addr48);
      }
      
      public function get sprite() : Sprite
      {
         return this.§_-Cv§;
      }
      
      public function get x() : Number
      {
         return this.mX;
      }
      
      public function get y() : Number
      {
         return this.mY;
      }
      
      public function get scale() : Number
      {
         return this.§_-KA§;
      }
      
      public function get §_-Fc§() : Number
      {
         return this.§_-ih§.GetPosition().x;
      }
      
      public function get §_-50§() : Number
      {
         return this.§_-ih§.GetPosition().y;
      }
      
      public function get §_-JZ§() : §_-Pq§
      {
         return this.§_-CX§;
      }
      
      public function get §_-Fi§() : Boolean
      {
         return this.§_-1k§ >= 0;
      }
      
      protected function get container() : §_-F5§
      {
         return this.§_-gH§;
      }
      
      public function get §_-Yz§() : Boolean
      {
         return this.§_-kf§;
      }
      
      public function set §_-Yz§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-kf§ = param1;
         }
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function getSpecialAnimationTimeLeft() : Number
      {
         return 0;
      }
      
      public function §_-RR§(param1:b2FilterData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§_-7K§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr31:
                     this.§_-7K§.§_-9A§(param1);
                  }
               }
               return;
            }
         }
         §§goto(addr31);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2BodyDef = new b2BodyDef();
         §§push(_loc3_.position);
         if(!_loc4_)
         {
            §§push(param1);
            if(_loc5_ || this)
            {
               §§pop().x = §§pop();
               if(_loc5_)
               {
                  addr43:
                  _loc3_.position.y = param2;
                  _loc3_.type = this.§_-CX§.§_-gz§();
               }
               _loc3_.§_-J4§ = true;
               _loc3_.§_-TG§ = true;
               _loc3_.§_-MK§ = true;
               _loc3_.§_-K5§ = 1;
               _loc3_.§_-eK§ = false;
               return _loc3_;
            }
         }
         §§goto(addr43);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§_-fy§);
            if(!(_loc2_ && this))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr34:
                     this.§_-fy§.§_-uT§(this.§_-zq§());
                     addr32:
                     if(!(_loc2_ && _loc2_))
                     {
                        this.§_-fy§ = null;
                        addr54:
                        this.§_-e7§.dispose();
                     }
                     §§push(this.§_-Cv§);
                     if(_loc1_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc2_ && _loc2_))
                           {
                              addr71:
                              this.§_-Cv§.dispose();
                              if(_loc1_)
                              {
                                 this.§_-Cv§ = null;
                                 if(!(_loc2_ && this))
                                 {
                                    addr91:
                                    this.§_-7K§ = null;
                                    this.§_-Xn§ = null;
                                 }
                                 §§goto(addr100);
                              }
                           }
                           this.§_-CX§ = null;
                           §§goto(addr100);
                        }
                        §§goto(addr91);
                     }
                     §§goto(addr71);
                  }
                  addr100:
                  return;
               }
               §§goto(addr54);
            }
            §§goto(addr34);
         }
         §§goto(addr32);
      }
      
      public function §_-JM§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §§push(this.§_-zq§());
            §§push(360);
            §§push(param1);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() % 360);
            }
            §§push(§§pop() - §§pop());
            if(!_loc2_)
            {
               §§push(§§pop() / (180 / Math.PI));
            }
            §§pop().§_-eH§(§§pop());
         }
      }
      
      public function §_-Js§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(360);
         §§push(this.§_-zq§().GetAngle());
         if(_loc2_)
         {
            §§push(180);
            if(_loc2_ || this)
            {
               §§push(§§pop() * §§pop());
               if(_loc2_ || this)
               {
                  §§push(§§pop() / Math.PI);
                  if(_loc2_ || _loc1_)
                  {
                     addr53:
                     §§push(§§pop() % 360);
                  }
                  §§push(§§pop() - §§pop());
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(§§pop() % 360);
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr53);
      }
      
      public function §var§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param1)
         {
            this.§_-zq§().SetLinearVelocity(param1);
            if(!(_loc5_ && param3))
            {
               §§push(param2);
               if(!_loc5_)
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        this.§_-Nn§();
                        if(_loc4_ || param1)
                        {
                           addr53:
                           if(param3)
                           {
                              if(_loc5_ && this)
                              {
                              }
                           }
                        }
                        §§goto(addr71);
                     }
                     this.§_-gX§();
                     §§goto(addr71);
                  }
               }
            }
            §§goto(addr53);
         }
         addr71:
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§_-7K§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            §§push(this.§_-zq§());
            if(!_loc5_)
            {
               §§push(§§pop().GetPosition());
               if(_loc6_)
               {
                  §§push(§§pop().x);
                  if(!(_loc5_ && param3))
                  {
                     §§push(param3);
                     if(_loc6_ || param1)
                     {
                        §§push(§§pop() >= §§pop());
                        §§push(§§pop() >= §§pop());
                        if(!(_loc5_ && param2))
                        {
                           if(§§pop())
                           {
                              §§pop();
                              if(!(_loc5_ && param3))
                              {
                                 §§push(this.§_-zq§());
                                 if(_loc6_ || param2)
                                 {
                                    §§push(§§pop().GetPosition());
                                    if(_loc6_ || param2)
                                    {
                                       addr86:
                                       §§push(§§pop().x);
                                       if(_loc6_ || param3)
                                       {
                                          §§push(param4);
                                          if(!(_loc5_ && param1))
                                          {
                                             §§push(§§pop() <= §§pop());
                                             if(_loc6_)
                                             {
                                                addr105:
                                                §§push(§§pop());
                                                if(_loc6_ || this)
                                                {
                                                   addr113:
                                                   if(§§pop())
                                                   {
                                                      addr114:
                                                      §§pop();
                                                      if(_loc6_)
                                                      {
                                                         addr117:
                                                         §§push(this.§_-zq§());
                                                         if(!(_loc5_ && param2))
                                                         {
                                                            addr126:
                                                            §§push(§§pop().GetPosition());
                                                            if(!_loc5_)
                                                            {
                                                               addr129:
                                                               §§push(§§pop().y);
                                                               if(_loc6_ || param1)
                                                               {
                                                                  addr137:
                                                                  §§push(param1);
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§push(§§pop() >= §§pop());
                                                                     if(!_loc5_)
                                                                     {
                                                                        addr143:
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc6_)
                                                                           {
                                                                              §§pop();
                                                                              addr160:
                                                                              §§push(this.§_-zq§().GetPosition().y <= param2);
                                                                           }
                                                                        }
                                                                     }
                                                                     return §§pop();
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr160);
                                                   }
                                                }
                                                §§goto(addr143);
                                             }
                                             §§goto(addr114);
                                          }
                                          §§goto(addr160);
                                       }
                                       §§goto(addr137);
                                    }
                                    §§goto(addr129);
                                 }
                              }
                              §§goto(addr160);
                           }
                           §§goto(addr105);
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr160);
                  }
                  §§goto(addr137);
               }
               §§goto(addr86);
            }
            §§goto(addr126);
         }
         §§goto(addr117);
      }
      
      public function §_-Io§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_-Xn§ = param1;
         }
      }
      
      public function §_-Ac§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(this.§_-Xn§)
            {
               if(!_loc2_)
               {
                  this.§var§(this.§_-Xn§,false);
                  if(_loc1_)
                  {
                     addr46:
                     this.§_-Xn§ = null;
                  }
               }
            }
            return;
         }
         §§goto(addr46);
      }
      
      public function §_-Nn§(param1:b2Vec2 = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(!param1)
            {
               if(_loc2_ || param1)
               {
                  §§push(this.§_-zq§());
                  if(!_loc3_)
                  {
                     param1 = §§pop().GetLinearVelocity();
                     addr36:
                     §§push(param1.x);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(0);
                        if(!_loc3_)
                        {
                           §§push(§§pop() == §§pop());
                           if(!(_loc3_ && _loc2_))
                           {
                              if(§§pop())
                              {
                                 if(_loc2_ || _loc2_)
                                 {
                                    §§pop();
                                    §§goto(addr112);
                                 }
                              }
                           }
                           if(§§pop())
                           {
                              if(_loc2_)
                              {
                                 §§push(this.§_-zq§());
                                 if(!(_loc3_ && param1))
                                 {
                                    addr91:
                                    §§pop().§_-kz§(0);
                                    if(!_loc2_)
                                    {
                                    }
                                 }
                              }
                              §§goto(addr112);
                           }
                           else
                           {
                              §§push(this.§_-zq§());
                           }
                           §§pop().§_-kz§(Math.atan2(param1.x,param1.y));
                           §§goto(addr112);
                        }
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr91);
               }
               addr112:
               if(!_loc3_)
               {
                  addr78:
                  §§push(param1.y == 0);
               }
               return;
            }
            §§goto(addr36);
         }
         §§goto(addr78);
      }
      
      public function §_-gX§(param1:b2Vec2 = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!param1)
            {
               addr17:
               param1 = this.§_-zq§().GetLinearVelocity();
            }
            §§push(Math.atan2(-param1.y,param1.x) * (180 / Math.PI));
            if(_loc3_)
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(_loc3_ || _loc2_)
            {
               this.§_-JM§(_loc2_);
            }
            return;
         }
         §§goto(addr17);
      }
      
      public function §_-zS§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-zq§().§_-kz§(param1);
         }
      }
      
      public function §_-zq§() : b2Body
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§_-7K§);
            if(_loc2_)
            {
               if(§§pop() != null)
               {
                  if(_loc2_)
                  {
                     §§goto(addr33);
                  }
               }
               return null;
            }
            §§goto(addr33);
         }
         addr33:
         return this.§_-7K§.GetBody();
      }
      
      public function §_-f3§(param1:Number = -9999, param2:Number = -9999) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(param1 != -9999)
            {
               if(_loc4_ || this)
               {
                  this.mX = param1;
                  if(_loc3_)
                  {
                  }
                  addr41:
                  §§push(this.§_-zq§());
                  if(!_loc3_)
                  {
                     §§push(§§pop().GetPosition());
                     if(!_loc3_)
                     {
                        §§push(this.mX);
                        if(_loc4_ || param2)
                        {
                           §§push(§_-tL§.§_-7m§);
                           if(!_loc3_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc4_)
                              {
                                 §§goto(addr71);
                              }
                           }
                           §§goto(addr98);
                        }
                        §§goto(addr71);
                     }
                  }
                  §§goto(addr82);
               }
               this.mY = param2;
               if(!(_loc3_ && this))
               {
                  §§goto(addr41);
               }
               addr71:
               §§pop().x = §§pop();
               if(!(_loc3_ && param1))
               {
                  addr82:
                  §§push(this.§_-zq§().GetPosition());
                  §§push(this.mY);
                  if(!(_loc3_ && param2))
                  {
                     addr98:
                     §§push(§§pop() * §_-tL§.§_-7m§);
                  }
                  §§pop().y = §§pop();
               }
               return;
            }
         }
         §§goto(addr41);
      }
      
      public function §_-Qk§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Number = NaN;
         var _loc3_:* = false;
         if(_loc6_)
         {
            if(this.§_-J3§)
            {
               §§push(true);
               if(!(_loc5_ && param2))
               {
                  _loc3_ = §§pop();
                  this.§_-J3§ = false;
                  if(!(_loc5_ && param2))
                  {
                     addr42:
                     if(this.updateSpecialAnimation(param2))
                     {
                        _loc3_ = true;
                        if(!(_loc5_ && param2))
                        {
                           addr55:
                           if(this.updateFlyingFrameAnimations(param2))
                           {
                              _loc3_ = true;
                              if(!_loc5_)
                              {
                                 addr63:
                                 §§push(this.updateScreamingFrameAnimations(param2));
                                 if(_loc6_ || param2)
                                 {
                                    if(§§pop())
                                    {
                                       addr74:
                                       _loc3_ = true;
                                    }
                                    §§push(this.updateBlinkingFrameAnimations(param2));
                                    if(!(_loc5_ && param2))
                                    {
                                       addr86:
                                       if(§§pop())
                                       {
                                          addr88:
                                          _loc3_ = true;
                                          if(!(_loc5_ && param2))
                                          {
                                             addr96:
                                             §§push(_loc3_);
                                             if(_loc6_ || param2)
                                             {
                                                addr104:
                                                if(§§pop())
                                                {
                                                   if(_loc6_)
                                                   {
                                                      addr107:
                                                      §§push(this.§_-e7§);
                                                      if(!(_loc5_ && param2))
                                                      {
                                                         §§pop().§_-nj§();
                                                         addr117:
                                                         §§push(this.§_-Qr§);
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            §§push(§§pop() > 1);
                                                            if(!_loc5_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§pop();
                                                                     addr142:
                                                                     §§push(this.§_-e7§);
                                                                     if(_loc6_ || _loc3_)
                                                                     {
                                                                        addr153:
                                                                        if(§§pop().§_-U9§)
                                                                        {
                                                                           §§push(4);
                                                                           §§push(this.§_-e7§.§_-U9§.blurX - 4);
                                                                           if(_loc6_ || param1)
                                                                           {
                                                                              §§push(param2);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§push(§§pop() / 20);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc5_)
                                                                              {
                                                                                 addr176:
                                                                                 §§push(§§pop() % 28);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc5_)
                                                                              {
                                                                                 addr182:
                                                                                 _loc4_ = §§pop();
                                                                                 §§push(this.§_-e7§);
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    §§pop().§_-U9§.blurX = _loc4_;
                                                                                    if(!(_loc5_ && this))
                                                                                    {
                                                                                       addr197:
                                                                                       §§push(this.§_-e7§);
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          addr201:
                                                                                          §§pop().§_-U9§.blurY = _loc4_;
                                                                                          addr206:
                                                                                          this.§_-e7§.§_-b2§(param2);
                                                                                       }
                                                                                       §§goto(addr206);
                                                                                    }
                                                                                    if(§_-wb§)
                                                                                    {
                                                                                       if(_loc6_ || _loc3_)
                                                                                       {
                                                                                          this.§_-vq§(param1);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       this.§_-O5§ = this.§default§;
                                                                                       this.mX = this.§_-wy§;
                                                                                       this.mY = this.§_-hB§;
                                                                                    }
                                                                                    §§push(this.§_-Cv§);
                                                                                    if(!(_loc5_ && this))
                                                                                    {
                                                                                       §§pop().x = Math.round(this.mX);
                                                                                       addr247:
                                                                                       §§push(this.§_-Cv§);
                                                                                       if(!_loc5_)
                                                                                       {
                                                                                          §§pop().y = Math.round(this.mY);
                                                                                          §§push(this.§_-Cv§);
                                                                                       }
                                                                                    }
                                                                                    §§push(this.§_-O5§);
                                                                                    if(_loc6_)
                                                                                    {
                                                                                       §§push(§§pop() / 180);
                                                                                       if(_loc6_ || param1)
                                                                                       {
                                                                                          addr278:
                                                                                          §§push(§§pop() * Math.PI);
                                                                                       }
                                                                                       §§pop().rotation = §§pop();
                                                                                       return;
                                                                                    }
                                                                                    §§goto(addr278);
                                                                                 }
                                                                                 §§goto(addr201);
                                                                              }
                                                                              §§goto(addr182);
                                                                           }
                                                                           §§goto(addr176);
                                                                        }
                                                                     }
                                                                     §§goto(addr201);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr153);
                                                         }
                                                         §§goto(addr182);
                                                      }
                                                      §§goto(addr201);
                                                   }
                                                   §§goto(addr142);
                                                }
                                                §§goto(addr117);
                                             }
                                             §§goto(addr153);
                                          }
                                          §§goto(addr107);
                                       }
                                       §§goto(addr96);
                                    }
                                    §§goto(addr104);
                                 }
                                 §§goto(addr86);
                              }
                              §§goto(addr201);
                           }
                           §§goto(addr63);
                        }
                        §§goto(addr247);
                     }
                     §§goto(addr55);
                  }
                  §§goto(addr197);
               }
               §§goto(addr88);
            }
            §§goto(addr42);
         }
         §§goto(addr74);
      }
      
      public function §_-vU§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§_-zq§().GetPosition().x);
         if(_loc3_ || _loc2_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(this.§_-zq§().GetPosition().y);
         if(_loc3_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc1_)
         {
            this.§_-Sz§ = this.§default§;
         }
         this.§_-0N§ = this.§_-wy§;
         if(!(_loc4_ && this))
         {
            this.§_-qn§ = this.§_-hB§;
            if(!_loc4_)
            {
               §§push(this);
               §§push(this.§_-zq§().GetAngle());
               if(!_loc4_)
               {
                  §§push(180);
                  if(_loc3_ || this)
                  {
                     §§goto(addr96);
                  }
                  §§push(§§pop() % §§pop());
               }
               addr96:
               §§push(§§pop() * (§§pop() / Math.PI));
               if(!_loc4_)
               {
                  §§push(360);
               }
               §§pop().§default§ = §§pop();
               §§push(this);
               §§push(_loc1_);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop() / §_-tL§.§_-7m§);
               }
               §§pop().§_-wy§ = §§pop();
               if(!_loc4_)
               {
                  §§push(this);
                  §§push(_loc2_);
                  if(_loc3_ || this)
                  {
                     §§push(§§pop() / §_-tL§.§_-7m§);
                  }
                  §§pop().§_-hB§ = §§pop();
               }
               §§goto(addr132);
            }
            addr132:
            return;
         }
         §§goto(addr96);
      }
      
      protected function updateSpecialAnimation(param1:Number) : Boolean
      {
         return false;
      }
      
      protected function updateBlinkingFrameAnimations(param1:Number) : Boolean
      {
         return false;
      }
      
      protected function updateFlyingFrameAnimations(param1:Number) : Boolean
      {
         return false;
      }
      
      protected function updateScreamingFrameAnimations(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §_-vq§(param1:Number, param2:Number = -1) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         §§push(1e-9);
         if(!(_loc4_ && this))
         {
            if(§§pop() > §§pop())
            {
               if(_loc3_ || param1)
               {
                  §§push(§_-54§);
                  §§push("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1);
                  if(_loc3_)
                  {
                     §§push(§§pop() + " overriding to 0");
                  }
                  §§pop().log(§§pop());
                  addr39:
                  if(param2 < 0)
                  {
                     param2 = this.§_-gH§.§_-Ag§.§_-hA§.§_-Vi§ * 1000;
                  }
                  §§push(param1);
                  if(!_loc4_)
                  {
                     §§push(-1);
                     if(!(_loc4_ && param2))
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc3_ || _loc3_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc3_)
                           {
                              param1 = §§pop();
                              if(!(_loc4_ && param2))
                              {
                                 addr83:
                                 §§push(this.§_-wy§ == this.§_-0N§);
                                 if(_loc3_ || param2)
                                 {
                                    if(!§§pop())
                                    {
                                       §§pop();
                                       §§push(param1);
                                       if(!_loc4_)
                                       {
                                          addr100:
                                          §§push(§§pop() == 0);
                                          if(_loc3_)
                                          {
                                             addr103:
                                             if(§§pop())
                                             {
                                                if(!_loc4_)
                                                {
                                                   this.§_-3h§ = 0;
                                                   this.mX = this.§_-wy§;
                                                   addr157:
                                                   §§push(this.§_-hB§);
                                                   if(!(_loc4_ && this))
                                                   {
                                                      addr166:
                                                      §§push(§§pop() == this.§_-qn§);
                                                      if(_loc3_ || param2)
                                                      {
                                                         §§push(§§pop());
                                                         if(_loc3_)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               §§pop();
                                                               §§push(param1);
                                                               if(!_loc4_)
                                                               {
                                                                  §§push(§§pop() == 0);
                                                                  if(!(_loc4_ && this))
                                                                  {
                                                                     addr193:
                                                                     if(§§pop())
                                                                     {
                                                                        this.§_-fO§ = 0;
                                                                        addr197:
                                                                        this.mY = this.§_-hB§;
                                                                        if(!(_loc4_ && param1))
                                                                        {
                                                                           addr252:
                                                                           §§push(this.§default§);
                                                                           if(!(_loc4_ && this))
                                                                           {
                                                                              §§push(this.§_-Sz§);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr266:
                                                                                 §§push(§§pop() == §§pop());
                                                                                 if(!(§§pop() == §§pop()))
                                                                                 {
                                                                                    §§pop();
                                                                                    §§push(param1);
                                                                                    §§push(0);
                                                                                    if(!(_loc4_ && this))
                                                                                    {
                                                                                       §§push(§§pop() == §§pop());
                                                                                       if(!(_loc4_ && this))
                                                                                       {
                                                                                          addr286:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!(_loc4_ && _loc3_))
                                                                                             {
                                                                                                this.§_-O5§ = this.§default§;
                                                                                                if(!_loc3_)
                                                                                                {
                                                                                                   addr510:
                                                                                                   §§push(this.§default§);
                                                                                                   §§push(this.§_-Sz§);
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop() <= 180);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         addr521:
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            addr522:
                                                                                                            §§push(this);
                                                                                                            §§push(this.§default§);
                                                                                                            if(_loc3_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(param1);
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  §§push(this.§_-Sz§);
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - this.§default§);
                                                                                                                     if(_loc3_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr559:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc3_ || param2)
                                                                                                                        {
                                                                                                                           §§push(param2);
                                                                                                                        }
                                                                                                                        §§pop().§_-O5§ = §§pop() + §§pop();
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           addr634:
                                                                                                                           return;
                                                                                                                           addr563:
                                                                                                                        }
                                                                                                                        §§goto(addr634);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr559);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr566:
                                                                                                            §§push(this.§_-Sz§ < this.§default§);
                                                                                                            if(!(_loc4_ && param2))
                                                                                                            {
                                                                                                               §§push(§§pop() && §§pop() > 180);
                                                                                                            }
                                                                                                            §§goto(addr578);
                                                                                                         }
                                                                                                      }
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         addr594:
                                                                                                         §§push(this);
                                                                                                         §§push(this.§default§);
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§push(param1);
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               §§push(this.§_-Sz§);
                                                                                                               if(!(_loc4_ && param2))
                                                                                                               {
                                                                                                                  §§push(§§pop() + 360);
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - this.§default§);
                                                                                                                     if(!_loc4_)
                                                                                                                     {
                                                                                                                        addr632:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           §§push(param2);
                                                                                                                        }
                                                                                                                        §§pop().§_-O5§ = §§pop() + §§pop();
                                                                                                                        §§goto(addr634);
                                                                                                                     }
                                                                                                                     §§goto(addr632);
                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr632);
                                                                                                      }
                                                                                                      §§goto(addr634);
                                                                                                   }
                                                                                                   §§goto(addr590);
                                                                                                }
                                                                                                §§goto(addr634);
                                                                                             }
                                                                                             §§goto(addr510);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(this.§_-Sz§);
                                                                                             if(_loc3_ || _loc3_)
                                                                                             {
                                                                                                addr319:
                                                                                                §§push(§§pop() > this.§default§);
                                                                                                if(!(_loc4_ && param1))
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         if(!(_loc4_ && param2))
                                                                                                         {
                                                                                                            §§push(this.§_-Sz§);
                                                                                                            if(_loc3_ || this)
                                                                                                            {
                                                                                                               addr351:
                                                                                                               §§push(§§pop() - this.§default§);
                                                                                                               §§push(180);
                                                                                                               if(!(_loc4_ && param2))
                                                                                                               {
                                                                                                                  addr360:
                                                                                                                  if(§§pop() <= §§pop())
                                                                                                                  {
                                                                                                                     if(_loc3_ || this)
                                                                                                                     {
                                                                                                                        §§push(this);
                                                                                                                        §§push(this.§default§);
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           §§push(param1);
                                                                                                                           if(_loc3_ || this)
                                                                                                                           {
                                                                                                                              §§push(this.§_-Sz§);
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - this.§default§);
                                                                                                                                 if(_loc3_ || this)
                                                                                                                                 {
                                                                                                                                    addr401:
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       addr399:
                                                                                                                                       §§push(§§pop() / param2);
                                                                                                                                    }
                                                                                                                                    §§pop().§_-O5§ = §§pop() + §§pop();
                                                                                                                                    if(_loc3_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       addr409:
                                                                                                                                       §§goto(addr634);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr522);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr399);
                                                                                                                        }
                                                                                                                        §§goto(addr401);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr454:
                                                                                                                        §§push(this);
                                                                                                                        §§push(this.§default§);
                                                                                                                        if(!_loc4_)
                                                                                                                        {
                                                                                                                           §§push(param1);
                                                                                                                           if(!(_loc4_ && param1))
                                                                                                                           {
                                                                                                                              §§push(this.§_-Sz§);
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - 360);
                                                                                                                                 if(!_loc4_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() - this.§default§);
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    addr491:
                                                                                                                                    §§pop().§_-O5§ = §§pop() + §§pop() / §§pop();
                                                                                                                                    addr489:
                                                                                                                                    if(!(_loc4_ && param2))
                                                                                                                                    {
                                                                                                                                       §§goto(addr634);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr578);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc3_ || this)
                                                                                                                                 {
                                                                                                                                    addr488:
                                                                                                                                    §§goto(addr489);
                                                                                                                                    §§push(param2);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr489);
                                                                                                                           }
                                                                                                                           §§goto(addr488);
                                                                                                                        }
                                                                                                                        §§goto(addr491);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§push(this.§_-Sz§);
                                                                                                                     if(_loc3_ || _loc3_)
                                                                                                                     {
                                                                                                                        addr419:
                                                                                                                        §§push(this.§default§);
                                                                                                                        if(_loc3_ || param2)
                                                                                                                        {
                                                                                                                           addr429:
                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                           if(§§pop() > §§pop())
                                                                                                                           {
                                                                                                                              addr431:
                                                                                                                              §§pop();
                                                                                                                              §§push(this.§_-Sz§);
                                                                                                                              if(_loc3_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr444:
                                                                                                                                 §§push(§§pop() - this.§default§);
                                                                                                                                 §§push(180);
                                                                                                                                 if(!(_loc4_ && this))
                                                                                                                                 {
                                                                                                                                    addr453:
                                                                                                                                    if(§§pop() > §§pop())
                                                                                                                                    {
                                                                                                                                       §§goto(addr454);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(this.§_-Sz§ < this.§default§);
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          addr507:
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             §§goto(addr510);
                                                                                                                                          }
                                                                                                                                          §§goto(addr521);
                                                                                                                                       }
                                                                                                                                       §§goto(addr578);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr578);
                                                                                                                              }
                                                                                                                              §§goto(addr590);
                                                                                                                           }
                                                                                                                           §§goto(addr453);
                                                                                                                        }
                                                                                                                        §§goto(addr590);
                                                                                                                     }
                                                                                                                     §§goto(addr444);
                                                                                                                  }
                                                                                                                  §§goto(addr578);
                                                                                                               }
                                                                                                               §§goto(addr453);
                                                                                                            }
                                                                                                            §§goto(addr566);
                                                                                                         }
                                                                                                         §§goto(addr522);
                                                                                                      }
                                                                                                      §§goto(addr429);
                                                                                                   }
                                                                                                   §§goto(addr360);
                                                                                                }
                                                                                                §§goto(addr507);
                                                                                             }
                                                                                             §§goto(addr351);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr360);
                                                                                    }
                                                                                    §§goto(addr578);
                                                                                 }
                                                                                 §§goto(addr286);
                                                                              }
                                                                              §§goto(addr566);
                                                                           }
                                                                           §§goto(addr351);
                                                                        }
                                                                        §§goto(addr563);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(this);
                                                                        §§push(param1);
                                                                        if(!(_loc4_ && this))
                                                                        {
                                                                           §§push(this.§_-qn§);
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§push(§§pop() - this.§_-hB§);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr237:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!(_loc4_ && param2))
                                                                                 {
                                                                                    §§push(param2);
                                                                                 }
                                                                                 §§pop().§_-fO§ = §§pop();
                                                                                 §§push(this);
                                                                                 §§push(this.§_-hB§);
                                                                                 if(_loc3_ || param2)
                                                                                 {
                                                                                    §§push(§§pop() + this.§_-fO§);
                                                                                 }
                                                                                 §§pop().mY = §§pop();
                                                                                 §§goto(addr252);
                                                                              }
                                                                              §§goto(addr237);
                                                                              §§push(§§pop() / §§pop());
                                                                           }
                                                                        }
                                                                        §§goto(addr237);
                                                                     }
                                                                  }
                                                                  §§goto(addr266);
                                                               }
                                                               §§goto(addr444);
                                                            }
                                                            §§goto(addr193);
                                                         }
                                                         §§goto(addr266);
                                                      }
                                                      §§goto(addr360);
                                                   }
                                                   §§goto(addr419);
                                                }
                                                §§goto(addr197);
                                             }
                                             else
                                             {
                                                §§push(this);
                                                §§push(param1);
                                                if(_loc3_)
                                                {
                                                   §§push(this.§_-0N§);
                                                   if(!(_loc4_ && this))
                                                   {
                                                      §§push(§§pop() - this.§_-wy§);
                                                      if(_loc3_)
                                                      {
                                                         addr142:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            §§push(param2);
                                                         }
                                                         §§pop().§_-3h§ = §§pop();
                                                         §§push(this);
                                                         §§push(this.§_-wy§);
                                                         if(_loc3_ || param2)
                                                         {
                                                            §§push(§§pop() + this.§_-3h§);
                                                         }
                                                         §§pop().mX = §§pop();
                                                         §§goto(addr157);
                                                      }
                                                      §§goto(addr142);
                                                      §§push(§§pop() / §§pop());
                                                   }
                                                }
                                                §§goto(addr142);
                                             }
                                          }
                                          §§goto(addr431);
                                       }
                                       §§goto(addr166);
                                    }
                                    §§goto(addr103);
                                 }
                                 §§goto(addr453);
                              }
                              §§goto(addr594);
                           }
                           §§goto(addr444);
                        }
                        §§goto(addr83);
                     }
                     §§goto(addr100);
                  }
                  §§goto(addr351);
               }
               §§goto(addr409);
            }
            §§goto(addr39);
         }
         §§goto(addr319);
      }
      
      public function get §_-Yg§() : Point
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!§_-wb§)
            {
            }
         }
         return null;
      }
      
      public function §_-gt§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            §§push(this.§_-1n§);
            if(!(_loc2_ && _loc1_))
            {
               §§push(§_-Pq§.§_-EE§);
               if(!(_loc2_ && _loc2_))
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(_loc1_ || _loc2_)
                        {
                           §§pop();
                           addr69:
                           §§push(this.§_-1n§ == §_-Pq§.§_-FT§);
                        }
                     }
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §_-7H§() : Boolean
      {
         return this.§_-1n§ == §_-Pq§.§_-B9§;
      }
      
      public function §_-fw§() : Boolean
      {
         return this.§_-1n§ == §_-Pq§.§_-NH§;
      }
      
      public function §_-Rb§() : Boolean
      {
         return this.§_-1n§ == §_-Pq§.§_-FT§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§_-1n§ == §_-Pq§.§_-Le§;
      }
      
      public function isGround() : Boolean
      {
         return this.§_-1n§ == §_-Pq§.§_-J-§;
      }
      
      public function §_-U7§() : Boolean
      {
         return this.§_-1n§ == §_-Pq§.§_-pV§;
      }
      
      public function §_-ik§() : Boolean
      {
         return this.§_-1n§ == §_-Pq§.§_-dH§;
      }
      
      public function §_-rY§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§_-L1§ == "MISC_EXPLOSIVE_TNT")
            {
               if(!(_loc2_ && this))
               {
                  addr38:
                  §§push(true);
                  if(!(_loc2_ && this))
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr54:
                  §§push(false);
               }
               return §§pop();
            }
            §§goto(addr54);
         }
         §§goto(addr38);
      }
      
      public function §_-br§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§_-7H§());
            if(_loc1_)
            {
               §§push(Boolean(§§pop()));
               if(!_loc2_)
               {
                  §§push(§§pop());
                  if(_loc1_ || _loc1_)
                  {
                     if(!§§pop())
                     {
                        §§pop();
                        if(!(_loc2_ && this))
                        {
                           §§push(this.§_-U7§());
                           if(_loc1_)
                           {
                              §§push(Boolean(§§pop()));
                              if(_loc1_)
                              {
                                 addr58:
                                 if(!§§pop())
                                 {
                                    if(_loc1_ || this)
                                    {
                                    }
                                 }
                                 §§goto(addr78);
                              }
                              §§pop();
                              addr77:
                              addr78:
                              return §§pop();
                              §§push(Boolean(this.§_-ik§()));
                           }
                        }
                        §§goto(addr77);
                     }
                  }
                  §§goto(addr58);
               }
               §§goto(addr77);
            }
            §§goto(addr78);
         }
         §§goto(addr77);
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §_-Si§() : Number
      {
         return Number(Math.sqrt(this.§_-zq§().GetLinearVelocity().x * this.§_-zq§().GetLinearVelocity().x + this.§_-zq§().GetLinearVelocity().y * this.§_-zq§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         if(this.§_-fw§())
         {
            return this.§_-Qm§;
         }
         §§push(this.§_-gH§);
         if(!_loc7_)
         {
            if(!§§pop().§_-Jj§())
            {
               return this.§_-Qm§;
            }
            §§push(this.§_-1k§);
            §§push(0);
            if(_loc8_)
            {
               if(§§pop() < §§pop())
               {
                  §§push(param1);
                  if(!_loc7_)
                  {
                     §§push(30);
                     if(_loc8_ || param3)
                     {
                        if(§§pop() > §§pop())
                        {
                           if(!(_loc7_ && param2))
                           {
                              this.§_-h7§(§_-6n§.§_-eb§);
                              if(!_loc8_)
                              {
                                 addr81:
                              }
                              addr119:
                              return this.§_-Qm§;
                              addr117:
                           }
                           else
                           {
                              addr120:
                              §§push(param1);
                              §§push(this.§_-1k§);
                              if(!_loc7_)
                              {
                                 if(§§pop() < §§pop())
                                 {
                                    §§push(param1);
                                    §§push(this.§_-1k§);
                                    if(!(_loc7_ && this))
                                    {
                                       §§push(§§pop() / 2);
                                       if(!_loc7_)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             if(!_loc7_)
                                             {
                                                this.§_-h7§(§_-6n§.§_-mV§);
                                                addr147:
                                                §§push(this.§_-gt§());
                                                if(!_loc7_)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   §§push(Boolean(§§pop()));
                                                   if(!(_loc7_ && param3))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§pop();
                                                         §§push(this.§_-Qm§);
                                                         §§push(this.§_-FF§);
                                                         if(!(_loc7_ && param3))
                                                         {
                                                            addr173:
                                                            §§push(§§pop() == §§pop());
                                                            if(_loc8_)
                                                            {
                                                               §§goto(addr176);
                                                            }
                                                            else
                                                            {
                                                               addr357:
                                                               if(§§pop())
                                                               {
                                                                  §§goto(addr359);
                                                               }
                                                            }
                                                            addr369:
                                                            §§goto(addr372);
                                                         }
                                                         else
                                                         {
                                                            addr197:
                                                            §§push(§§pop() - §§pop());
                                                            if(_loc8_ || param1)
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                            param1 = §§pop();
                                                            §§push(Boolean(param2));
                                                            §§push(Boolean(param2));
                                                            if(_loc8_ || this)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     §§pop();
                                                                     addr231:
                                                                     if(this.§_-br§())
                                                                     {
                                                                        §§push(int(Math.min(this.§_-Qm§,int(param1))));
                                                                        if(_loc8_ || param2)
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           addr248:
                                                                           §§push(§_-tL§.§_-Pt§.getValue());
                                                                           if(!(_loc7_ && param3))
                                                                           {
                                                                              addr258:
                                                                              §§push(int(§§pop() * _loc5_));
                                                                           }
                                                                           _loc6_ = §§pop();
                                                                           if(_loc8_ || this)
                                                                           {
                                                                              addr271:
                                                                              §§push(this.§_-gH§.§_-Ag§);
                                                                              §§push(_loc6_);
                                                                              §§push(§_-vI§.§_-PL§);
                                                                              if(_loc8_)
                                                                              {
                                                                                 §§push(this.§_-Qm§ > param1);
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          §§pop();
                                                                                          addr288:
                                                                                          §§push(param3);
                                                                                          if(_loc8_ || param3)
                                                                                          {
                                                                                             addr296:
                                                                                             §§push(Boolean(§§pop()));
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§pop().addScore(§§pop(),§§pop(),§§pop(),this.§_-zq§().GetPosition().x,this.§_-zq§().GetPosition().y,§_-UW§.§_-yw§(this.§_-L1§));
                                                                                    addr310:
                                                                                    §§push(this);
                                                                                    §§push(this.§_-Qm§);
                                                                                    if(_loc8_ || this)
                                                                                    {
                                                                                       §§push(§§pop() - param1);
                                                                                    }
                                                                                    §§pop().§_-Qm§ = §§pop();
                                                                                    §§push(this.§_-Qm§);
                                                                                    if(_loc8_ || this)
                                                                                    {
                                                                                       §§push(1);
                                                                                       if(_loc8_ || param1)
                                                                                       {
                                                                                          addr340:
                                                                                          §§push(§§pop() < §§pop());
                                                                                          if(!(_loc7_ && this))
                                                                                          {
                                                                                             addr349:
                                                                                             if(§§pop())
                                                                                             {
                                                                                                addr350:
                                                                                                §§pop();
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   §§push(this.§_-gt§());
                                                                                                   if(!_loc8_)
                                                                                                   {
                                                                                                   }
                                                                                                   §§goto(addr357);
                                                                                                }
                                                                                                §§goto(addr391);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr357);
                                                                                       }
                                                                                       addr372:
                                                                                       if(this.§_-Qm§ < 1)
                                                                                       {
                                                                                          addr373:
                                                                                          this.§_-Qm§ = 0;
                                                                                          §_-Dz§.§_-OR§(§_-6n§.§_-eb§,this.§_-CX§.§_-Ie§,"ChannelDestroyed");
                                                                                          addr405:
                                                                                          this.§_-e7§.setDamagedFrame();
                                                                                          addr384:
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          this.§_-h7§(§_-6n§.§_-te§);
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             this.addDamageParticles(this.§_-gH§.§_-Ag§.particles,param1);
                                                                                             addr391:
                                                                                             §§goto(addr405);
                                                                                          }
                                                                                       }
                                                                                       return this.§_-Qm§;
                                                                                    }
                                                                                    §§goto(addr369);
                                                                                 }
                                                                                 §§goto(addr296);
                                                                              }
                                                                              §§goto(addr288);
                                                                           }
                                                                           §§goto(addr359);
                                                                        }
                                                                        §§goto(addr258);
                                                                     }
                                                                     §§goto(addr310);
                                                                  }
                                                                  §§goto(addr350);
                                                               }
                                                               §§goto(addr231);
                                                            }
                                                            §§goto(addr349);
                                                         }
                                                      }
                                                      addr176:
                                                      if(§§pop())
                                                      {
                                                         §§push(this);
                                                         §§push(this.§_-FF§);
                                                         if(_loc8_ || this)
                                                         {
                                                            §§push(§§pop() - 1);
                                                         }
                                                         §§pop().§_-Qm§ = §§pop();
                                                         if(_loc7_)
                                                         {
                                                            addr359:
                                                            this.§_-Qm§ = 1;
                                                            if(_loc8_ || param1)
                                                            {
                                                               §§goto(addr369);
                                                            }
                                                            §§goto(addr373);
                                                         }
                                                      }
                                                      return this.§_-Qm§;
                                                   }
                                                   §§goto(addr349);
                                                }
                                                §§goto(addr231);
                                             }
                                             §§goto(addr384);
                                          }
                                          §§goto(addr147);
                                       }
                                       §§goto(addr197);
                                    }
                                    §§goto(addr173);
                                 }
                                 else
                                 {
                                    addr194:
                                    §§push(param1);
                                    §§push(this.§_-1k§);
                                 }
                              }
                              §§goto(addr197);
                           }
                        }
                        else
                        {
                           §§push(param1);
                           §§push(12);
                           if(_loc8_ || param2)
                           {
                              addr74:
                              if(§§pop() > §§pop())
                              {
                                 this.§_-h7§(§_-6n§.§_-te§);
                                 if(_loc8_)
                                 {
                                    §§goto(addr81);
                                 }
                                 else
                                 {
                                    §§goto(addr373);
                                 }
                              }
                              else
                              {
                                 §§push(param1);
                                 if(!(_loc7_ && this))
                                 {
                                    §§push(3);
                                    if(_loc8_ || param1)
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          if(_loc8_ || param2)
                                          {
                                             this.§_-h7§(§_-6n§.§_-mV§);
                                             if(!(_loc7_ && param1))
                                             {
                                                §§goto(addr117);
                                             }
                                             else
                                             {
                                                §§goto(addr248);
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr194);
                                          }
                                          §§goto(addr349);
                                       }
                                       §§goto(addr117);
                                    }
                                    §§goto(addr340);
                                 }
                              }
                              §§goto(addr119);
                           }
                        }
                     }
                     §§goto(addr340);
                  }
                  §§goto(addr258);
               }
               §§goto(addr120);
            }
            §§goto(addr74);
         }
         §§goto(addr271);
      }
      
      public function §_-h7§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §_-Dz§.§_-OR§(param1,this.§_-CX§.§_-Ie§);
         }
      }
      
      public function §_-pj§(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§_-CX§.material.§_-QL§(param1));
         if(!(_loc3_ && _loc3_))
         {
            §§push(§§pop() * this.§_-Qr§);
         }
         return §§pop();
      }
      
      public function §_-tm§(param1:String) : Number
      {
         return this.§_-CX§.material.§_-ek§(param1);
      }
      
      public function §_-zW§() : String
      {
         return this.§_-CX§.material.mName;
      }
      
      public function §_-o9§() : int
      {
         return this.§_-CX§.§_-DT§();
      }
      
      public function §_-bU§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 30;
         if(_loc2_ || _loc1_)
         {
            §§push(Boolean(this.§_-zq§().IsAwake()));
            §§push(Boolean(this.§_-zq§().IsAwake()));
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop())
               {
                  §§pop();
                  if(_loc2_ || this)
                  {
                     §§push(this.§_-gt§());
                     if(!_loc3_)
                     {
                        §§push(Boolean(§§pop()));
                        if(_loc2_)
                        {
                           §§push(§§pop());
                           if(_loc2_)
                           {
                              addr53:
                              if(§§pop())
                              {
                                 §§pop();
                                 if(_loc2_ || _loc1_)
                                 {
                                    §§push(this.§_-Qm§ == this.§_-FF§);
                                    if(!_loc3_)
                                    {
                                       addr69:
                                       §§push(§§pop());
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          if(!§§pop())
                                          {
                                             if(!_loc3_)
                                             {
                                                §§pop();
                                                if(!_loc3_)
                                                {
                                                   addr90:
                                                   §§push(Math.abs(this.§_-zq§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                   }
                                                   addr117:
                                                   §§pop();
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      §§goto(addr156);
                                                   }
                                                   addr156:
                                                   return Math.abs(this.§_-zq§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * _loc1_;
                                                   §§push(Math.abs(this.§_-zq§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * _loc1_);
                                                }
                                             }
                                             §§goto(addr156);
                                          }
                                          §§push(§§pop());
                                          if(_loc2_ || _loc3_)
                                          {
                                             addr116:
                                             if(!§§pop())
                                             {
                                                §§goto(addr117);
                                             }
                                          }
                                          §§goto(addr156);
                                       }
                                       §§goto(addr116);
                                    }
                                 }
                                 §§goto(addr156);
                              }
                              §§goto(addr69);
                           }
                           §§goto(addr116);
                        }
                        §§goto(addr117);
                     }
                     §§goto(addr156);
                  }
                  §§goto(addr90);
               }
               §§goto(addr156);
            }
            §§goto(addr53);
         }
         §§goto(addr90);
      }
      
      public function §_-AA§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§_-zq§().IsAwake());
            if(_loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(true);
                     if(!_loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr35:
                     §§push(this.isMoving());
                  }
               }
               §§goto(addr35);
            }
            return §§pop();
         }
         §§goto(addr35);
      }
      
      protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 30;
         if(!_loc2_)
         {
            §§push(Math.abs(this.§_-zq§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * _loc1_);
            if(_loc3_ || _loc1_)
            {
               §§push(§§pop());
               if(!_loc2_)
               {
                  if(§§pop())
                  {
                     if(!_loc2_)
                     {
                        §§pop();
                        if(!_loc2_)
                        {
                           addr63:
                           addr64:
                           §§push(Math.abs(this.§_-zq§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * _loc1_);
                           if(Math.abs(this.§_-zq§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * _loc1_)
                           {
                              if(!(_loc2_ && this))
                              {
                                 §§pop();
                                 §§goto(addr95);
                              }
                           }
                           if(§§pop())
                           {
                              if(_loc3_)
                              {
                                 §§goto(addr95);
                              }
                           }
                           §§goto(addr98);
                        }
                        §§goto(addr95);
                     }
                     addr98:
                     return false;
                  }
                  §§goto(addr63);
               }
               §§goto(addr64);
            }
            addr95:
            if(!_loc2_)
            {
               addr75:
               §§push(Math.abs(this.§_-zq§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * _loc1_);
            }
            return true;
         }
         §§goto(addr75);
      }
      
      public function §_-08§(param1:Number = 3) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§_-Qr§ = param1;
            if(!(_loc2_ && _loc2_))
            {
               if(this.§_-Qr§ > 1)
               {
                  if(_loc3_)
                  {
                     §§goto(addr39);
                  }
                  §§goto(addr58);
               }
               else
               {
                  §§push(this.§_-e7§);
               }
               §§goto(addr61);
            }
         }
         addr39:
         §§push(this.§_-e7§);
         if(_loc3_)
         {
            §§pop().§_-op§();
            if(_loc3_ || this)
            {
               addr58:
            }
         }
         else
         {
            addr61:
            §§pop().§_-U9§ = null;
         }
      }
      
      public function §_-jY§(param1:Boolean) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Number = 0;
         §§push(this.§_-CX§.§_-gz§());
         if(_loc3_ || _loc2_)
         {
            if(§§pop() == §_-gs§.§_-AZ§)
            {
               §§push(this.§_-e7§.mW);
               §§push(this.§_-e7§.mH);
               if(!_loc4_)
               {
                  §§goto(addr38);
               }
               §§goto(addr102);
            }
            else
            {
               §§push(this.§_-zq§().GetMass());
               §§push(this.§_-7K§.§_-0I§());
               if(_loc3_ || _loc2_)
               {
                  §§push(§§pop() / §§pop());
                  if(!_loc4_)
                  {
                     _loc2_ = §§pop();
                     if(param1)
                     {
                        addr86:
                        _loc2_ *= this.§_-Xb§();
                     }
                     §§push(_loc2_);
                     §§push(this.§_-KA§);
                     if(_loc3_)
                     {
                        addr99:
                        §§goto(addr102);
                        §§push(this.§_-KA§);
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr86);
               }
               §§goto(addr99);
            }
         }
         addr38:
         §§push(§§pop() * §§pop());
         §§push(§_-tL§.§_-7m§);
         §§push(§_-tL§.§_-7m§);
         if(_loc3_ || this)
         {
            _loc2_ = §§pop() * (§§pop() * §§pop());
         }
         else
         {
            addr102:
            _loc2_ = §§pop() / (§§pop() * §§pop());
         }
         return _loc2_;
      }
      
      public function §_-Xb§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Number(1);
         if(_loc3_ || this)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push(_loc1_);
               if(!_loc2_)
               {
                  §§push(2);
                  if(!(_loc2_ && this))
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc2_)
                     {
                        addr48:
                        §§push(§§pop() * Math.min(10,this.§_-e7§.§super§ - 1));
                        if(_loc3_)
                        {
                           addr66:
                           §§push(§§pop() / 10);
                        }
                     }
                     §§push(§§pop() - §§pop());
                     if(!_loc2_)
                     {
                        §§push(Number(§§pop()));
                        if(!_loc2_)
                        {
                           addr73:
                           _loc1_ = §§pop();
                           §§push(_loc1_);
                        }
                        return §§pop();
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr66);
               }
               §§goto(addr48);
            }
         }
         §§goto(addr73);
      }
      
      public function §_-QR§(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(this.§_-zq§().GetLinearVelocity().x);
         if(!(_loc7_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§_-zq§().GetLinearVelocity().y);
         if(!(_loc7_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         §§push(1);
         §§push(param1);
         if(_loc6_)
         {
            §§push(§§pop() / _loc4_);
         }
         §§push(§§pop() + §§pop());
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc6_ || param1)
         {
            §§push(_loc2_);
            if(!(_loc7_ && param1))
            {
               §§push(_loc5_);
               if(!(_loc7_ && _loc2_))
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc7_)
                  {
                     §§push(Number(§§pop()));
                     if(_loc6_)
                     {
                        _loc2_ = §§pop();
                        if(_loc6_ || this)
                        {
                           §§push(_loc3_);
                           if(!_loc7_)
                           {
                              addr108:
                              addr109:
                              §§push(§§pop() * _loc5_);
                              if(_loc6_ || param1)
                              {
                              }
                              §§goto(addr118);
                           }
                           addr118:
                           _loc3_ = §§pop();
                           if(_loc6_ || _loc3_)
                           {
                              addr133:
                              this.§_-zq§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
                              §§goto(addr140);
                           }
                           addr140:
                           return;
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr108);
               }
               §§goto(addr109);
            }
            §§goto(addr108);
         }
         §§goto(addr133);
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§_-F5§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§_-Gb§) : void
      {
      }
      
      public function addDamageParticles(param1:§_-Gb§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §_-ZN§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2Vec2 = this.§_-zq§().GetPosition();
         §§push(_loc4_);
         §§push(_loc4_.x);
         if(!(_loc6_ && param3))
         {
            §§push(param2.x * param1);
            if(!(_loc6_ && param3))
            {
               §§push(§§pop() * param3);
            }
            §§push(§§pop() + §§pop());
         }
         §§pop().x = §§pop();
         if(!_loc6_)
         {
            §§push(_loc4_);
            §§push(_loc4_.y);
            if(_loc5_ || this)
            {
               §§push(param2.y * param1);
               if(!_loc6_)
               {
                  §§push(§§pop() * param3);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().y = §§pop();
            if(!(_loc6_ && param3))
            {
               addr86:
               this.§_-zq§().§_-d-§(_loc4_);
            }
            return;
         }
         §§goto(addr86);
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
         if(param2)
         {
            §§push(this.§_-Js§());
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
            _loc3_ = §§pop();
            §§push(_loc3_);
            §§push(360);
            if(!(_loc5_ && this))
            {
               §§push(§§pop() + §§pop());
               §§push(360);
               if(_loc6_ || param2)
               {
                  addr44:
                  _loc3_ = Number(§§pop() % §§pop());
                  if(!_loc5_)
                  {
                     _loc4_ = 0;
                     if(_loc6_)
                     {
                        addr54:
                        if(param1 != 0)
                        {
                           if(_loc6_)
                           {
                              addr59:
                              §§push(_loc3_);
                              §§push(param1);
                              if(_loc6_ || param2)
                              {
                                 _loc4_ = §§pop() % §§pop();
                                 if(!_loc5_)
                                 {
                                    addr80:
                                    §§push(_loc4_);
                                    §§push(param1);
                                    if(_loc6_ || param1)
                                    {
                                       §§push(§§pop() / 2);
                                       if(!_loc5_)
                                       {
                                          if(§§pop() < §§pop())
                                          {
                                             §§goto(addr94);
                                          }
                                          else
                                          {
                                             §§push(_loc3_);
                                             if(!(_loc5_ && _loc3_))
                                             {
                                                §§push(param1);
                                                if(_loc5_)
                                                {
                                                }
                                                §§goto(addr118);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr122);
                                 }
                                 addr94:
                                 §§push(_loc3_);
                                 §§push(_loc4_);
                                 if(!(_loc5_ && this))
                                 {
                                    addr103:
                                    _loc3_ = Number(§§pop() - §§pop());
                                    addr125:
                                    this.§_-JM§(_loc3_);
                                    §§push(this);
                                    §§push(this.§_-Js§());
                                    if(!(_loc5_ && this))
                                    {
                                       §§push(§§pop() + param1);
                                    }
                                    §§pop().§_-JM§(§§pop());
                                 }
                                 else
                                 {
                                    addr122:
                                    _loc3_ = Number(§§pop() + (§§pop() - _loc4_));
                                    addr118:
                                    if(!_loc5_)
                                    {
                                       §§goto(addr125);
                                    }
                                 }
                                 return;
                              }
                           }
                           §§goto(addr103);
                        }
                        §§goto(addr80);
                     }
                     §§goto(addr59);
                  }
               }
               §§goto(addr54);
            }
            §§goto(addr44);
         }
         §§goto(addr103);
      }
      
      public function §_-jF§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§_-kV§(this.§_-zq§().GetAngle()));
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               §§push(param1);
               if(_loc3_ || param1)
               {
                  §§push(360);
                  if(_loc3_)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc3_ || _loc2_)
                     {
                        addr54:
                        §§push(§§pop() / 1000);
                     }
                     §§push(§§pop() - §§pop());
                     if(_loc3_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc3_)
                        {
                           §§goto(addr61);
                        }
                        §§goto(addr77);
                     }
                     §§goto(addr61);
                  }
               }
               §§goto(addr54);
            }
            addr61:
            _loc2_ = §§pop();
            if(_loc3_)
            {
               addr64:
               §§push(§_-gB§(_loc2_));
               if(_loc3_)
               {
                  addr77:
                  _loc2_ = Number(§§pop());
                  if(_loc3_)
                  {
                     this.§_-zq§().§_-eH§(_loc2_);
                  }
               }
               §§goto(addr77);
            }
            return;
         }
         §§goto(addr64);
      }
      
      public function §_-Td§(param1:Number, param2:Point) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_ || this)
         {
            this.rotate(param1);
         }
         var _loc3_:b2Vec2 = this.§_-zq§().GetPosition().Copy();
         §§push(_loc3_.x);
         if(_loc15_ || param1)
         {
            §§push(§§pop() - param2.x);
            if(!(_loc14_ && param1))
            {
               addr49:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(_loc3_.y);
            if(!(_loc14_ && _loc3_))
            {
               §§push(§§pop() - param2.y);
               if(!_loc14_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(!(_loc14_ && param2))
            {
               §§push(_loc4_);
               if(_loc15_ || this)
               {
                  §§push(0);
                  if(_loc15_)
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc15_ || this)
                     {
                        if(§§pop())
                        {
                           if(!(_loc14_ && param2))
                           {
                              addr102:
                              §§pop();
                              if(!(_loc14_ && this))
                              {
                                 addr110:
                                 §§push(_loc5_);
                                 if(_loc15_)
                                 {
                                    addr115:
                                    if(§§pop() == 0)
                                    {
                                       if(!(_loc14_ && param2))
                                       {
                                          return;
                                       }
                                       addr124:
                                       §§push(Number(Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)));
                                    }
                                    §§goto(addr124);
                                 }
                                 var _loc6_:* = §§pop();
                                 §§push(_loc4_);
                                 if(_loc15_)
                                 {
                                    §§push(§§pop() / _loc5_);
                                    if(_loc15_)
                                    {
                                       addr149:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc7_:* = §§pop();
                                    §§push(Math.atan(_loc7_) * 180);
                                    if(!(_loc14_ && param2))
                                    {
                                       §§push(§§pop() / Math.PI);
                                       if(_loc15_)
                                       {
                                          addr168:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc8_:* = §§pop();
                                       if(!_loc14_)
                                       {
                                          §§push(_loc5_);
                                          §§push(0);
                                          if(_loc15_ || param1)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                addr191:
                                                if(_loc15_)
                                                {
                                                   §§push(_loc8_);
                                                   §§push(180);
                                                }
                                                §§push(_loc8_);
                                                if(!_loc14_)
                                                {
                                                   §§push(param1);
                                                   if(!(_loc14_ && param2))
                                                   {
                                                      addr204:
                                                      §§push(Number(§§pop() + §§pop()));
                                                      §§push(Number(§§pop() + §§pop()));
                                                   }
                                                   var _loc9_:* = §§pop();
                                                   if(!(_loc14_ && this))
                                                   {
                                                      §§push(§§pop() * Math.PI);
                                                      if(!_loc14_)
                                                      {
                                                         addr218:
                                                         §§push(§§pop() / 180);
                                                         if(_loc15_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                         }
                                                      }
                                                      var _loc10_:* = §§pop();
                                                      §§push(Math.sin(_loc10_) * _loc6_);
                                                      if(!(_loc14_ && param2))
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc11_:* = §§pop();
                                                      §§push(Math.cos(_loc10_) * _loc6_);
                                                      if(_loc15_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc12_:* = §§pop();
                                                      var _loc13_:b2Vec2 = new b2Vec2(param2.x + _loc11_,param2.y + _loc12_);
                                                      if(_loc15_)
                                                      {
                                                         this.§_-zq§().§_-d-§(_loc13_);
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr218);
                                                }
                                                §§goto(addr204);
                                             }
                                             §§goto(addr191);
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(!_loc14_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          _loc8_ = §§pop();
                                       }
                                       §§goto(addr191);
                                    }
                                    §§goto(addr168);
                                 }
                                 §§goto(addr149);
                              }
                              §§goto(addr124);
                           }
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr102);
                  }
               }
               §§goto(addr115);
            }
            §§goto(addr110);
         }
         §§goto(addr49);
      }
   }
}
