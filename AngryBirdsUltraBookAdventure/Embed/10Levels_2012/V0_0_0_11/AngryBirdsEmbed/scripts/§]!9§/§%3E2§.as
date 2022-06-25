package §]!9§
{
   import §%x§.§#;§;
   import §%x§.§0]§;
   import §0!<§.§#y§;
   import §>F§.§2S§;
   import §>F§.§5b§;
   import §?!?§.§3!E§;
   import §?^§.Sprite;
   import §`K§.§+i§;
   import §`K§.§0r§;
   import §`K§.§2z§;
   import §`K§.§3n§;
   import §`K§.§7g§;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §>2§
   {
      
      public static const §7^§:uint;
      
      public static const §;J§:uint;
      
      public static const § !A§:uint;
      
      public static const §-4§:uint = §§pop();
      
      public static const § F§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§§findproperty(§7^§));
            §§push(1);
            if(_loc2_)
            {
               §§push(§§pop() << §§pop());
            }
            §§pop().§7^§ = §§pop();
            if(_loc2_ || _loc2_)
            {
               §§push(§§findproperty(§;J§));
               §§push(1);
               if(!_loc1_)
               {
                  §§push(§§pop() << 2);
               }
               §§pop().§;J§ = §§pop();
               if(_loc2_)
               {
                  §§push(§§findproperty(§ !A§));
                  §§push(1);
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(§§pop() << 3);
                  }
                  §§pop().§ !A§ = §§pop();
                  if(_loc2_)
                  {
                     §§goto(addr76);
                  }
               }
               §§goto(addr85);
            }
         }
         addr76:
         §§push(§§findproperty(§-4§));
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() << 4);
         }
         if(_loc2_)
         {
            addr85:
            § F§ = true;
         }
      }
      
      private var §7_§:String;
      
      private var §8O§:int;
      
      private var §6g§:int;
      
      public var §'!,§:String;
      
      public var §'F§:int;
      
      private var §%g§:§+i§;
      
      private var § !6§:§]!H§;
      
      private var §[N§:b2World;
      
      protected var §32§:String = "";
      
      protected var § !B§:int = 1;
      
      private var §@e§:b2Fixture;
      
      private var §5Q§:b2Body;
      
      private var §7j§:b2Vec2;
      
      public var §4!;§:Number;
      
      public var §8!,§:Number;
      
      private var §,9§:Number;
      
      private var §8+§:Boolean = false;
      
      private var §]!4§:Number;
      
      private var §!i§:Number;
      
      private var §6y§:Number;
      
      private var §34§:Number;
      
      private var §4!6§:Number;
      
      private var §7d§:Number;
      
      public var § V§:Number = 1;
      
      private var §&g§:Boolean = false;
      
      public var § !%§:Number = 0;
      
      public var §9-§:Number = 0;
      
      protected var §"0§:Boolean = false;
      
      public var §2!@§:§1c§;
      
      private var §0W§:Sprite;
      
      private var §5!>§:Number = 0;
      
      private var §#!$§:Number = 0;
      
      private var §+H§:Number = 0;
      
      private var §=!%§:Number = 1.0;
      
      private var §2!1§:Boolean = false;
      
      private var §"!I§:Vector.<Vector.<Number>>;
      
      private var §'!D§:int = 10;
      
      private var §<1§:Boolean = true;
      
      public function §>2§(param1:§]!H§, param2:Sprite, param3:b2World, param4:§#;§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc14_:b2PolygonShape = null;
         if(_loc17_)
         {
            this.§"!I§ = new Vector.<Vector.<Number>>();
            super();
            this.§'!,§ = param6;
            this.§%g§ = §3n§.§]B§(param6);
            if(!(_loc16_ && param2))
            {
               this.§ !6§ = param1;
               if(_loc17_ || param2)
               {
                  this.§0W§ = param2;
                  if(!_loc16_)
                  {
                     this.§=!%§ = param10;
                  }
                  this.§2!1§ = param11;
                  if(_loc17_ || this)
                  {
                     this.§8O§ = param5;
                     if(_loc17_ || this)
                     {
                        this.§'F§ = this.§%g§.§'F§;
                        this.§6g§ = this.§%g§.§-!F§();
                        addr95:
                        this.§"!I§[0] = new Vector.<Number>();
                        if(!(_loc16_ && param2))
                        {
                           this.§"!I§[1] = new Vector.<Number>();
                           this.§"!I§[2] = new Vector.<Number>();
                           this.§2!@§ = new §1c§(this,param2,param4);
                           §§push(this.§2!@§);
                           if(!(_loc16_ && param3))
                           {
                              if(!§§pop().§5y§(param1.§7C§.§+!!§))
                              {
                                 if(_loc17_)
                                 {
                                    addr149:
                                    §§push(this.§2!@§);
                                    if(_loc17_)
                                    {
                                       §§push(this.§6g§);
                                       if(_loc17_ || param1)
                                       {
                                          §§pop().§#G§(§§pop(),this.§%g§.§]!,§(),this.§%g§.§&+§() / §#;§.§`!2§,this.§%g§.§7!9§() / §#;§.§`!2§);
                                          addr178:
                                          §§push(this.§2!@§);
                                          §§push(this.§6g§);
                                       }
                                       §§pop().§@0§(§§pop() == §2z§.§,j§);
                                       if(!_loc16_)
                                       {
                                          this.§[N§ = param3;
                                       }
                                       var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
                                       this.§5Q§ = this.§[N§.CreateBody(_loc12_);
                                       if(!(_loc16_ && param1))
                                       {
                                          this.§5Q§.SetUserData(this);
                                          §§push(this.§6g§);
                                          if(!(_loc16_ && param1))
                                          {
                                             §§push(§2z§.§8!3§);
                                             if(!_loc16_)
                                             {
                                                if(§§pop() == §§pop())
                                                {
                                                   if(!(_loc16_ && param1))
                                                   {
                                                      §§push(b2PolygonShape);
                                                      §§push(this.§%g§.shape.§9p§);
                                                      if(_loc17_ || param1)
                                                      {
                                                         §§push(param10);
                                                         if(_loc17_)
                                                         {
                                                            addr251:
                                                            §§push(§§pop() * §§pop());
                                                            §§push(this.§%g§.shape.§9`§);
                                                            if(!_loc16_)
                                                            {
                                                               §§push(§§pop() * param10);
                                                            }
                                                         }
                                                         _loc14_ = §§pop().AsBox(§§pop(),§§pop());
                                                         if(!_loc16_)
                                                         {
                                                            this.§@e§ = this.§5Q§.CreateFixture2(_loc14_,this.§%g§.§<!E§());
                                                            if(!_loc16_)
                                                            {
                                                               addr348:
                                                               §§push(this.§@e§);
                                                               if(!_loc16_)
                                                               {
                                                                  §§push(this.§%g§);
                                                                  if(!(_loc16_ && this))
                                                                  {
                                                                     §§push(§§pop().§^!5§());
                                                                     if(_loc17_ || param3)
                                                                     {
                                                                        §§pop().SetFriction(§§pop());
                                                                        addr383:
                                                                        if(_loc17_ || this)
                                                                        {
                                                                           addr381:
                                                                           §§push(this.§@e§);
                                                                           §§push(this.§%g§.§9'§());
                                                                        }
                                                                        var _loc13_:b2FilterData = new b2FilterData();
                                                                        if(_loc17_)
                                                                        {
                                                                           §§push(this.§-`§());
                                                                           if(_loc17_)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    _loc13_.categoryBits = §7^§;
                                                                                    §§push(_loc13_);
                                                                                    §§push(65535);
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       §§push(§§pop() & ~§;J§);
                                                                                    }
                                                                                    §§pop().maskBits = §§pop();
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       addr462:
                                                                                       this.§@e§.SetFilterData(_loc13_);
                                                                                       this.§,9§ = this.§%g§.§;F§();
                                                                                       if(_loc17_ || param3)
                                                                                       {
                                                                                          addr478:
                                                                                          §§push(this.§%g§);
                                                                                          if(!(_loc16_ && param1))
                                                                                          {
                                                                                             §§push(§§pop().§8!,§);
                                                                                             if(_loc17_ || param1)
                                                                                             {
                                                                                                §§push(0);
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   if(§§pop() > §§pop())
                                                                                                   {
                                                                                                      this.§4!;§ = this.§8!,§ = this.§%g§.§8!,§;
                                                                                                      if(!(_loc16_ && param2))
                                                                                                      {
                                                                                                         addr561:
                                                                                                         if(this.§%g§.§'F§ == §+i§.§!!@§)
                                                                                                         {
                                                                                                            if(!(_loc16_ && param1))
                                                                                                            {
                                                                                                               this.§0W§.visible = false;
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  addr601:
                                                                                                                  addr603:
                                                                                                                  if(!this.isTexture())
                                                                                                                  {
                                                                                                                  }
                                                                                                                  addr606:
                                                                                                                  addr605:
                                                                                                                  if(param9 != 0)
                                                                                                                  {
                                                                                                                     if(!_loc16_)
                                                                                                                     {
                                                                                                                        this.§0i§(param9);
                                                                                                                        if(_loc16_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        addr616:
                                                                                                                        this.§&;§(0,1);
                                                                                                                        addr622:
                                                                                                                        this.§2!@§.§8c§(this.§%g§.shape);
                                                                                                                        return;
                                                                                                                        addr620:
                                                                                                                     }
                                                                                                                     §§goto(addr620);
                                                                                                                  }
                                                                                                                  this.§,I§();
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr616);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(this.§2!@§);
                                                                                                            if(!(_loc16_ && param2))
                                                                                                            {
                                                                                                               §§pop().setDamagedFrame();
                                                                                                               §§goto(addr601);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr622);
                                                                                                      }
                                                                                                      §§goto(addr616);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      this.§4!;§ = this.§8!,§ = Math.round(this.§3v§(true) * this.§%g§.§@!>§());
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                         §§push(this.§4!;§);
                                                                                                         if(!(_loc16_ && param1))
                                                                                                         {
                                                                                                            §§push(1);
                                                                                                            if(_loc17_)
                                                                                                            {
                                                                                                               if(§§pop() < §§pop())
                                                                                                               {
                                                                                                                  this.§4!;§ = this.§8!,§ = 1;
                                                                                                                  if(!_loc17_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  §§goto(addr601);
                                                                                                               }
                                                                                                               §§goto(addr561);
                                                                                                            }
                                                                                                            §§goto(addr606);
                                                                                                         }
                                                                                                         §§goto(addr605);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr601);
                                                                                          }
                                                                                          §§goto(addr561);
                                                                                       }
                                                                                       §§goto(addr616);
                                                                                       addr409:
                                                                                    }
                                                                                    §§goto(addr616);
                                                                                 }
                                                                                 §§goto(addr409);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(this.§'!,§);
                                                                                 if(!_loc16_)
                                                                                 {
                                                                                    §§push(§§pop().toUpperCase() == "MISC_WHITE_BIRD_EGG");
                                                                                    if(!(_loc16_ && param2))
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          if(_loc17_)
                                                                                          {
                                                                                             §§pop();
                                                                                             addr431:
                                                                                             §§push(this.§'!,§.toUpperCase() == "MISC_FOOD_EGG");
                                                                                             if(_loc16_)
                                                                                             {
                                                                                             }
                                                                                             §§goto(addr603);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc17_ || param2)
                                                                                       {
                                                                                          _loc13_.categoryBits = §;J§;
                                                                                          §§push(_loc13_);
                                                                                          §§push(65535);
                                                                                          if(_loc17_ || this)
                                                                                          {
                                                                                             §§push(§§pop() & ~§7^§);
                                                                                          }
                                                                                          §§pop().maskBits = §§pop();
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             §§goto(addr462);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr478);
                                                                                    }
                                                                                    §§goto(addr462);
                                                                                 }
                                                                                 §§goto(addr431);
                                                                              }
                                                                           }
                                                                           §§goto(addr601);
                                                                        }
                                                                        §§goto(addr616);
                                                                     }
                                                                     §§pop().SetRestitution(§§pop());
                                                                     §§goto(addr383);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr381);
                                                         }
                                                         §§goto(addr383);
                                                      }
                                                      §§goto(addr251);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(this.§6g§);
                                                   if(_loc17_ || param1)
                                                   {
                                                      addr285:
                                                      §§push(§2z§.§,j§);
                                                      if(!(_loc16_ && this))
                                                      {
                                                         addr294:
                                                         §§push(§§pop() == §§pop());
                                                         if(_loc17_ || param1)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               if(_loc17_ || param1)
                                                               {
                                                                  §§pop();
                                                                  addr326:
                                                                  §§push(this.§6g§ == §2z§.§#!B§);
                                                               }
                                                            }
                                                         }
                                                         if(§§pop())
                                                         {
                                                            if(_loc17_ || param3)
                                                            {
                                                               this.§@e§ = this.§5Q§.CreateFixture2(this.§%g§.shape.§8Z§(param10),this.§%g§.§<!E§());
                                                            }
                                                         }
                                                         §§goto(addr348);
                                                      }
                                                   }
                                                   §§goto(addr326);
                                                }
                                                §§goto(addr348);
                                             }
                                             §§goto(addr294);
                                          }
                                          §§goto(addr285);
                                       }
                                       §§goto(addr326);
                                    }
                                 }
                              }
                           }
                           §§goto(addr178);
                        }
                        §§goto(addr149);
                     }
                  }
               }
               §§goto(addr95);
            }
            §§goto(addr178);
         }
         §§goto(addr95);
      }
      
      public static function §51§(param1:int, param2:§0r§, param3:String = "") : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            if(param2 == null)
            {
               if(_loc5_ || param3)
               {
                  §§goto(addr33);
               }
            }
            var _loc4_:String;
            §§push(_loc4_ = param2.§5E§[param1]);
            if(!(_loc6_ && param1))
            {
               if(§§pop().length > 0)
               {
                  if(_loc5_)
                  {
                     §§push(param3);
                     if(!(_loc6_ && param3))
                     {
                        if(§§pop().length <= 0)
                        {
                           if(!(_loc6_ && §>2§))
                           {
                              §§push(param2.§8A§);
                              if(!_loc5_)
                              {
                              }
                              addr96:
                              param3 = §§pop();
                              if(!_loc6_)
                              {
                                 addr99:
                                 §3!E§.§4I§(_loc4_,param3);
                              }
                              §§goto(addr103);
                           }
                           addr103:
                           return;
                        }
                        §§goto(addr99);
                     }
                     §§goto(addr96);
                     §§push(§§pop());
                  }
               }
               §§goto(addr99);
            }
            §§goto(addr96);
         }
         addr33:
      }
      
      public static function §^M§(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(360);
         §§push(param1);
         if(_loc3_)
         {
            §§push(180);
            if(_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(_loc2_)
               {
               }
               §§goto(addr49);
            }
            §§push(§§pop() % §§pop());
         }
         addr49:
         §§push(§§pop() / Math.PI);
         if(_loc3_ || _loc3_)
         {
            §§push(360);
         }
         §§push(§§pop() - §§pop());
         if(!(_loc2_ && _loc3_))
         {
            §§push(§§pop() % 360);
         }
         return §§pop();
      }
      
      public static function §[4§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(360);
         §§push(param1);
         if(!_loc3_)
         {
            §§push(§§pop() % 360);
         }
         §§push(§§pop() - §§pop());
         if(_loc4_ || param1)
         {
            §§push(§§pop() / (180 / Math.PI));
            if(!_loc3_)
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
         return this.§0W§;
      }
      
      public function get x() : Number
      {
         return this.§5!>§;
      }
      
      public function get y() : Number
      {
         return this.§#!$§;
      }
      
      public function get scale() : Number
      {
         return this.§=!%§;
      }
      
      public function get front() : Boolean
      {
         return this.§2!1§;
      }
      
      public function get §]G§() : Number
      {
         return this.§5Q§.GetPosition().x;
      }
      
      public function get §<?§() : Number
      {
         return this.§5Q§.GetPosition().y;
      }
      
      public function get §0§() : §+i§
      {
         return this.§%g§;
      }
      
      public function get §[&§() : Boolean
      {
         return this.§,9§ >= 0;
      }
      
      protected function get container() : §]!H§
      {
         return this.§ !6§;
      }
      
      public function get §1@§() : Boolean
      {
         return this.§<1§;
      }
      
      public function set §1@§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§<1§ = param1;
         }
      }
      
      public function set §#I§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§8+§ = param1;
         }
      }
      
      public function set §5k§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§'!D§ = param1;
         }
      }
      
      public function get §5k§() : uint
      {
         return this.§'!D§;
      }
      
      public function get §0>§() : Boolean
      {
         return this.§&g§;
      }
      
      public function set §0>§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§&g§ = param1;
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
      
      public function get uniqueID() : String
      {
         return this.§7_§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§7_§ = param1;
         }
      }
      
      public function §9!?§(param1:b2FilterData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§@e§);
            if(!(_loc3_ && param1))
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr47:
                     this.§@e§.SetFilterData(param1);
                  }
               }
               return;
            }
         }
         §§goto(addr47);
      }
      
      protected function §#!2§(param1:String) : int
      {
         return §2S§.§#!2§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2BodyDef = new b2BodyDef();
         §§push(_loc3_.position);
         if(_loc4_ || _loc3_)
         {
            §§push(param1);
            if(!(_loc5_ && param1))
            {
               §§pop().x = §§pop();
               if(_loc4_)
               {
                  addr53:
                  _loc3_.position.y = param2;
                  _loc3_.type = this.§%g§.§+!9§();
                  if(!(_loc5_ && _loc3_))
                  {
                     _loc3_.allowSleep = true;
                     if(!_loc5_)
                     {
                        _loc3_.active = true;
                        if(!(_loc5_ && param1))
                        {
                           _loc3_.awake = true;
                           if(!_loc5_)
                           {
                              addr96:
                              _loc3_.angularDamping = 1;
                              addr99:
                              _loc3_.bullet = false;
                           }
                           return _loc3_;
                        }
                     }
                     §§goto(addr99);
                  }
               }
               §§goto(addr96);
            }
         }
         §§goto(addr53);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§[N§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr33:
                     this.§[N§.DestroyBody(this.§%;§());
                     if(_loc2_ || _loc2_)
                     {
                        this.§[N§ = null;
                        addr56:
                        this.§2!@§.dispose();
                        if(!(_loc1_ && this))
                        {
                           addr66:
                           §§push(this.§0W§);
                           if(_loc2_ || this)
                           {
                              if(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    addr90:
                                    this.§0W§.dispose();
                                    if(_loc2_)
                                    {
                                       addr93:
                                       this.§0W§ = null;
                                       addr96:
                                       this.§@e§ = null;
                                       this.§7j§ = null;
                                       if(!_loc2_)
                                       {
                                       }
                                    }
                                    §§goto(addr107);
                                 }
                                 this.§%g§ = null;
                                 addr107:
                                 return;
                              }
                              §§goto(addr96);
                           }
                           §§goto(addr90);
                        }
                        §§goto(addr93);
                     }
                     §§goto(addr66);
                  }
                  §§goto(addr90);
               }
               §§goto(addr56);
            }
            §§goto(addr33);
         }
         §§goto(addr93);
      }
      
      public function §0i§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§%;§());
            §§push(360);
            §§push(param1);
            if(_loc2_ || param1)
            {
               §§push(§§pop() % 360);
            }
            §§push(§§pop() - §§pop());
            if(!_loc3_)
            {
               §§push(§§pop() / (180 / Math.PI));
            }
            §§pop().SetAngle(§§pop());
         }
      }
      
      public function §+O§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(360);
         §§push(this.§%;§().GetAngle());
         if(_loc1_)
         {
            §§push(180);
            if(_loc1_)
            {
               §§push(§§pop() * §§pop());
               if(!_loc2_)
               {
                  §§push(§§pop() / Math.PI);
                  if(!(_loc2_ && this))
                  {
                     addr48:
                     §§push(§§pop() % 360);
                  }
                  §§push(§§pop() - §§pop());
                  if(!_loc2_)
                  {
                     §§push(§§pop() % 360);
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr48);
      }
      
      public function §>c§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§%;§().SetLinearVelocity(param1);
            if(_loc4_ || this)
            {
               §§push(param2);
               if(_loc4_ || param1)
               {
                  if(§§pop())
                  {
                     if(_loc4_)
                     {
                        addr60:
                        this.§3+§();
                        if(_loc4_)
                        {
                           addr64:
                           if(param3)
                           {
                              if(_loc5_ && param1)
                              {
                              }
                           }
                           §§goto(addr75);
                        }
                     }
                     this.final();
                     §§goto(addr75);
                  }
               }
               §§goto(addr64);
            }
            §§goto(addr60);
         }
         addr75:
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§@e§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(this.§%;§());
            if(_loc5_ || param1)
            {
               §§push(§§pop().GetPosition());
               if(!_loc6_)
               {
                  §§push(§§pop().x);
                  if(!(_loc6_ && param3))
                  {
                     §§push(param3);
                     if(_loc5_ || param2)
                     {
                        §§push(§§pop() >= §§pop());
                        §§push(§§pop() >= §§pop());
                        if(_loc5_ || param3)
                        {
                           if(§§pop())
                           {
                              §§pop();
                              if(_loc5_ || this)
                              {
                                 addr64:
                                 §§push(this.§%;§());
                                 if(!(_loc6_ && param2))
                                 {
                                    §§push(§§pop().GetPosition());
                                    if(_loc5_)
                                    {
                                       §§push(§§pop().x);
                                       if(!_loc6_)
                                       {
                                          §§push(param4);
                                          if(_loc5_)
                                          {
                                             addr93:
                                             §§push(§§pop() <= §§pop());
                                             §§push(§§pop() <= §§pop());
                                             if(_loc5_ || this)
                                             {
                                                if(§§pop())
                                                {
                                                   §§pop();
                                                   if(_loc5_ || this)
                                                   {
                                                      addr110:
                                                      §§push(this.§%;§());
                                                      if(_loc5_ || param3)
                                                      {
                                                         §§push(§§pop().GetPosition());
                                                         if(_loc5_ || param1)
                                                         {
                                                            §§push(§§pop().y);
                                                            if(_loc5_)
                                                            {
                                                               §§push(param1);
                                                               if(!_loc6_)
                                                               {
                                                                  §§goto(addr143);
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr161);
                                                }
                                             }
                                             §§goto(addr151);
                                          }
                                          §§goto(addr143);
                                       }
                                    }
                                 }
                                 §§goto(addr161);
                              }
                              §§goto(addr110);
                           }
                           §§goto(addr93);
                        }
                        §§goto(addr151);
                     }
                     addr143:
                     §§push(§§pop() >= §§pop());
                     if(!(_loc6_ && param3))
                     {
                        addr151:
                        if(§§pop())
                        {
                           if(_loc5_)
                           {
                              §§pop();
                              addr161:
                              §§push(this.§%;§().GetPosition().y <= param2);
                           }
                        }
                     }
                     return §§pop();
                  }
               }
            }
            §§goto(addr161);
         }
         §§goto(addr64);
      }
      
      public function §12§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§7j§ = param1;
         }
      }
      
      public function §4!3§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(this.§7j§)
            {
               if(!(_loc2_ && _loc1_))
               {
                  this.§>c§(this.§7j§,false);
                  if(!(_loc2_ && this))
                  {
                     addr55:
                     this.§7j§ = null;
                  }
               }
               §§goto(addr55);
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function §3+§(param1:b2Vec2 = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(!param1)
            {
               if(_loc3_)
               {
                  §§push(this.§%;§());
                  if(_loc3_ || _loc2_)
                  {
                     param1 = §§pop().GetLinearVelocity();
                     addr40:
                     §§push(param1.x);
                     if(_loc3_ || this)
                     {
                        §§push(0);
                        if(_loc3_ || _loc3_)
                        {
                           §§push(§§pop() == §§pop());
                           if(!_loc2_)
                           {
                              if(§§pop())
                              {
                                 if(_loc3_ || param1)
                                 {
                                    §§goto(addr79);
                                 }
                              }
                              §§goto(addr96);
                           }
                           addr79:
                           §§pop();
                           if(!_loc2_)
                           {
                              addr96:
                              if(param1.y == 0)
                              {
                                 if(!_loc2_)
                                 {
                                    addr99:
                                    §§push(this.§%;§());
                                    if(_loc3_)
                                    {
                                       §§pop().SetAngularVelocity(0);
                                       if(_loc3_ || _loc2_)
                                       {
                                          addr112:
                                       }
                                    }
                                    else
                                    {
                                       addr115:
                                       §§pop().SetAngularVelocity(Math.atan2(param1.x,param1.y));
                                    }
                                 }
                                 §§goto(addr112);
                              }
                              else
                              {
                                 §§goto(addr115);
                                 §§push(this.§%;§());
                              }
                              §§goto(addr115);
                           }
                           return;
                        }
                     }
                     §§goto(addr96);
                  }
                  §§goto(addr115);
               }
               §§goto(addr99);
            }
            §§goto(addr40);
         }
         §§goto(addr112);
      }
      
      public function final(param1:b2Vec2 = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!param1)
            {
               param1 = this.§%;§().GetLinearVelocity();
               addr20:
            }
            §§push(Math.atan2(-param1.y,param1.x) * (180 / Math.PI));
            if(_loc3_)
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(_loc3_ || _loc3_)
            {
               this.§0i§(_loc2_);
            }
            return;
         }
         §§goto(addr20);
      }
      
      public function §9! §(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§%;§().SetAngularVelocity(param1);
         }
      }
      
      public function §%;§() : b2Body
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§@e§);
            if(_loc1_ || _loc2_)
            {
               if(§§pop() != null)
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     §§goto(addr53);
                  }
               }
               return null;
            }
            §§goto(addr53);
         }
         addr53:
         return this.§@e§.GetBody();
      }
      
      public function §3q§(param1:Number = -9999, param2:Number = -9999) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param1 != -9999)
            {
               if(!(_loc4_ && param1))
               {
                  this.§5!>§ = param1;
                  if(_loc3_ || param1)
                  {
                     addr38:
                     this.§#!$§ = param2;
                     if(_loc3_)
                     {
                        addr53:
                        §§push(this.§%;§());
                        if(_loc3_)
                        {
                           §§push(§§pop().GetPosition());
                           if(!(_loc4_ && this))
                           {
                              §§push(this.§5!>§);
                              if(!_loc4_)
                              {
                                 §§push(§#;§.§`!2§);
                                 if(!(_loc4_ && _loc3_))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc3_ || param2)
                                    {
                                       §§goto(addr96);
                                    }
                                 }
                                 §§goto(addr111);
                              }
                              addr96:
                              §§pop().x = §§pop();
                              if(_loc3_)
                              {
                                 addr102:
                                 addr101:
                                 addr99:
                                 §§push(this.§%;§().GetPosition());
                                 §§push(this.§#!$§);
                                 if(!(_loc4_ && param2))
                                 {
                                    addr111:
                                    §§push(§§pop() * §#;§.§`!2§);
                                 }
                                 §§pop().y = §§pop();
                                 §§goto(addr115);
                              }
                              addr115:
                              return;
                           }
                           §§goto(addr102);
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr102);
                  }
               }
               §§goto(addr99);
            }
            §§goto(addr53);
         }
         §§goto(addr38);
      }
      
      public function §&;§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc3_:* = false;
         if(this.§"0§)
         {
            §§push(true);
            if(!_loc6_)
            {
               _loc3_ = §§pop();
               if(_loc5_)
               {
                  this.§"0§ = false;
                  addr32:
                  §§push(this.updateSpecialAnimation(param2));
                  if(_loc5_ || param1)
                  {
                     if(§§pop())
                     {
                        _loc3_ = true;
                     }
                     §§push(this.updateFlyingFrameAnimations(param2));
                     if(!(_loc6_ && param1))
                     {
                        if(§§pop())
                        {
                           §§push(true);
                           if(_loc5_ || this)
                           {
                              _loc3_ = §§pop();
                           }
                           addr78:
                           _loc3_ = §§pop();
                           if(_loc5_)
                           {
                              addr81:
                              if(_loc3_)
                              {
                                 §§push(this.§2!@§);
                                 if(!_loc6_)
                                 {
                                    §§pop().§1i§();
                                    if(_loc5_ || param2)
                                    {
                                       addr95:
                                       §§push(this.§ V§);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() > 1);
                                          if(_loc5_ || _loc3_)
                                          {
                                             addr108:
                                             if(§§pop())
                                             {
                                                §§pop();
                                                §§push(this.§2!@§);
                                                if(!(_loc6_ && this))
                                                {
                                                   §§push(Boolean(§§pop().§>!D§));
                                                   if(!_loc6_)
                                                   {
                                                      addr124:
                                                      if(§§pop())
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            §§push(4);
                                                            §§push(this.§2!@§.§>!D§.blurX - 4);
                                                            if(_loc5_)
                                                            {
                                                               §§push(param2);
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(§§pop() / 20);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc6_ && this))
                                                               {
                                                                  addr159:
                                                                  §§push(§§pop() % 28);
                                                               }
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc5_ || param1)
                                                               {
                                                                  addr169:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               _loc4_ = §§pop();
                                                               §§push(this.§2!@§);
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  addr180:
                                                                  §§pop().§>!D§.blurX = _loc4_;
                                                                  §§push(this.§2!@§);
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     addr192:
                                                                     §§pop().§>!D§.blurY = _loc4_;
                                                                     §§goto(addr284);
                                                                  }
                                                               }
                                                               §§pop().§5g§(param2);
                                                               if(_loc5_ || param1)
                                                               {
                                                                  addr214:
                                                                  if(§ F§)
                                                                  {
                                                                     addr215:
                                                                     this.§6!B§(param1);
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        addr242:
                                                                        §§push(this.§0W§);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§pop().x = Math.round(this.§5!>§);
                                                                           addr261:
                                                                           §§push(this.§0W§);
                                                                           if(_loc5_)
                                                                           {
                                                                              §§pop().y = Math.round(this.§#!$§);
                                                                              addr270:
                                                                              §§push(this.§0W§);
                                                                           }
                                                                        }
                                                                        §§push(this.§+H§);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(§§pop() / 180);
                                                                           if(_loc5_)
                                                                           {
                                                                              §§push(§§pop() * Math.PI);
                                                                           }
                                                                        }
                                                                        §§pop().rotation = §§pop();
                                                                        addr284:
                                                                        if(!(_loc6_ && param1))
                                                                        {
                                                                           addr202:
                                                                           §§push(this.§2!@§);
                                                                        }
                                                                        return;
                                                                        addr225:
                                                                     }
                                                                     §§goto(addr261);
                                                                  }
                                                                  else
                                                                  {
                                                                     this.§+H§ = this.§6y§;
                                                                     this.§5!>§ = this.§]!4§;
                                                                     if(!_loc6_)
                                                                     {
                                                                        this.§#!$§ = this.§!i§;
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§goto(addr242);
                                                                        }
                                                                        §§goto(addr284);
                                                                     }
                                                                  }
                                                                  §§goto(addr270);
                                                               }
                                                               §§goto(addr284);
                                                            }
                                                            §§goto(addr159);
                                                         }
                                                         §§goto(addr225);
                                                      }
                                                      §§goto(addr202);
                                                   }
                                                   §§goto(addr214);
                                                }
                                                §§goto(addr180);
                                             }
                                             §§goto(addr124);
                                          }
                                          §§goto(addr214);
                                       }
                                       §§goto(addr169);
                                    }
                                    §§goto(addr261);
                                 }
                                 §§goto(addr192);
                              }
                              §§goto(addr95);
                           }
                           §§goto(addr192);
                        }
                        if(this.updateScreamingFrameAnimations(param2))
                        {
                           _loc3_ = true;
                           if(_loc5_)
                           {
                              addr73:
                              if(this.updateBlinkingFrameAnimations(param2))
                              {
                                 §§goto(addr78);
                                 §§push(true);
                              }
                              §§goto(addr81);
                           }
                           §§goto(addr215);
                        }
                        §§goto(addr73);
                     }
                     §§goto(addr108);
                  }
                  §§goto(addr73);
               }
               §§goto(addr242);
            }
            §§goto(addr78);
         }
         §§goto(addr32);
      }
      
      public function §,I§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§%;§().GetPosition().x);
         if(!(_loc4_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(this.§%;§().GetPosition().y);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc1_))
         {
            this.§7d§ = this.§6y§;
            this.§34§ = this.§]!4§;
            if(_loc3_ || this)
            {
               §§goto(addr69);
            }
            §§goto(addr112);
         }
         addr69:
         this.§4!6§ = this.§!i§;
         if(_loc3_)
         {
            §§push(this);
            §§push(this.§%;§().GetAngle());
            if(!(_loc4_ && this))
            {
               §§push(180);
               if(_loc3_)
               {
                  §§goto(addr112);
               }
               §§push(§§pop() % §§pop());
            }
            addr112:
            §§push(§§pop() * (§§pop() / Math.PI));
            if(!(_loc4_ && this))
            {
               §§push(360);
            }
            §§pop().§6y§ = §§pop();
            §§push(this);
            §§push(_loc1_);
            if(!_loc4_)
            {
               §§push(§§pop() / §#;§.§`!2§);
            }
            §§pop().§]!4§ = §§pop();
            §§goto(addr121);
         }
         addr121:
         §§push(this);
         §§push(_loc2_);
         if(!_loc4_)
         {
            §§push(§§pop() / §#;§.§`!2§);
         }
         §§pop().§!i§ = §§pop();
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
      
      public function §6!B§(param1:Number, param2:Number = -1) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            §§push(param1);
            if(!(_loc4_ && this))
            {
               if(§§pop() > 1e-9)
               {
                  if(_loc3_)
                  {
                     §§push(§#y§);
                     §§push("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = ");
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(§§pop() + param1);
                        if(!(_loc4_ && param1))
                        {
                           addr53:
                           §§push(§§pop() + " overriding to 0");
                        }
                        §§pop().log(§§pop());
                        if(_loc3_)
                        {
                           addr58:
                           §§push(param2);
                           if(!_loc4_)
                           {
                              addr61:
                              if(§§pop() < 0)
                              {
                                 §§push(this.§ !6§.§7C§.§-K§.§case§ * 1000);
                                 if(_loc3_ || param2)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc3_ || param2)
                                    {
                                       param2 = §§pop();
                                       if(!(_loc4_ && _loc3_))
                                       {
                                          addr93:
                                          §§push(param1);
                                          §§push(-1);
                                          if(!(_loc4_ && param1))
                                          {
                                             addr103:
                                             §§push(Number(§§pop() * §§pop()));
                                             if(!_loc4_)
                                             {
                                                param1 = §§pop();
                                                if(!(_loc4_ && param2))
                                                {
                                                   §§push(this.§]!4§);
                                                   §§push(this.§34§);
                                                   if(_loc3_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(!(§§pop() == §§pop()))
                                                      {
                                                         if(!(_loc4_ && param2))
                                                         {
                                                            §§pop();
                                                            addr131:
                                                            §§push(param1);
                                                            if(_loc3_)
                                                            {
                                                               addr134:
                                                               §§push(0);
                                                               if(_loc3_)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(_loc3_ || param2)
                                                                  {
                                                                     addr145:
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc4_ && this))
                                                                        {
                                                                           this.§ !%§ = 0;
                                                                           if(_loc3_)
                                                                           {
                                                                              this.§5!>§ = this.§]!4§;
                                                                              if(_loc3_ || param2)
                                                                              {
                                                                                 addr205:
                                                                                 §§push(this.§!i§);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr211:
                                                                                    §§push(§§pop() == this.§4!6§);
                                                                                    §§push(§§pop() == this.§4!6§);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          §§pop();
                                                                                          §§push(param1);
                                                                                          if(!(_loc4_ && param2))
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(!(_loc4_ && param1))
                                                                                             {
                                                                                                §§push(§§pop() == §§pop());
                                                                                                if(!(_loc4_ && param2))
                                                                                                {
                                                                                                   addr241:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         this.§9-§ = 0;
                                                                                                      }
                                                                                                      this.§#!$§ = this.§!i§;
                                                                                                      if(_loc3_ || param2)
                                                                                                      {
                                                                                                         addr306:
                                                                                                         §§push(this.§6y§);
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            §§push(§§pop() == this.§7d§);
                                                                                                            if(_loc3_ || param1)
                                                                                                            {
                                                                                                               §§push(§§pop());
                                                                                                               if(!(_loc4_ && this))
                                                                                                               {
                                                                                                                  addr328:
                                                                                                                  if(!§§pop())
                                                                                                                  {
                                                                                                                     §§pop();
                                                                                                                     if(!(_loc4_ && param2))
                                                                                                                     {
                                                                                                                        addr338:
                                                                                                                        §§push(param1);
                                                                                                                        §§push(0);
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           addr341:
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                           if(_loc3_)
                                                                                                                           {
                                                                                                                              addr344:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 addr345:
                                                                                                                                 this.§+H§ = this.§6y§;
                                                                                                                                 if(!(_loc3_ || param2))
                                                                                                                                 {
                                                                                                                                    addr577:
                                                                                                                                    §§push(this.§6y§);
                                                                                                                                    if(!(_loc4_ && _loc3_))
                                                                                                                                    {
                                                                                                                                       addr591:
                                                                                                                                       if(§§pop() - this.§7d§ <= 180)
                                                                                                                                       {
                                                                                                                                          addr592:
                                                                                                                                          §§push(this);
                                                                                                                                          §§push(this.§6y§);
                                                                                                                                          if(!(_loc4_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(param1);
                                                                                                                                             if(_loc3_ || param2)
                                                                                                                                             {
                                                                                                                                                §§push(this.§7d§);
                                                                                                                                                if(!(_loc4_ && param2))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - this.§6y§);
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr634);
                                                                                                                                                   }
                                                                                                                                                   addr634:
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(!(_loc4_ && param2))
                                                                                                                                                   {
                                                                                                                                                      §§push(param2);
                                                                                                                                                   }
                                                                                                                                                   §§pop().§+H§ = §§pop() + §§pop();
                                                                                                                                                   if(!(_loc3_ || this))
                                                                                                                                                   {
                                                                                                                                                      addr654:
                                                                                                                                                      §§push(this.§6y§);
                                                                                                                                                      if(_loc3_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr666);
                                                                                                                                                      }
                                                                                                                                                      addr666:
                                                                                                                                                      if(§§pop() - this.§7d§ > 180)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc4_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            addr676:
                                                                                                                                                            §§push(this);
                                                                                                                                                            §§push(this.§6y§);
                                                                                                                                                            if(!_loc4_)
                                                                                                                                                            {
                                                                                                                                                               §§push(param1);
                                                                                                                                                               if(_loc3_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§7d§);
                                                                                                                                                                  if(_loc3_ || param2)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() + 360);
                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - this.§6y§);
                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr727);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr727);
                                                                                                                                                            }
                                                                                                                                                            addr727:
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!(_loc4_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(param2);
                                                                                                                                                            }
                                                                                                                                                            §§pop().§+H§ = §§pop() + §§pop();
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr729);
                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr634);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr646:
                                                                                                                                          §§push(this.§7d§ < this.§6y§);
                                                                                                                                          if(_loc3_)
                                                                                                                                          {
                                                                                                                                             addr651:
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                addr653:
                                                                                                                                                §§pop();
                                                                                                                                                §§goto(addr654);
                                                                                                                                             }
                                                                                                                                             §§goto(addr666);
                                                                                                                                          }
                                                                                                                                          §§goto(addr653);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr666);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(this.§7d§);
                                                                                                                                 if(_loc3_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() > this.§6y§);
                                                                                                                                    if(§§pop() > this.§6y§)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       §§push(this.§7d§);
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          addr386:
                                                                                                                                          §§push(§§pop() - this.§6y§);
                                                                                                                                          §§push(180);
                                                                                                                                          if(_loc3_)
                                                                                                                                          {
                                                                                                                                             addr393:
                                                                                                                                             if(§§pop() <= §§pop())
                                                                                                                                             {
                                                                                                                                                §§push(this);
                                                                                                                                                §§push(this.§6y§);
                                                                                                                                                if(_loc3_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(param1);
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§7d§);
                                                                                                                                                      if(_loc3_ || param2)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - this.§6y§);
                                                                                                                                                         if(!(_loc4_ && this))
                                                                                                                                                         {
                                                                                                                                                            addr436:
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!(_loc4_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(param2);
                                                                                                                                                            }
                                                                                                                                                            §§pop().§+H§ = §§pop() + §§pop();
                                                                                                                                                            if(!(_loc4_ && param2))
                                                                                                                                                            {
                                                                                                                                                               addr445:
                                                                                                                                                               §§goto(addr729);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr496:
                                                                                                                                                               §§push(this);
                                                                                                                                                               §§push(this.§6y§);
                                                                                                                                                               if(!_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(param1);
                                                                                                                                                                  if(!(_loc4_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§7d§);
                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - 360);
                                                                                                                                                                        if(!_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() - this.§6y§);
                                                                                                                                                                           if(!(_loc4_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              addr537:
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(!(_loc4_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(param2);
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().§+H§ = §§pop() + §§pop();
                                                                                                                                                                              if(!(_loc4_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 addr546:
                                                                                                                                                                                 §§goto(addr729);
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr592);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr537);
                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr537);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr436);
                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr436);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push(this.§7d§ > this.§6y§);
                                                                                                                                                if(_loc3_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop());
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(_loc3_ || this)
                                                                                                                                                         {
                                                                                                                                                            addr469:
                                                                                                                                                            §§pop();
                                                                                                                                                            §§push(this.§7d§);
                                                                                                                                                            if(_loc3_ || param1)
                                                                                                                                                            {
                                                                                                                                                               addr479:
                                                                                                                                                               §§push(this.§6y§);
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                  if(!(_loc4_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     addr492:
                                                                                                                                                                     §§push(§§pop() > 180);
                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        addr495:
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr496);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§7d§);
                                                                                                                                                                           if(_loc3_ || _loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this.§6y§);
                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr560:
                                                                                                                                                                                 §§push(§§pop() < §§pop());
                                                                                                                                                                                 if(!_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr563:
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    if(!_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr566:
                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc4_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr574:
                                                                                                                                                                                             §§pop();
                                                                                                                                                                                             if(!_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr577);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr729);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr651);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr591);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr651);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr574);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr666);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr563);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr666);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr560);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr666);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr591);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr495);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr651);
                                                                                                                                                }
                                                                                                                                                §§goto(addr495);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr666);
                                                                                                                                    }
                                                                                                                                    §§goto(addr393);
                                                                                                                                 }
                                                                                                                                 §§goto(addr479);
                                                                                                                              }
                                                                                                                              §§goto(addr729);
                                                                                                                           }
                                                                                                                           §§goto(addr591);
                                                                                                                        }
                                                                                                                        §§goto(addr492);
                                                                                                                     }
                                                                                                                     §§goto(addr546);
                                                                                                                  }
                                                                                                                  §§goto(addr344);
                                                                                                               }
                                                                                                               §§goto(addr566);
                                                                                                            }
                                                                                                            §§goto(addr469);
                                                                                                         }
                                                                                                         §§goto(addr591);
                                                                                                         addr258:
                                                                                                      }
                                                                                                      §§goto(addr676);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§push(this);
                                                                                                      §§push(param1);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§push(this.§4!6§);
                                                                                                         if(!_loc4_)
                                                                                                         {
                                                                                                            §§push(§§pop() - this.§!i§);
                                                                                                            if(_loc3_ || this)
                                                                                                            {
                                                                                                               addr282:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§push(param2);
                                                                                                               }
                                                                                                               §§pop().§9-§ = §§pop();
                                                                                                               if(!(_loc4_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(this);
                                                                                                                  §§push(this.§!i§);
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + this.§9-§);
                                                                                                                  }
                                                                                                                  §§pop().§#!$§ = §§pop();
                                                                                                                  if(!(_loc4_ && param1))
                                                                                                                  {
                                                                                                                     §§goto(addr306);
                                                                                                                  }
                                                                                                                  §§goto(addr496);
                                                                                                               }
                                                                                                               §§goto(addr469);
                                                                                                            }
                                                                                                         }
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                      }
                                                                                                      §§goto(addr282);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr393);
                                                                                             }
                                                                                             §§goto(addr591);
                                                                                          }
                                                                                          §§goto(addr338);
                                                                                       }
                                                                                       §§goto(addr241);
                                                                                    }
                                                                                    §§goto(addr328);
                                                                                 }
                                                                                 §§goto(addr666);
                                                                              }
                                                                              §§goto(addr345);
                                                                           }
                                                                           §§goto(addr592);
                                                                        }
                                                                        §§goto(addr306);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(this);
                                                                        §§push(param1);
                                                                        if(!(_loc4_ && _loc3_))
                                                                        {
                                                                           §§push(this.§34§);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(§§pop() - this.§]!4§);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 addr193:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(param2);
                                                                                 }
                                                                                 §§pop().§ !%§ = §§pop();
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(this.§]!4§);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       §§push(§§pop() + this.§ !%§);
                                                                                    }
                                                                                    §§pop().§5!>§ = §§pop();
                                                                                    §§goto(addr205);
                                                                                 }
                                                                                 §§goto(addr496);
                                                                              }
                                                                           }
                                                                           §§push(§§pop() / §§pop());
                                                                        }
                                                                        §§goto(addr193);
                                                                     }
                                                                  }
                                                                  §§goto(addr241);
                                                               }
                                                               §§goto(addr666);
                                                            }
                                                            §§goto(addr646);
                                                         }
                                                      }
                                                      §§goto(addr145);
                                                   }
                                                   §§goto(addr211);
                                                }
                                                §§goto(addr676);
                                             }
                                             §§goto(addr134);
                                          }
                                          §§goto(addr341);
                                       }
                                       §§goto(addr131);
                                    }
                                    §§goto(addr211);
                                 }
                                 §§goto(addr103);
                              }
                              §§goto(addr93);
                           }
                           §§goto(addr386);
                        }
                        §§goto(addr445);
                     }
                     §§goto(addr53);
                  }
                  §§goto(addr345);
               }
               §§goto(addr58);
            }
            §§goto(addr61);
         }
         §§goto(addr258);
      }
      
      public function get §0U§() : Point
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(!§ F§)
            {
            }
         }
         return null;
      }
      
      public function §-`§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§'F§);
            if(_loc1_)
            {
               §§push(§+i§.§35§);
               if(_loc1_ || _loc1_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc2_ && this))
                  {
                     if(!§§pop())
                     {
                        if(_loc1_ || _loc2_)
                        {
                           §§pop();
                           addr78:
                           §§push(this.§'F§ == §+i§.§ k§);
                        }
                     }
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr78);
      }
      
      public function §`U§() : Boolean
      {
         return this.§'F§ == §+i§.§try§;
      }
      
      public function §1!F§() : Boolean
      {
         return this.§'F§ == §+i§.§'+§;
      }
      
      public function §?!1§() : Boolean
      {
         return this.§'F§ == §+i§.§ k§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§'F§ == §+i§.§5!+§;
      }
      
      public function isGround() : Boolean
      {
         return this.§'F§ == §+i§.§!!@§;
      }
      
      public function §=H§() : Boolean
      {
         return this.§'F§ == §+i§.§]D§;
      }
      
      public function §6S§() : Boolean
      {
         return this.§'F§ == §+i§.§+^§;
      }
      
      public function §],§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§'!,§);
            if(_loc1_ || this)
            {
               §§push("MISC_EXPLOSIVE_TNT");
               if(_loc1_ || _loc1_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc1_)
                  {
                     if(!§§pop())
                     {
                        if(_loc1_)
                        {
                           §§pop();
                           if(!_loc2_)
                           {
                              §§goto(addr73);
                           }
                           §§goto(addr98);
                        }
                     }
                  }
                  §§goto(addr81);
               }
               §§goto(addr73);
            }
            addr73:
            §§push(this.§'!,§ == "POWERUP_BOMB");
            if(!(_loc2_ && _loc1_))
            {
               addr81:
               if(§§pop())
               {
                  if(!(_loc2_ && _loc1_))
                  {
                     addr89:
                     §§push(true);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§goto(addr97);
                     }
                  }
                  else
                  {
                     addr98:
                     §§push(false);
                  }
                  return §§pop();
               }
               §§goto(addr98);
            }
            addr97:
            return §§pop();
         }
         §§goto(addr89);
      }
      
      public function §<!0§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§`U§());
            if(_loc1_)
            {
               §§push(Boolean(§§pop()));
               §§push(Boolean(§§pop()));
               if(_loc1_)
               {
                  if(!§§pop())
                  {
                     addr32:
                     §§pop();
                     if(_loc1_ || _loc1_)
                     {
                        §§push(this.§=H§());
                        if(!_loc2_)
                        {
                           §§goto(addr55);
                        }
                        §§goto(addr96);
                     }
                     §§goto(addr77);
                  }
                  addr55:
                  §§push(Boolean(§§pop()));
                  §§push(Boolean(§§pop()));
                  if(_loc1_)
                  {
                     if(!§§pop())
                     {
                        §§pop();
                        if(!(_loc2_ && this))
                        {
                           addr77:
                           §§push(this.§6S§());
                           if(!(_loc2_ && _loc1_))
                           {
                              §§goto(addr87);
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr97);
                     }
                  }
                  §§goto(addr87);
               }
               addr87:
               §§push(Boolean(§§pop()));
               if(Boolean(§§pop()))
               {
                  if(_loc1_ || this)
                  {
                     addr96:
                     §§pop();
                     addr97:
                     §§push(this.§0>§);
                     if(_loc2_)
                     {
                     }
                     §§goto(addr102);
                  }
                  §§push(!§§pop());
               }
               addr102:
               return §§pop();
            }
            §§goto(addr32);
         }
         §§goto(addr77);
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §3%§() : Number
      {
         return Number(Math.sqrt(this.§%;§().GetLinearVelocity().x * this.§%;§().GetLinearVelocity().x + this.§%;§().GetLinearVelocity().y * this.§%;§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         §§push(this.§1!F§());
         if(!_loc9_)
         {
            if(§§pop())
            {
               if(!_loc9_)
               {
                  return this.§4!;§;
               }
               addr189:
               §§push(param1);
               if(_loc10_)
               {
                  addr192:
                  §§push(this.§,9§);
                  if(_loc10_)
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(_loc10_)
                        {
                           §§push(param1);
                           §§push(this.§,9§);
                           if(!(_loc9_ && param1))
                           {
                              §§push(§§pop() / 2);
                              if(!_loc9_)
                              {
                                 addr213:
                                 if(§§pop() >= §§pop())
                                 {
                                    if(_loc10_)
                                    {
                                       this.§+t§(§0r§.§!$§);
                                       if(!_loc9_)
                                       {
                                          addr222:
                                          §§push(Boolean(this.§-`§()));
                                          if(_loc10_)
                                          {
                                             §§push(§§pop());
                                             if(!(_loc9_ && this))
                                             {
                                                if(§§pop())
                                                {
                                                   if(!(_loc9_ && this))
                                                   {
                                                      §§pop();
                                                      if(_loc10_ || param3)
                                                      {
                                                         §§push(this.§4!;§);
                                                         §§push(this.§8!,§);
                                                         if(_loc10_ || this)
                                                         {
                                                            addr262:
                                                            §§push(§§pop() == §§pop());
                                                            if(!(_loc9_ && param1))
                                                            {
                                                               addr270:
                                                               if(§§pop())
                                                               {
                                                                  if(_loc10_ || param3)
                                                                  {
                                                                     addr278:
                                                                     §§push(this);
                                                                     §§push(this.§8!,§);
                                                                     if(_loc10_)
                                                                     {
                                                                        §§push(§§pop() - 1);
                                                                     }
                                                                     §§pop().§4!;§ = §§pop();
                                                                  }
                                                                  addr588:
                                                                  return this.§4!;§;
                                                                  addr586:
                                                               }
                                                               §§push(this.§4!;§);
                                                               if(_loc10_)
                                                               {
                                                                  return §§pop();
                                                               }
                                                               addr326:
                                                               param1 = §§pop();
                                                               if(!(_loc9_ && param2))
                                                               {
                                                                  §§push(param2);
                                                                  if(_loc10_)
                                                                  {
                                                                     addr337:
                                                                     §§push(Boolean(§§pop()));
                                                                     if(!(_loc9_ && param2))
                                                                     {
                                                                        addr345:
                                                                        §§push(§§pop());
                                                                        if(!(_loc9_ && param2))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              §§pop();
                                                                              §§push(Boolean(this.§<!0§()));
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              addr359:
                                                                              §§push(int(Math.min(this.§4!;§,int(param1))));
                                                                              if(!_loc9_)
                                                                              {
                                                                                 _loc7_ = §§pop();
                                                                                 §§push(§#;§.§?!B§.getValue());
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    §§push(int(§§pop() * _loc7_));
                                                                                 }
                                                                              }
                                                                              _loc8_ = §§pop();
                                                                              §§push(this.§ !6§.§7C§);
                                                                              §§push(_loc8_);
                                                                              §§push(§0]§.§-h§);
                                                                              if(_loc10_)
                                                                              {
                                                                                 §§push(this.§4!;§ > param1);
                                                                                 if(!(_loc9_ && param3))
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(_loc10_ || param3)
                                                                                       {
                                                                                          §§pop();
                                                                                          addr408:
                                                                                          §§push(param3);
                                                                                          if(_loc9_ && param2)
                                                                                          {
                                                                                          }
                                                                                          addr417:
                                                                                          §§pop().addScore(§§pop(),§§pop(),§§pop(),this.§%;§().GetPosition().x,this.§%;§().GetPosition().y,§2S§.§`!0§(this.§'!,§));
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             addr432:
                                                                                             §§push(param5);
                                                                                             if(_loc10_ || param2)
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                if(!_loc9_)
                                                                                                {
                                                                                                   §§push(§§pop());
                                                                                                   if(!(_loc9_ && param2))
                                                                                                   {
                                                                                                      addr451:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc10_ || param3)
                                                                                                         {
                                                                                                            addr459:
                                                                                                            §§pop();
                                                                                                            §§push(this.§8+§);
                                                                                                            if(_loc10_ || param1)
                                                                                                            {
                                                                                                               addr470:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc10_ || param2)
                                                                                                                  {
                                                                                                                     addr499:
                                                                                                                     §§push(this.§4!;§);
                                                                                                                     if(!(_loc9_ && param2))
                                                                                                                     {
                                                                                                                        §§push(1);
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           addr511:
                                                                                                                           §§push(§§pop() < §§pop());
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              addr515:
                                                                                                                              if(§§pop())
                                                                                                                              {
                                                                                                                                 addr516:
                                                                                                                                 §§pop();
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    addr519:
                                                                                                                                    §§push(this.§-`§());
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       addr524:
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             this.§4!;§ = 1;
                                                                                                                                             addr530:
                                                                                                                                             if(this.§4!;§ < 1)
                                                                                                                                             {
                                                                                                                                                if(_loc10_)
                                                                                                                                                {
                                                                                                                                                   this.§4!;§ = 0;
                                                                                                                                                   addr539:
                                                                                                                                                   §>2§.§51§(§0r§.§5L§,this.§%g§.§6!6§,"ChannelDestroyed");
                                                                                                                                                   if(!(_loc9_ && param1))
                                                                                                                                                   {
                                                                                                                                                      addr583:
                                                                                                                                                      this.§2!@§.setDamagedFrame();
                                                                                                                                                      §§goto(addr586);
                                                                                                                                                      addr564:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr583);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                this.§+t§(§0r§.§@B§);
                                                                                                                                                if(_loc10_ || param1)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                §§goto(addr583);
                                                                                                                                             }
                                                                                                                                             §§goto(addr583);
                                                                                                                                          }
                                                                                                                                          this.addDamageParticles(this.§ !6§.§7C§.particles,param1);
                                                                                                                                          §§goto(addr583);
                                                                                                                                       }
                                                                                                                                       §§goto(addr530);
                                                                                                                                    }
                                                                                                                                    §§goto(addr524);
                                                                                                                                 }
                                                                                                                                 §§goto(addr564);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr524);
                                                                                                                        }
                                                                                                                        §§goto(addr530);
                                                                                                                     }
                                                                                                                     §§goto(addr588);
                                                                                                                  }
                                                                                                                  §§goto(addr519);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(this);
                                                                                                                  §§push(this.§4!;§);
                                                                                                                  if(!(_loc9_ && param1))
                                                                                                                  {
                                                                                                                     §§push(§§pop() - param1);
                                                                                                                  }
                                                                                                                  §§pop().§4!;§ = §§pop();
                                                                                                                  if(!(_loc9_ && param3))
                                                                                                                  {
                                                                                                                     §§goto(addr499);
                                                                                                                  }
                                                                                                                  §§goto(addr588);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr516);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr470);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr515);
                                                                                             }
                                                                                             §§goto(addr524);
                                                                                          }
                                                                                          §§goto(addr588);
                                                                                       }
                                                                                       §§push(Boolean(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr417);
                                                                              }
                                                                              §§goto(addr408);
                                                                           }
                                                                           §§goto(addr432);
                                                                        }
                                                                        §§goto(addr515);
                                                                     }
                                                                     §§goto(addr470);
                                                                  }
                                                                  §§goto(addr516);
                                                               }
                                                               §§goto(addr583);
                                                            }
                                                            §§goto(addr459);
                                                         }
                                                         else
                                                         {
                                                            addr310:
                                                            §§push(§§pop() - §§pop());
                                                            if(!(_loc9_ && param2))
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(!(_loc9_ && param1))
                                                               {
                                                                  §§goto(addr326);
                                                               }
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr588);
                                                   }
                                                   §§goto(addr524);
                                                }
                                                §§goto(addr270);
                                             }
                                             §§goto(addr451);
                                          }
                                          §§goto(addr524);
                                       }
                                       §§goto(addr583);
                                    }
                                    §§goto(addr539);
                                 }
                                 §§goto(addr222);
                              }
                              §§goto(addr262);
                           }
                           §§goto(addr310);
                        }
                        §§goto(addr432);
                     }
                     else
                     {
                        §§push(param1);
                        if(_loc10_ || param2)
                        {
                           §§goto(addr310);
                           §§push(this.§,9§);
                        }
                     }
                     §§goto(addr326);
                  }
                  §§goto(addr213);
               }
               §§goto(addr530);
            }
            else
            {
               §§push(this.§ !6§);
               if(!(_loc9_ && this))
               {
                  if(!§§pop().§=7§())
                  {
                     return this.§4!;§;
                  }
                  §§push(this.§,9§);
                  §§push(0);
                  if(_loc10_)
                  {
                     §§push(§§pop() < §§pop());
                     §§push(§§pop() < §§pop());
                     if(_loc10_ || this)
                     {
                        if(§§pop())
                        {
                           if(_loc10_)
                           {
                              §§pop();
                              if(_loc10_ || param3)
                              {
                                 §§push(param6);
                                 if(!(_loc9_ && param1))
                                 {
                                    §§push(!§§pop());
                                    if(_loc10_ || param3)
                                    {
                                       addr100:
                                       if(§§pop())
                                       {
                                          if(_loc10_ || this)
                                          {
                                             §§push(param1);
                                             if(_loc10_ || this)
                                             {
                                                §§push(30);
                                                if(_loc10_ || param1)
                                                {
                                                   if(§§pop() > §§pop())
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         this.§+t§(§0r§.§5L§);
                                                         if(_loc10_)
                                                         {
                                                            §§goto(addr184);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr432);
                                                         }
                                                      }
                                                      §§goto(addr530);
                                                   }
                                                   else
                                                   {
                                                      §§push(param1);
                                                      if(_loc10_ || param1)
                                                      {
                                                         §§push(12);
                                                         if(_loc10_ || param3)
                                                         {
                                                            if(§§pop() > §§pop())
                                                            {
                                                               this.§+t§(§0r§.§@B§);
                                                            }
                                                            else
                                                            {
                                                               §§push(param1);
                                                               if(!(_loc9_ && param1))
                                                               {
                                                                  §§push(3);
                                                                  if(!(_loc9_ && param1))
                                                                  {
                                                                     addr172:
                                                                     if(§§pop() > §§pop())
                                                                     {
                                                                        this.§+t§(§0r§.§!$§);
                                                                        if(!(_loc9_ && param3))
                                                                        {
                                                                           §§goto(addr184);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr359);
                                                                        }
                                                                     }
                                                                     §§goto(addr184);
                                                                  }
                                                                  §§goto(addr511);
                                                               }
                                                               §§goto(addr530);
                                                            }
                                                            addr184:
                                                            return this.§4!;§;
                                                         }
                                                         §§goto(addr172);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr192);
                                                      }
                                                   }
                                                   §§goto(addr524);
                                                }
                                                §§goto(addr172);
                                             }
                                             §§goto(addr530);
                                          }
                                          §§goto(addr278);
                                       }
                                       else
                                       {
                                          §§goto(addr189);
                                       }
                                    }
                                    §§goto(addr345);
                                 }
                                 §§goto(addr100);
                              }
                              §§goto(addr588);
                           }
                           §§goto(addr337);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr451);
                  }
                  §§goto(addr172);
               }
            }
            §§goto(addr359);
         }
         §§goto(addr345);
      }
      
      public function §+t§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §>2§.§51§(param1,this.§%g§.§6!6§);
         }
      }
      
      public function §]z§(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§%g§.material.§]"§(param1));
         if(!(_loc2_ && param1))
         {
            §§push(§§pop() * this.§ V§);
         }
         return §§pop();
      }
      
      public function §2F§(param1:String) : Number
      {
         return this.§%g§.material.§@]§(param1);
      }
      
      public function §&!C§() : String
      {
         return this.§%g§.material.mName;
      }
      
      public function §7K§() : Number
      {
         return this.§%g§.§@!>§();
      }
      
      public function §6F§() : int
      {
         return this.§%g§.§=!8§();
      }
      
      public function §`E§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 30;
         if(!(_loc3_ && _loc2_))
         {
            §§push(Boolean(this.§%;§().IsAwake()));
            §§push(Boolean(this.§%;§().IsAwake()));
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     §§pop();
                     if(_loc2_)
                     {
                        addr46:
                        §§push(Boolean(this.§-`§()));
                        §§push(Boolean(this.§-`§()));
                        if(_loc2_)
                        {
                           if(§§pop())
                           {
                              if(_loc2_)
                              {
                                 §§pop();
                                 if(!(_loc3_ && _loc1_))
                                 {
                                    addr75:
                                    addr60:
                                    §§push(this.§4!;§ == this.§8!,§);
                                    §§push(this.§4!;§ == this.§8!,§);
                                    if(_loc2_)
                                    {
                                       if(!§§pop())
                                       {
                                          §§pop();
                                          §§goto(addr156);
                                       }
                                    }
                                    addr106:
                                    if(!§§pop())
                                    {
                                       §§pop();
                                       if(_loc2_ || _loc2_)
                                       {
                                          §§push(Math.abs(this.§%;§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                          if(_loc3_ && this)
                                          {
                                          }
                                       }
                                       §§goto(addr156);
                                    }
                                    if(!§§pop())
                                    {
                                       §§pop();
                                    }
                                 }
                                 §§goto(addr156);
                              }
                              §§push(§§pop());
                              if(_loc2_ || _loc2_)
                              {
                              }
                              §§goto(addr106);
                           }
                        }
                        §§goto(addr75);
                     }
                     §§goto(addr156);
                  }
                  §§goto(addr46);
               }
               addr156:
               if(!(_loc3_ && _loc3_))
               {
                  §§push(Math.abs(this.§%;§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * _loc1_);
               }
               return Math.abs(this.§%;§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * _loc1_;
            }
            §§goto(addr75);
         }
         §§goto(addr60);
      }
      
      public function §0!@§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§%;§().IsAwake());
            if(!(_loc2_ && this))
            {
               if(!§§pop())
               {
                  if(_loc1_)
                  {
                     §§push(true);
                     if(_loc1_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr60:
                     §§push(this.isMoving());
                     if(!(_loc2_ && this))
                     {
                        addr69:
                        §§push(!§§pop());
                     }
                  }
                  return §§pop();
               }
               §§goto(addr60);
            }
            §§goto(addr69);
         }
         §§goto(addr60);
      }
      
      protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§0%§();
         }
         var _loc1_:int = 5;
         if(!_loc3_)
         {
            §§push(Math.abs(this.§7!<§(this.§"!I§[0])) < b2Settings.b2_linearSleepTolerance * _loc1_);
            §§push(Math.abs(this.§7!<§(this.§"!I§[0])) < b2Settings.b2_linearSleepTolerance * _loc1_);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     §§pop();
                     if(_loc2_ || this)
                     {
                        §§push(Math.abs(this.§7!<§(this.§"!I§[1])) < b2Settings.b2_linearSleepTolerance * _loc1_);
                        if(!(_loc3_ && this))
                        {
                           addr91:
                           if(§§pop())
                           {
                              addr93:
                              §§pop();
                              if(_loc2_ || _loc3_)
                              {
                                 §§goto(addr124);
                              }
                              §§goto(addr133);
                           }
                           addr124:
                           if(Math.abs(this.§7!<§(this.§"!I§[2])) < b2Settings.b2_angularSleepTolerance * _loc1_)
                           {
                              if(_loc3_ && _loc2_)
                              {
                                 §§goto(addr134);
                              }
                           }
                           §§goto(addr134);
                        }
                        addr133:
                        return false;
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr93);
               }
            }
            §§goto(addr91);
         }
         addr134:
         return true;
      }
      
      private function §7!<§(param1:Vector.<Number>) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = Number(0);
         var _loc3_:int = 0;
         while(_loc3_ < param1.length)
         {
            §§push(_loc2_);
            if(!(_loc5_ && _loc3_))
            {
               §§push(Number(§§pop() + param1[_loc3_]));
               if(_loc4_)
               {
                  _loc2_ = §§pop();
                  if(!_loc4_)
                  {
                     break;
                  }
                  _loc3_++;
                  if(!(_loc4_ || this))
                  {
                     break;
                  }
                  continue;
                  continue;
               }
            }
            return §§pop();
         }
         §§push(_loc2_);
         if(!_loc5_)
         {
            §§push(§§pop() / param1.length);
         }
         §§goto(addr79);
      }
      
      private function §0%§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§"!I§[0].push(this.§%;§().GetLinearVelocity().x);
            if(_loc2_ || _loc2_)
            {
               this.§"!I§[1].push(this.§%;§().GetLinearVelocity().y);
               if(!(_loc3_ && _loc3_))
               {
                  this.§"!I§[2].push(this.§%;§().GetAngularVelocity());
               }
            }
         }
         var _loc1_:* = uint(0);
         loop0:
         while(true)
         {
            §§push(_loc1_);
            while(§§pop() < 3)
            {
               if(this.§"!I§[_loc1_].length > this.§'!D§)
               {
                  if(_loc2_ || _loc1_)
                  {
                     this.§"!I§[_loc1_].shift();
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                  }
                  break;
               }
               §§push(_loc1_);
               if(_loc2_ || this)
               {
                  §§push(uint(§§pop() + 1));
                  if(_loc2_ || this)
                  {
                     _loc1_ = §§pop();
                     if(_loc3_ && _loc3_)
                     {
                        break;
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
      }
      
      public function §^'§(param1:Number = 3) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§ V§ = param1;
            if(_loc3_)
            {
               addr49:
               if(this.§ V§ > 1)
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     §§goto(addr60);
                  }
                  §§goto(addr72);
               }
               else
               {
                  §§push(this.§2!@§);
               }
               §§goto(addr75);
            }
            addr60:
            §§push(this.§2!@§);
            if(_loc3_)
            {
               §§pop().§ +§();
               if(_loc3_ || this)
               {
                  addr72:
               }
            }
            else
            {
               addr75:
               §§pop().§>!D§ = null;
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function §3v§(param1:Boolean) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         if(_loc4_ || param1)
         {
            §§push(this.§%g§.§+!9§());
            if(_loc4_ || _loc3_)
            {
               if(§§pop() == §7g§.§0!!§)
               {
                  addr40:
                  §§push(this.§2!@§.mW);
                  §§push(this.§2!@§.mH);
                  if(!(_loc3_ && this))
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc3_)
                     {
                        §§push(§#;§.§`!2§);
                        §§push(§#;§.§`!2§);
                        if(_loc4_)
                        {
                           §§push(§§pop() * (§§pop() * §§pop()));
                           if(!(_loc3_ && param1))
                           {
                              addr82:
                              _loc2_ = Number(§§pop());
                           }
                           else
                           {
                              addr128:
                              _loc2_ = §§pop();
                              if(_loc4_)
                              {
                                 addr145:
                                 addr131:
                                 §§push(_loc2_);
                                 §§push(this.§=!%§);
                                 if(_loc4_ || this)
                                 {
                                    addr143:
                                    §§push(§§pop() * this.§=!%§);
                                 }
                                 §§push(Number(§§pop() / §§pop()));
                                 if(_loc4_)
                                 {
                                    _loc2_ = §§pop();
                                 }
                                 §§goto(addr150);
                              }
                           }
                           addr150:
                           return §§pop();
                           §§push(_loc2_);
                        }
                        §§goto(addr143);
                     }
                     §§goto(addr150);
                  }
                  §§goto(addr143);
               }
               else
               {
                  §§push(this.§%;§().GetMass());
                  if(!(_loc3_ && this))
                  {
                     §§push(this.§@e§.GetDensity());
                     if(!_loc3_)
                     {
                        _loc2_ = Number(§§pop() / §§pop());
                        if(_loc4_)
                        {
                           if(param1)
                           {
                              §§push(_loc2_);
                              if(_loc4_ || _loc2_)
                              {
                                 addr126:
                                 §§goto(addr128);
                                 §§push(Number(§§pop() * this.§2,§()));
                              }
                              §§goto(addr145);
                           }
                        }
                        §§goto(addr131);
                     }
                  }
                  §§goto(addr126);
               }
            }
            §§goto(addr82);
         }
         §§goto(addr40);
      }
      
      public function §2,§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = Number(1);
         if(!(_loc3_ && _loc1_))
         {
            §§push(_loc1_);
            if(_loc2_)
            {
               §§push(_loc1_);
               if(_loc2_ || _loc1_)
               {
                  §§push(2);
                  if(_loc2_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc2_)
                     {
                        §§goto(addr63);
                     }
                  }
                  §§goto(addr73);
               }
               addr63:
               §§push(§§pop() * Math.min(10,this.§2!@§.§6r§ - 1));
               if(!_loc3_)
               {
                  addr73:
                  §§push(§§pop() / 10);
               }
               §§push(§§pop() - §§pop());
               if(!(_loc3_ && _loc2_))
               {
                  §§push(Number(§§pop()));
                  if(_loc2_)
                  {
                     _loc1_ = §§pop();
                  }
               }
            }
            §§goto(addr88);
         }
         addr88:
         return _loc1_;
      }
      
      public function §^m§(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(this.§%;§().GetLinearVelocity().x);
         if(!(_loc7_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§%;§().GetLinearVelocity().y);
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         §§push(1);
         §§push(param1);
         if(!_loc7_)
         {
            §§push(§§pop() / _loc4_);
         }
         §§push(§§pop() + §§pop());
         if(!(_loc7_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!(_loc7_ && param1))
         {
            §§push(_loc2_);
            if(_loc6_)
            {
               §§push(_loc5_);
               if(_loc6_ || this)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc7_ && _loc3_))
                  {
                     §§push(Number(§§pop()));
                     if(_loc6_ || _loc2_)
                     {
                        addr108:
                        _loc2_ = §§pop();
                        if(_loc6_ || _loc3_)
                        {
                           addr126:
                           §§push(_loc3_);
                           if(_loc6_ || _loc3_)
                           {
                              §§goto(addr134);
                           }
                           §§goto(addr138);
                        }
                        §§goto(addr147);
                     }
                     §§goto(addr138);
                  }
                  addr134:
                  §§goto(addr135);
               }
               addr135:
               §§push(§§pop() * _loc5_);
               if(_loc6_)
               {
                  addr138:
                  §§push(Number(§§pop()));
               }
               _loc3_ = §§pop();
               if(_loc6_ || this)
               {
                  addr147:
                  this.§%;§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
               }
               return;
            }
            §§goto(addr108);
         }
         §§goto(addr126);
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§]!H§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§5b§) : void
      {
      }
      
      public function addDamageParticles(param1:§5b§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §[;§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2Vec2 = this.§%;§().GetPosition();
         §§push(_loc4_);
         §§push(_loc4_.x);
         if(!(_loc6_ && this))
         {
            §§push(param2.x * param1);
            if(!(_loc6_ && param2))
            {
               §§push(§§pop() * param3);
            }
            §§push(§§pop() + §§pop());
         }
         §§pop().x = §§pop();
         if(_loc5_)
         {
            §§push(_loc4_);
            §§push(_loc4_.y);
            if(_loc5_ || param1)
            {
               §§push(param2.y * param1);
               if(_loc5_ || param1)
               {
                  §§push(§§pop() * param3);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().y = §§pop();
            if(_loc5_ || param3)
            {
               this.§%;§().SetPosition(_loc4_);
            }
         }
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc7_)
         {
            if(param2)
            {
               §§push(Number(this.§+O§()));
               if(_loc7_ || this)
               {
                  §§push(§§pop());
                  if(!(_loc6_ && this))
                  {
                     _loc4_ = §§pop();
                     if(!_loc6_)
                     {
                        §§push(360);
                        if(!(_loc6_ && param1))
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc7_)
                           {
                              §§push(360);
                              if(!(_loc6_ && _loc3_))
                              {
                                 §§push(Number(§§pop() % §§pop()));
                                 if(_loc7_)
                                 {
                                    _loc4_ = §§pop();
                                    §§push(Math.round(_loc4_ / 22.5) * 22.5);
                                    if(!_loc6_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(!_loc6_)
                                       {
                                          _loc4_ = §§pop();
                                          §§push(Number(0));
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             addr92:
                                             _loc5_ = §§pop();
                                             if(_loc7_)
                                             {
                                                addr95:
                                                §§push(param1);
                                                if(!_loc6_)
                                                {
                                                   addr99:
                                                   if(§§pop() != 0)
                                                   {
                                                      if(_loc7_ || this)
                                                      {
                                                         addr107:
                                                         §§push(_loc4_);
                                                         if(_loc7_)
                                                         {
                                                            §§push(param1);
                                                            if(!(_loc6_ && param1))
                                                            {
                                                               §§push(§§pop() % §§pop());
                                                               if(_loc7_ || this)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc7_ || param1)
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     if(!(_loc6_ && param1))
                                                                     {
                                                                        addr152:
                                                                        §§push(_loc5_);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§push(param1);
                                                                           if(_loc7_ || param1)
                                                                           {
                                                                              if(§§pop() < §§pop() / 2)
                                                                              {
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    §§push(_loc5_);
                                                                                    if(!(_loc6_ && param1))
                                                                                    {
                                                                                       addr177:
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          addr180:
                                                                                          §§push(Number(§§pop()));
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             addr183:
                                                                                             _loc4_ = §§pop();
                                                                                             if(_loc7_ || param2)
                                                                                             {
                                                                                                addr212:
                                                                                                this.§0i§(_loc4_);
                                                                                                addr215:
                                                                                                §§push(this.§+O§());
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   addr220:
                                                                                                   §§push(§§pop() + param1);
                                                                                                   if(_loc7_ || param1)
                                                                                                   {
                                                                                                      addr228:
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                }
                                                                                                var _loc3_:* = §§pop();
                                                                                                if(_loc7_)
                                                                                                {
                                                                                                   §§push(Math.round(_loc3_ / 22.5) * 22.5);
                                                                                                   if(!(_loc6_ && param2))
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   _loc3_ = §§pop();
                                                                                                   if(_loc7_ || param1)
                                                                                                   {
                                                                                                      addr265:
                                                                                                      this.§0i§(_loc3_);
                                                                                                   }
                                                                                                   return;
                                                                                                }
                                                                                                §§goto(addr265);
                                                                                                addr191:
                                                                                             }
                                                                                             §§goto(addr215);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr195:
                                                                                             §§push(param1);
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                addr198:
                                                                                                §§push(§§pop() - _loc5_);
                                                                                                if(_loc7_ || param1)
                                                                                                {
                                                                                                   addr207:
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      addr211:
                                                                                                      _loc4_ = Number(§§pop());
                                                                                                      §§goto(addr212);
                                                                                                   }
                                                                                                   §§goto(addr228);
                                                                                                }
                                                                                                §§goto(addr220);
                                                                                             }
                                                                                             §§goto(addr207);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr195);
                                                                                    }
                                                                                    §§goto(addr198);
                                                                                 }
                                                                                 §§goto(addr212);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§goto(addr195);
                                                                                 }
                                                                              }
                                                                              §§goto(addr228);
                                                                           }
                                                                           §§goto(addr177);
                                                                        }
                                                                        §§goto(addr183);
                                                                     }
                                                                     §§goto(addr191);
                                                                  }
                                                                  §§goto(addr183);
                                                               }
                                                               §§goto(addr211);
                                                            }
                                                            §§goto(addr198);
                                                         }
                                                         §§goto(addr195);
                                                      }
                                                   }
                                                   §§goto(addr152);
                                                }
                                                §§goto(addr211);
                                             }
                                             §§goto(addr107);
                                          }
                                          §§goto(addr195);
                                       }
                                       §§goto(addr180);
                                    }
                                 }
                                 §§goto(addr211);
                              }
                           }
                           §§goto(addr92);
                        }
                        §§goto(addr99);
                     }
                     §§goto(addr92);
                  }
                  §§goto(addr198);
               }
               §§goto(addr220);
            }
            §§goto(addr212);
         }
         §§goto(addr95);
      }
      
      public function §>!@§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§^M§(this.§%;§().GetAngle()));
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            if(!(_loc3_ && _loc3_))
            {
               §§push(param1);
               if(_loc4_ || this)
               {
                  §§push(360);
                  if(_loc4_ || param1)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc4_)
                     {
                        addr66:
                        §§push(§§pop() / 1000);
                     }
                     §§push(§§pop() - §§pop());
                     if(_loc4_ || param1)
                     {
                        addr85:
                        §§push(Number(§§pop()));
                        if(_loc4_)
                        {
                           _loc2_ = §§pop();
                           if(_loc4_ || _loc2_)
                           {
                              §§push(§[4§(_loc2_));
                              if(!(_loc3_ && _loc3_))
                              {
                                 addr106:
                                 §§push(Number(§§pop()));
                              }
                              _loc2_ = §§pop();
                              if(!_loc3_)
                              {
                                 addr110:
                                 this.§%;§().SetAngle(_loc2_);
                              }
                           }
                           return;
                        }
                     }
                     §§goto(addr106);
                  }
               }
               §§goto(addr66);
            }
            §§goto(addr85);
         }
         §§goto(addr110);
      }
      
      public function § !"§(param1:Number, param2:Point) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_ || param1)
         {
            this.rotate(param1);
         }
         var _loc3_:b2Vec2 = this.§%;§().GetPosition().Copy();
         §§push(_loc3_.x);
         if(!(_loc14_ && param1))
         {
            §§push(§§pop() - param2.x);
            if(_loc15_ || param1)
            {
               addr52:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(_loc3_.y);
            if(!(_loc14_ && param2))
            {
               §§push(§§pop() - param2.y);
               if(_loc15_ || param1)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc5_:* = §§pop();
            if(!(_loc14_ && param1))
            {
               §§push(_loc4_);
               if(!_loc14_)
               {
                  §§push(0);
                  if(_loc15_ || param1)
                  {
                     §§push(§§pop() == §§pop());
                     if(!(_loc14_ && param1))
                     {
                        if(§§pop())
                        {
                           if(_loc15_)
                           {
                              §§pop();
                              if(!_loc14_)
                              {
                                 §§push(_loc5_);
                                 if(!(_loc14_ && param1))
                                 {
                                    addr118:
                                    if(§§pop() == 0)
                                    {
                                       if(_loc15_ || _loc3_)
                                       {
                                          §§goto(addr126);
                                       }
                                       else
                                       {
                                          addr127:
                                          §§push(Number(Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)));
                                       }
                                    }
                                    §§goto(addr127);
                                 }
                                 var _loc6_:* = §§pop();
                                 §§push(_loc4_);
                                 if(!_loc14_)
                                 {
                                    §§push(§§pop() / _loc5_);
                                    if(_loc15_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc7_:* = §§pop();
                                 §§push(Math.atan(_loc7_) * 180);
                                 if(_loc15_ || param2)
                                 {
                                    §§push(§§pop() / Math.PI);
                                    if(!(_loc14_ && param1))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 var _loc8_:* = §§pop();
                                 if(!(_loc14_ && this))
                                 {
                                    §§push(_loc5_);
                                    §§push(0);
                                    if(!(_loc14_ && param2))
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          if(_loc15_ || param1)
                                          {
                                             §§push(_loc8_);
                                             if(!(_loc14_ && param1))
                                             {
                                                addr214:
                                                §§push(§§pop() + 180);
                                             }
                                             §§push(Number(§§pop()));
                                             if(!_loc14_)
                                             {
                                                _loc8_ = §§pop();
                                                addr219:
                                                §§push(_loc8_);
                                                if(_loc15_)
                                                {
                                                   §§push(param1);
                                                   if(_loc15_)
                                                   {
                                                      addr226:
                                                      §§push(Number(§§pop() + §§pop()));
                                                      §§push(Number(§§pop() + §§pop()));
                                                   }
                                                   var _loc9_:* = §§pop();
                                                   if(_loc15_)
                                                   {
                                                      §§push(§§pop() * Math.PI);
                                                      if(!_loc14_)
                                                      {
                                                         §§push(§§pop() / 180);
                                                         if(!_loc15_)
                                                         {
                                                         }
                                                         §§goto(addr241);
                                                      }
                                                      §§push(Number(§§pop()));
                                                   }
                                                   addr241:
                                                   var _loc10_:* = §§pop();
                                                   §§push(Math.sin(_loc10_) * _loc6_);
                                                   if(!(_loc14_ && param1))
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc11_:* = §§pop();
                                                   §§push(Math.cos(_loc10_) * _loc6_);
                                                   if(!_loc14_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc12_:* = §§pop();
                                                   var _loc13_:b2Vec2 = new b2Vec2(param2.x + _loc11_,param2.y + _loc12_);
                                                   if(_loc15_ || param1)
                                                   {
                                                      this.§%;§().SetPosition(_loc13_);
                                                   }
                                                   return;
                                                }
                                             }
                                             §§goto(addr226);
                                          }
                                       }
                                       §§goto(addr219);
                                    }
                                    §§goto(addr214);
                                 }
                                 §§goto(addr219);
                              }
                              addr126:
                              return;
                           }
                        }
                     }
                  }
               }
               §§goto(addr118);
            }
            §§goto(addr127);
         }
         §§goto(addr52);
      }
   }
}
