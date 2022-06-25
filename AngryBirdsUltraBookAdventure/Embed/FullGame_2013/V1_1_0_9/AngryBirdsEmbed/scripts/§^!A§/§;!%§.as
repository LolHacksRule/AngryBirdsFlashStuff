package §^!A§
{
   import §#X§.§,!F§;
   import §&o§.Sprite;
   import §3a§.§7!+§;
   import §4@§.§2!H§;
   import §4@§.§<!6§;
   import §6A§.§ !§;
   import §6A§.§0!'§;
   import §^!L§.§"c§;
   import §^!L§.§%h§;
   import §^!L§.§5b§;
   import §^!L§.§6<§;
   import §^!L§.each;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §;!%§
   {
      
      public static const §?>§:uint;
      
      public static const §->§:uint;
      
      public static const §?^§:uint;
      
      public static const §2w§:uint;
      
      public static const §@@§:Boolean = true;
      
      public static const §;!4§:Number = 5;
      
      public static const §,!-§:Number = 10;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§§findproperty(§?>§));
            §§push(1);
            if(_loc2_ || §;!%§)
            {
               §§push(§§pop() << §§pop());
            }
            §§pop().§?>§ = §§pop();
            §§push(§§findproperty(§->§));
            §§push(1);
            if(_loc2_)
            {
               §§push(§§pop() << 2);
            }
            §§pop().§->§ = §§pop();
            if(_loc2_ || §;!%§)
            {
               §§push(§§findproperty(§?^§));
               §§push(1);
               if(_loc2_)
               {
                  §§push(§§pop() << 3);
               }
               §§pop().§?^§ = §§pop();
               if(_loc2_ || §;!%§)
               {
                  addr79:
                  §§push(§§findproperty(§2w§));
                  §§push(1);
                  if(_loc2_)
                  {
                     §§push(§§pop() << 4);
                  }
                  §§pop().§2w§ = §§pop();
                  §§goto(addr86);
               }
               §§goto(addr99);
            }
            addr86:
            §@@§ = true;
            §;!4§ = 5;
            if(_loc2_ || §;!%§)
            {
               addr99:
               §,!-§ = 10;
            }
            return;
         }
         §§goto(addr79);
      }
      
      private var §+!$§:String;
      
      private var §]S§:int;
      
      private var §#D§:int;
      
      public var §1>§:String;
      
      public var §@%§:int;
      
      protected var §4>§:each;
      
      private var §?!@§:§@H§;
      
      private var §[!C§:b2World;
      
      protected var §4N§:String = "";
      
      protected var §0!>§:int = 1;
      
      private var §!^§:b2Fixture;
      
      private var §8!$§:b2Body;
      
      private var §&B§:b2Vec2;
      
      public var §`Y§:Number;
      
      public var §@!§:Number;
      
      private var §>^§:Number;
      
      private var §9m§:Boolean = false;
      
      private var §3D§:Number;
      
      private var §3!-§:Number;
      
      private var §^6§:Number;
      
      private var §#v§:Number;
      
      private var §><§:Number;
      
      private var §&!;§:Number;
      
      public var §4Y§:Number = 1;
      
      private var §4l§:Boolean = false;
      
      public var §@A§:Number = 0;
      
      public var §1!3§:Number = 0;
      
      protected var §[!D§:Boolean = false;
      
      public var §;S§:§[!J§;
      
      protected var §,!7§:Sprite;
      
      private var §-`§:Number = 0;
      
      private var §4J§:Number = 0;
      
      private var §&k§:Number = 0;
      
      protected var §-_§:Number = 1.0;
      
      private var §6n§:Boolean = false;
      
      protected var §;!0§:§8!J§;
      
      private var §<>§:Boolean = true;
      
      public function §;!%§(param1:§@H§, param2:Sprite, param3:b2World, param4:§ !§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc14_:b2PolygonShape = null;
         super();
         if(!(_loc16_ && this))
         {
            this.§1>§ = param6;
            this.§4>§ = §6<§.§6H§(param6);
            if(!(_loc16_ && param2))
            {
               this.§?!@§ = param1;
               if(!(_loc16_ && param1))
               {
                  this.§,!7§ = param2;
                  this.§-_§ = param10;
                  if(!_loc16_)
                  {
                     this.§6n§ = param11;
                     this.§]S§ = param5;
                     if(_loc17_ || param1)
                     {
                        addr75:
                        this.§@%§ = this.§4>§.§@%§;
                        if(!(_loc16_ && param2))
                        {
                           this.§#D§ = this.§4>§.§ 4§();
                           if(!_loc16_)
                           {
                              addr94:
                              this.§;!0§ = new §8!J§(§;!4§,§,!-§);
                              if(_loc17_ || param2)
                              {
                                 addr107:
                                 this.§;S§ = new §[!J§(this,param2,param4);
                                 if(!_loc16_)
                                 {
                                    §§push(this.§;S§);
                                    if(!_loc16_)
                                    {
                                       if(!§§pop().§1R§(param1.§?V§.§;!L§))
                                       {
                                          addr125:
                                          §§push(this.§;S§);
                                          if(_loc17_ || param3)
                                          {
                                             addr134:
                                             §§push(this.§#D§);
                                             if(!_loc16_)
                                             {
                                                §§pop().§-L§(§§pop(),this.§4>§.§9`§(),this.§4>§.§1o§() / § !§.§`J§,this.§4>§.§<!;§() / § !§.§`J§);
                                                addr167:
                                                if(!_loc16_)
                                                {
                                                   addr158:
                                                   §§push(this.§;S§);
                                                   §§push(this.§#D§);
                                                }
                                                var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
                                                if(!_loc16_)
                                                {
                                                   this.§8!$§ = this.§[!C§.CreateBody(_loc12_);
                                                   if(_loc17_ || param2)
                                                   {
                                                      addr188:
                                                      this.§8!$§.SetUserData(this);
                                                      §§push(this.§#D§);
                                                      if(!_loc16_)
                                                      {
                                                         §§push(§"c§.§3!C§);
                                                         if(!(_loc16_ && param2))
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               addr206:
                                                               §§push(b2PolygonShape);
                                                               §§push(this.§4>§.shape.§[s§);
                                                               if(!(_loc16_ && param1))
                                                               {
                                                                  §§push(param10);
                                                                  if(!_loc16_)
                                                                  {
                                                                     addr222:
                                                                     §§push(§§pop() * §§pop());
                                                                     §§push(this.§4>§.shape.§8!&§);
                                                                     if(_loc17_ || param3)
                                                                     {
                                                                        addr233:
                                                                        §§push(§§pop() * param10);
                                                                     }
                                                                     _loc14_ = §§pop().AsBox(§§pop(),§§pop());
                                                                     if(!_loc16_)
                                                                     {
                                                                        this.§!^§ = this.§8!$§.CreateFixture2(_loc14_,this.§4>§.§^!?§());
                                                                        if(!(_loc16_ && param1))
                                                                        {
                                                                           addr319:
                                                                           §§push(this.§!^§);
                                                                           if(!_loc16_)
                                                                           {
                                                                              §§push(this.§4>§);
                                                                              if(_loc17_)
                                                                              {
                                                                                 §§push(§§pop().§9l§());
                                                                                 if(_loc17_ || param2)
                                                                                 {
                                                                                    §§pop().SetFriction(§§pop());
                                                                                    if(_loc17_ || param1)
                                                                                    {
                                                                                       addr348:
                                                                                       this.§!^§.SetRestitution(this.§4>§.§9k§());
                                                                                    }
                                                                                    var _loc13_:b2FilterData = new b2FilterData();
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       §§push(this.§-!+§());
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                _loc13_.categoryBits = §?>§;
                                                                                                §§push(_loc13_);
                                                                                                §§push(65535);
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   §§push(§§pop() & ~§->§);
                                                                                                }
                                                                                                §§pop().maskBits = §§pop();
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   addr435:
                                                                                                   this.§!^§.SetFilterData(_loc13_);
                                                                                                   this.§>^§ = this.§4>§.§+u§();
                                                                                                   if(!(_loc16_ && param1))
                                                                                                   {
                                                                                                      §§push(this.§4>§);
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                         §§push(§§pop().§@!§);
                                                                                                         if(!_loc16_)
                                                                                                         {
                                                                                                            §§push(0);
                                                                                                            if(_loc17_)
                                                                                                            {
                                                                                                               if(§§pop() > §§pop())
                                                                                                               {
                                                                                                                  this.§`Y§ = this.§@!§ = this.§4>§.§@!§;
                                                                                                                  §§goto(addr519);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  this.§`Y§ = this.§@!§ = Math.round(this.§1!=§(true) * this.§4>§.§ "§());
                                                                                                                  if(_loc17_ || this)
                                                                                                                  {
                                                                                                                     addr498:
                                                                                                                     §§push(this.§`Y§);
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        addr502:
                                                                                                                        §§push(1);
                                                                                                                        if(!_loc16_)
                                                                                                                        {
                                                                                                                           if(§§pop() < §§pop())
                                                                                                                           {
                                                                                                                              if(_loc17_)
                                                                                                                              {
                                                                                                                                 this.§`Y§ = this.§@!§ = 1;
                                                                                                                                 if(_loc17_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr519);
                                                                                                                                 }
                                                                                                                                 §§goto(addr562);
                                                                                                                              }
                                                                                                                              §§goto(addr537);
                                                                                                                           }
                                                                                                                           §§goto(addr519);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr557);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr569);
                                                                                                            }
                                                                                                            §§goto(addr557);
                                                                                                         }
                                                                                                         §§goto(addr502);
                                                                                                      }
                                                                                                      §§goto(addr519);
                                                                                                   }
                                                                                                   §§goto(addr569);
                                                                                                }
                                                                                                §§goto(addr557);
                                                                                             }
                                                                                             §§goto(addr435);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(this.§1>§);
                                                                                             if(!(_loc16_ && param1))
                                                                                             {
                                                                                                §§push(§§pop().toUpperCase() == "MISC_WHITE_BIRD_EGG");
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   if(!§§pop())
                                                                                                   {
                                                                                                      if(!_loc17_)
                                                                                                      {
                                                                                                      }
                                                                                                      addr414:
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         _loc13_.categoryBits = §->§;
                                                                                                         if(!_loc16_)
                                                                                                         {
                                                                                                            §§push(_loc13_);
                                                                                                            §§push(65535);
                                                                                                            if(_loc17_ || param2)
                                                                                                            {
                                                                                                               §§push(§§pop() & ~§?>§);
                                                                                                            }
                                                                                                            §§pop().maskBits = §§pop();
                                                                                                            if(_loc17_)
                                                                                                            {
                                                                                                               §§goto(addr435);
                                                                                                            }
                                                                                                            §§goto(addr498);
                                                                                                         }
                                                                                                         addr519:
                                                                                                         if(this.§4>§.§@%§ == each.§@i§)
                                                                                                         {
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               this.§,!7§.visible = false;
                                                                                                            }
                                                                                                            addr537:
                                                                                                            if(this.isTexture())
                                                                                                            {
                                                                                                               if(_loc17_ || param3)
                                                                                                               {
                                                                                                                  addr557:
                                                                                                                  if(param9 != 0)
                                                                                                                  {
                                                                                                                     if(_loc17_)
                                                                                                                     {
                                                                                                                        addr562:
                                                                                                                        this.§=!<§(param9);
                                                                                                                        addr565:
                                                                                                                        this.§'=§();
                                                                                                                        if(_loc17_)
                                                                                                                        {
                                                                                                                           addr569:
                                                                                                                           this.§]C§(0,1);
                                                                                                                           if(_loc16_ && this)
                                                                                                                           {
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr586);
                                                                                                                     }
                                                                                                                     §§goto(addr582);
                                                                                                                  }
                                                                                                                  §§goto(addr565);
                                                                                                               }
                                                                                                               §§goto(addr562);
                                                                                                            }
                                                                                                            §§goto(addr557);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push(this.§;S§);
                                                                                                            if(!_loc16_)
                                                                                                            {
                                                                                                               §§pop().setDamagedFrame();
                                                                                                               §§goto(addr537);
                                                                                                            }
                                                                                                         }
                                                                                                         addr582:
                                                                                                         this.§;S§.§+!'§(this.§4>§.shape);
                                                                                                         addr586:
                                                                                                         return;
                                                                                                      }
                                                                                                      §§goto(addr435);
                                                                                                   }
                                                                                                   §§goto(addr414);
                                                                                                }
                                                                                                §§pop();
                                                                                                if(!(_loc16_ && param1))
                                                                                                {
                                                                                                   addr404:
                                                                                                   §§push(this.§1>§.toUpperCase() == "MISC_FOOD_EGG");
                                                                                                   if(!(_loc16_ && param3))
                                                                                                   {
                                                                                                      §§goto(addr414);
                                                                                                   }
                                                                                                   §§goto(addr537);
                                                                                                }
                                                                                                §§goto(addr435);
                                                                                             }
                                                                                             §§goto(addr404);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr414);
                                                                                    }
                                                                                    §§goto(addr498);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr348);
                                                                        }
                                                                     }
                                                                     §§goto(addr348);
                                                                  }
                                                                  §§goto(addr233);
                                                               }
                                                               §§goto(addr222);
                                                            }
                                                            else
                                                            {
                                                               §§push(this.§#D§);
                                                               if(_loc17_)
                                                               {
                                                                  addr261:
                                                                  §§push(§"c§.§,p§);
                                                                  if(_loc17_ || param1)
                                                                  {
                                                                     §§push(§§pop() == §§pop());
                                                                     if(!(_loc16_ && param1))
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           if(_loc17_)
                                                                           {
                                                                              §§pop();
                                                                              addr297:
                                                                              §§push(this.§#D§ == §"c§.§"!K§);
                                                                           }
                                                                        }
                                                                     }
                                                                     if(§§pop())
                                                                     {
                                                                        if(!(_loc16_ && param1))
                                                                        {
                                                                           this.§!^§ = this.§8!$§.CreateFixture2(this.§4>§.shape.§?d§(param10),this.§4>§.§^!?§());
                                                                        }
                                                                     }
                                                                     §§goto(addr319);
                                                                  }
                                                               }
                                                               §§goto(addr297);
                                                            }
                                                         }
                                                         §§goto(addr297);
                                                      }
                                                      §§goto(addr261);
                                                   }
                                                   §§goto(addr206);
                                                }
                                                §§goto(addr188);
                                             }
                                             §§pop().§@"§(§§pop() == §"c§.§,p§);
                                             this.§[!C§ = param3;
                                             §§goto(addr167);
                                          }
                                       }
                                       §§goto(addr158);
                                    }
                                    §§goto(addr134);
                                 }
                                 §§goto(addr125);
                              }
                              §§goto(addr158);
                           }
                           §§goto(addr167);
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr94);
                  }
                  §§goto(addr167);
               }
               §§goto(addr75);
            }
            §§goto(addr107);
         }
         §§goto(addr94);
      }
      
      public static function §6!&§(param1:int, param2:§%h§, param3:String = "") : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(param2 == null)
            {
               if(!(_loc6_ && §;!%§))
               {
                  return;
               }
            }
         }
         var _loc4_:String;
         §§push(_loc4_ = param2.§,!?§[param1]);
         if(_loc5_)
         {
            if(§§pop().length > 0)
            {
               if(!_loc6_)
               {
                  §§push(param3);
                  if(_loc5_ || param3)
                  {
                     if(§§pop().length <= 0)
                     {
                        if(!(_loc6_ && §;!%§))
                        {
                           §§push(param2.§3_§);
                           if(_loc5_ || param1)
                           {
                           }
                        }
                        §§goto(addr91);
                     }
                     §,!F§.§!!C§(_loc4_,param3);
                  }
                  §§goto(addr91);
               }
            }
            §§goto(addr91);
         }
         addr91:
         param3 = §§pop();
         if(_loc6_)
         {
         }
      }
      
      public static function § Z§(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(360);
         §§push(param1);
         if(_loc3_ || §;!%§)
         {
            §§push(180);
            if(_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(_loc3_ || param1)
               {
                  §§push(§§pop() / Math.PI);
                  if(_loc3_ || §;!%§)
                  {
                     addr67:
                     §§push(§§pop() % 360);
                  }
                  §§push(§§pop() - §§pop());
                  if(_loc3_)
                  {
                     §§push(§§pop() % 360);
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr67);
      }
      
      public static function §;!E§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(360);
         §§push(param1);
         if(_loc4_)
         {
            §§push(§§pop() % 360);
         }
         §§push(§§pop() - §§pop());
         if(!(_loc3_ && _loc2_))
         {
            §§push(§§pop() / (180 / Math.PI));
            if(_loc4_)
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
         return this.§,!7§;
      }
      
      public function get x() : Number
      {
         return this.§-`§;
      }
      
      public function get y() : Number
      {
         return this.§4J§;
      }
      
      public function get scale() : Number
      {
         return this.§-_§;
      }
      
      public function get front() : Boolean
      {
         return this.§6n§;
      }
      
      public function get §return§() : Number
      {
         return this.§8!$§.GetPosition().x;
      }
      
      public function get §[n§() : Number
      {
         return this.§8!$§.GetPosition().y;
      }
      
      public function get §;!+§() : each
      {
         return this.§4>§;
      }
      
      public function get §1k§() : Boolean
      {
         return this.§>^§ >= 0;
      }
      
      public function get container() : §@H§
      {
         return this.§?!@§;
      }
      
      public function get §[!$§() : Boolean
      {
         return this.§<>§;
      }
      
      public function set §[!$§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§<>§ = param1;
         }
      }
      
      public function set §[X§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§9m§ = param1;
         }
      }
      
      public function set §`t§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§;!0§.§`t§ = param1;
         }
      }
      
      public function get §`t§() : uint
      {
         return this.§;!0§.§`t§;
      }
      
      public function get §?Z§() : Boolean
      {
         return this.§4l§;
      }
      
      public function set §?Z§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§4l§ = param1;
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
         return this.§+!$§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§+!$§ = param1;
         }
      }
      
      public function §?!4§(param1:b2FilterData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§!^§);
            if(!_loc3_)
            {
               if(§§pop())
               {
                  if(_loc2_)
                  {
                     addr27:
                     this.§!^§.SetFilterData(param1);
                  }
               }
               return;
            }
         }
         §§goto(addr27);
      }
      
      protected function §4!8§(param1:String) : int
      {
         return §<!6§.§4!8§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2BodyDef = new b2BodyDef();
         §§push(_loc3_.position);
         if(!(_loc4_ && _loc3_))
         {
            §§push(param1);
            if(_loc5_)
            {
               §§pop().x = §§pop();
               if(!(_loc4_ && _loc3_))
               {
                  addr54:
                  _loc3_.position.y = param2;
                  _loc3_.type = this.§4>§.§"7§();
                  if(_loc5_ || this)
                  {
                     _loc3_.allowSleep = true;
                     if(!(_loc4_ && param1))
                     {
                        _loc3_.active = true;
                        addr90:
                        _loc3_.awake = true;
                        _loc3_.angularDamping = 1;
                        if(!_loc4_)
                        {
                           _loc3_.bullet = false;
                        }
                     }
                     return _loc3_;
                  }
               }
               §§goto(addr90);
            }
         }
         §§goto(addr54);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§[!C§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     addr37:
                     this.§[!C§.DestroyBody(this.§'[§());
                     this.§[!C§ = null;
                     this.§;S§.dispose();
                     addr43:
                     if(_loc1_ || _loc2_)
                     {
                        §§push(this.§,!7§);
                        if(!(_loc2_ && _loc2_))
                        {
                           if(§§pop())
                           {
                              §§goto(addr110);
                           }
                           addr105:
                           this.§!^§ = null;
                           if(_loc2_)
                           {
                           }
                           §§goto(addr110);
                        }
                        §§pop().dispose();
                        if(!(_loc2_ && _loc1_))
                        {
                           this.§,!7§ = null;
                           if(!_loc1_)
                           {
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr115);
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr115);
               }
               §§goto(addr43);
            }
            §§goto(addr37);
         }
         addr110:
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§,!7§);
         }
         this.§&B§ = null;
         if(!_loc2_)
         {
            addr115:
            this.§4>§ = null;
         }
      }
      
      public function §=!<§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§'[§());
            §§push(360);
            §§push(param1);
            if(!_loc2_)
            {
               §§push(§§pop() % 360);
            }
            §§push(§§pop() - §§pop());
            if(!_loc2_)
            {
               §§push(§§pop() / (180 / Math.PI));
            }
            §§pop().SetAngle(§§pop());
         }
      }
      
      public function §>8§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(360);
         §§push(this.§'[§().GetAngle());
         if(!_loc1_)
         {
            §§push(180);
            if(!_loc1_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc1_ && _loc1_))
               {
                  addr54:
                  §§push(§§pop() / Math.PI);
                  if(_loc2_ || this)
                  {
                     addr65:
                     §§push(§§pop() % 360);
                  }
               }
               §§push(§§pop() - §§pop());
               if(_loc2_ || this)
               {
                  §§push(§§pop() % 360);
               }
               return §§pop();
            }
            §§goto(addr65);
         }
         §§goto(addr54);
      }
      
      public function §'!0§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            this.§'[§().SetLinearVelocity(param1);
            if(!_loc5_)
            {
               §§push(param2);
               if(_loc4_ || param1)
               {
                  if(§§pop())
                  {
                     if(!_loc5_)
                     {
                        addr60:
                        this.§0!8§();
                        if(!_loc5_)
                        {
                           addr64:
                           if(param3)
                           {
                              if(_loc4_)
                              {
                                 addr68:
                                 this.§`!3§();
                              }
                           }
                        }
                        §§goto(addr68);
                     }
                     return;
                  }
               }
               §§goto(addr64);
            }
            §§goto(addr68);
         }
         §§goto(addr60);
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§!^§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param2)
         {
            §§push(this.§'[§());
            if(_loc6_)
            {
               §§push(§§pop().GetPosition());
               if(!(_loc5_ && param1))
               {
                  §§push(§§pop().x);
                  if(!(_loc5_ && param2))
                  {
                     §§push(param3);
                     if(_loc6_ || param3)
                     {
                        §§push(§§pop() >= §§pop());
                        if(!_loc5_)
                        {
                           §§push(§§pop());
                           if(!(_loc5_ && param2))
                           {
                              if(§§pop())
                              {
                                 §§pop();
                                 if(!_loc5_)
                                 {
                                    §§push(this.§'[§());
                                    if(_loc6_ || param2)
                                    {
                                       §§push(§§pop().GetPosition());
                                       if(_loc6_)
                                       {
                                          §§push(§§pop().x);
                                          if(!_loc5_)
                                          {
                                             §§push(param4);
                                             if(!_loc5_)
                                             {
                                                §§push(§§pop() <= §§pop());
                                                if(!(_loc5_ && param3))
                                                {
                                                   addr103:
                                                   §§push(§§pop());
                                                   if(_loc6_ || param2)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§pop();
                                                         if(!_loc5_)
                                                         {
                                                            addr115:
                                                            §§push(this.§'[§());
                                                            if(_loc6_)
                                                            {
                                                               addr119:
                                                               §§push(§§pop().GetPosition());
                                                               if(!(_loc5_ && param2))
                                                               {
                                                                  addr137:
                                                                  §§push(§§pop().y);
                                                                  if(_loc6_ || param2)
                                                                  {
                                                                     addr145:
                                                                     §§push(param1);
                                                                     if(!(_loc5_ && param1))
                                                                     {
                                                                        return §§pop() >= §§pop() && this.§'[§().GetPosition().y <= param2;
                                                                        addr154:
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr162);
                                                      }
                                                   }
                                                   §§goto(addr154);
                                                }
                                                §§goto(addr156);
                                             }
                                             §§goto(addr154);
                                          }
                                          §§goto(addr145);
                                       }
                                    }
                                    §§goto(addr156);
                                 }
                                 §§goto(addr115);
                              }
                              §§goto(addr103);
                           }
                           §§goto(addr154);
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr154);
                  }
                  §§goto(addr145);
               }
               §§goto(addr137);
            }
            §§goto(addr119);
         }
         §§goto(addr115);
      }
      
      public function § =§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§&B§ = param1;
         }
      }
      
      public function §`§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§&B§)
            {
               if(_loc2_)
               {
                  addr24:
                  this.§'!0§(this.§&B§,false);
                  if(!_loc1_)
                  {
                     this.§&B§ = null;
                  }
               }
            }
            return;
         }
         §§goto(addr24);
      }
      
      public function §0!8§(param1:b2Vec2 = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(!param1)
            {
               if(!_loc3_)
               {
                  addr27:
                  §§push(this.§'[§());
                  if(!_loc3_)
                  {
                     param1 = §§pop().GetLinearVelocity();
                     addr34:
                     §§push(param1.x);
                     if(_loc2_)
                     {
                        §§push(0);
                        if(!_loc3_)
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc2_ || this)
                           {
                              if(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    §§goto(addr63);
                                 }
                              }
                              §§goto(addr70);
                           }
                           addr63:
                           §§pop();
                           if(!_loc3_)
                           {
                              addr70:
                              if(param1.y == 0)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§push(this.§'[§());
                                    if(_loc2_ || this)
                                    {
                                       §§pop().SetAngularVelocity(0);
                                       if(_loc3_ && _loc2_)
                                       {
                                       }
                                    }
                                    else
                                    {
                                       addr109:
                                       §§pop().SetAngularVelocity(Math.atan2(param1.x,param1.y));
                                    }
                                 }
                              }
                              else
                              {
                                 §§goto(addr109);
                                 §§push(this.§'[§());
                              }
                              §§goto(addr109);
                           }
                           return;
                        }
                     }
                     §§goto(addr70);
                  }
                  §§goto(addr109);
               }
               §§goto(addr70);
            }
            §§goto(addr34);
         }
         §§goto(addr27);
      }
      
      public function §`!3§(param1:b2Vec2 = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            if(!param1)
            {
               param1 = this.§'[§().GetLinearVelocity();
               addr25:
            }
            §§push(Math.atan2(-param1.y,param1.x) * (180 / Math.PI));
            if(_loc3_ || param1)
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(!(_loc4_ && _loc2_))
            {
               this.§=!<§(_loc2_);
            }
            return;
         }
         §§goto(addr25);
      }
      
      public function §<q§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§'[§().SetAngularVelocity(param1);
         }
      }
      
      public function §'[§() : b2Body
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§!^§);
            if(!(_loc1_ && this))
            {
               if(§§pop() != null)
               {
                  if(!(_loc1_ && _loc1_))
                  {
                     §§push(this.§!^§);
                  }
                  else
                  {
                     §§goto(addr51);
                  }
               }
               §§goto(addr51);
            }
            return §§pop().GetBody();
         }
         addr51:
         return null;
      }
      
      public function §5&§(param1:Number = -9999, param2:Number = -9999) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            if(param1 != -9999)
            {
               if(!_loc3_)
               {
                  this.§-`§ = param1;
                  if(!_loc3_)
                  {
                     this.§4J§ = param2;
                     if(!_loc3_)
                     {
                        addr39:
                        §§push(this.§'[§());
                        if(_loc4_ || this)
                        {
                           §§push(§§pop().GetPosition());
                           if(!_loc3_)
                           {
                              §§push(this.§-`§);
                              if(!(_loc3_ && this))
                              {
                                 §§push(§ !§.§`J§);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc3_ && param2))
                                    {
                                       addr92:
                                       §§pop().x = §§pop();
                                       §§goto(addr111);
                                    }
                                    §§pop().y = §§pop();
                                    addr111:
                                    if(!_loc3_)
                                    {
                                       addr98:
                                       §§push(this.§'[§().GetPosition());
                                       §§push(this.§4J§);
                                       if(_loc4_ || param1)
                                       {
                                          addr109:
                                          §§push(§§pop() * § !§.§`J§);
                                       }
                                    }
                                    return;
                                 }
                                 §§goto(addr109);
                              }
                              §§goto(addr92);
                           }
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr92);
                  }
               }
            }
         }
         §§goto(addr39);
      }
      
      public function §]C§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:Number = NaN;
         var _loc3_:* = false;
         if(_loc6_ || this)
         {
            if(this.§[!D§)
            {
               §§push(true);
               if(!(_loc5_ && this))
               {
                  _loc3_ = §§pop();
                  if(!(_loc5_ && this))
                  {
                     this.§[!D§ = false;
                     addr50:
                     if(this.updateSpecialAnimation(param2))
                     {
                        if(_loc6_)
                        {
                           _loc3_ = true;
                           if(!(_loc5_ && _loc3_))
                           {
                              addr65:
                              §§push(this.updateFlyingFrameAnimations(param2));
                              if(!_loc5_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc6_ || _loc3_)
                                    {
                                       §§push(true);
                                       if(_loc6_ || param1)
                                       {
                                          _loc3_ = §§pop();
                                          addr87:
                                          §§push(this.updateScreamingFrameAnimations(param2));
                                          if(!_loc5_)
                                          {
                                             if(§§pop())
                                             {
                                                §§push(true);
                                                if(_loc6_ || param1)
                                                {
                                                   _loc3_ = §§pop();
                                                   addr102:
                                                   §§push(this.updateBlinkingFrameAnimations(param2));
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(_loc6_ || _loc3_)
                                                         {
                                                            addr121:
                                                            _loc3_ = true;
                                                            if(_loc5_ && _loc3_)
                                                            {
                                                            }
                                                            addr226:
                                                            §§push(this.§;S§);
                                                            if(_loc6_)
                                                            {
                                                               addr230:
                                                               §§pop().§1=§.blurX = _loc4_;
                                                               if(!_loc5_)
                                                               {
                                                                  §§push(this.§;S§);
                                                                  if(_loc6_ || this)
                                                                  {
                                                                     addr244:
                                                                     §§pop().§1=§.blurY = _loc4_;
                                                                     §§push(this.§;S§);
                                                                  }
                                                                  §§pop().§&&§(param2);
                                                                  if(!_loc6_)
                                                                  {
                                                                  }
                                                                  addr260:
                                                                  §§push(this.§,!7§);
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     §§pop().x = Math.round(this.§-`§);
                                                                     if(!(_loc5_ && param2))
                                                                     {
                                                                        addr296:
                                                                        §§push(this.§,!7§);
                                                                        if(_loc6_ || param1)
                                                                        {
                                                                           addr315:
                                                                           §§pop().y = Math.round(this.§4J§);
                                                                           §§push(this.§,!7§);
                                                                        }
                                                                        §§push(this.§&k§);
                                                                        if(_loc6_)
                                                                        {
                                                                           §§push(§§pop() / 180);
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              §§push(§§pop() * Math.PI);
                                                                           }
                                                                        }
                                                                        §§pop().rotation = §§pop();
                                                                     }
                                                                     §§goto(addr339);
                                                                  }
                                                                  §§goto(addr315);
                                                                  addr260:
                                                               }
                                                               if(§@@§)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     this.§<G§(param1);
                                                                  }
                                                                  §§goto(addr260);
                                                               }
                                                               else
                                                               {
                                                                  this.§&k§ = this.§^6§;
                                                                  if(_loc6_)
                                                                  {
                                                                     addr267:
                                                                     this.§-`§ = this.§3D§;
                                                                     this.§4J§ = this.§3!-§;
                                                                     §§goto(addr260);
                                                                  }
                                                               }
                                                               §§goto(addr296);
                                                            }
                                                            §§goto(addr244);
                                                         }
                                                         §§goto(addr267);
                                                      }
                                                      §§goto(addr130);
                                                   }
                                                }
                                                §§goto(addr187);
                                             }
                                             §§goto(addr102);
                                          }
                                          §§goto(addr230);
                                       }
                                       §§goto(addr175);
                                    }
                                    §§goto(addr260);
                                 }
                                 §§goto(addr87);
                              }
                              §§goto(addr121);
                           }
                           §§goto(addr315);
                        }
                        §§goto(addr267);
                     }
                     §§goto(addr65);
                  }
                  §§goto(addr260);
               }
               addr130:
               if(_loc3_)
               {
                  §§push(this.§;S§);
                  if(!_loc5_)
                  {
                     §§pop().§;?§();
                     if(_loc6_ || _loc3_)
                     {
                        §§goto(addr143);
                     }
                     §§goto(addr315);
                  }
                  §§goto(addr230);
               }
               addr143:
               §§push(this.§4Y§);
               if(_loc6_ || _loc3_)
               {
                  §§push(§§pop() > 1);
                  if(_loc6_ || param2)
                  {
                     if(§§pop())
                     {
                        if(!_loc5_)
                        {
                           addr175:
                           §§pop();
                           §§push(this.§;S§);
                           if(_loc6_ || this)
                           {
                              addr187:
                              if(§§pop().§1=§)
                              {
                                 if(!(_loc5_ && param1))
                                 {
                                    §§push(4);
                                    §§push(this.§;S§.§1=§.blurX - 4);
                                    if(_loc6_)
                                    {
                                       §§push(param2);
                                       if(!(_loc5_ && param2))
                                       {
                                          §§push(§§pop() / 20);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc6_)
                                       {
                                          addr217:
                                          §§push(§§pop() % 28);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(_loc5_)
                                       {
                                       }
                                       §§goto(addr223);
                                    }
                                    §§goto(addr217);
                                 }
                                 §§goto(addr315);
                              }
                              §§goto(addr244);
                           }
                        }
                        §§goto(addr230);
                     }
                     §§goto(addr187);
                  }
                  §§goto(addr230);
               }
               addr223:
               _loc4_ = §§pop();
               if(!_loc5_)
               {
                  §§goto(addr226);
               }
               addr339:
               return;
            }
            §§goto(addr50);
         }
         §§goto(addr121);
      }
      
      public function §'=§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§'[§().GetPosition().x);
         if(!(_loc4_ && _loc1_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(this.§'[§().GetPosition().y);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         this.§&!;§ = this.§^6§;
         this.§#v§ = this.§3D§;
         this.§><§ = this.§3!-§;
         §§push(this);
         §§push(this.§'[§().GetAngle());
         if(!(_loc4_ && _loc2_))
         {
            §§push(180);
            if(_loc3_)
            {
               addr91:
               §§push(§§pop() * (§§pop() / Math.PI));
               if(!_loc4_)
               {
                  §§push(360);
               }
               §§pop().§^6§ = §§pop();
               §§push(this);
               §§push(_loc1_);
               if(!_loc4_)
               {
                  §§push(§§pop() / § !§.§`J§);
               }
               §§pop().§3D§ = §§pop();
               §§push(this);
               §§push(_loc2_);
               if(!_loc4_)
               {
                  §§push(§§pop() / § !§.§`J§);
               }
               §§pop().§3!-§ = §§pop();
               §§push(this.§;!0§);
               if(_loc3_)
               {
                  §§pop().§^x§();
                  if(!_loc4_)
                  {
                     addr117:
                     this.§;!0§.get(this.§'[§());
                  }
                  return;
               }
               §§goto(addr117);
            }
            §§push(§§pop() % §§pop());
         }
         §§goto(addr91);
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
      
      public function §<G§(param1:Number, param2:Number = -1) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            §§push(param1);
            if(!(_loc4_ && _loc3_))
            {
               if(§§pop() > 1e-9)
               {
                  if(!_loc4_)
                  {
                     §§push(§7!+§);
                     §§push("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = ");
                     if(!(_loc4_ && param1))
                     {
                        §§push(§§pop() + param1);
                        if(!(_loc4_ && param2))
                        {
                           §§push(§§pop() + " overriding to 0");
                        }
                     }
                     §§pop().log(§§pop());
                  }
                  addr311:
                  if(param1 == 0)
                  {
                     this.§&k§ = this.§^6§;
                     addr315:
                     if(!(_loc3_ || param2))
                     {
                        addr423:
                     }
                  }
                  else
                  {
                     §§push(this.§&!;§);
                     if(_loc3_ || param1)
                     {
                        §§push(§§pop() > this.§^6§);
                        if(!(_loc4_ && param2))
                        {
                           if(§§pop())
                           {
                              if(_loc3_)
                              {
                                 §§pop();
                                 §§push(this.§&!;§);
                                 if(!_loc4_)
                                 {
                                    addr365:
                                    §§push(§§pop() - this.§^6§);
                                    if(!_loc4_)
                                    {
                                       §§push(§§pop() <= 180);
                                       if(!(_loc4_ && param1))
                                       {
                                          addr379:
                                          if(§§pop())
                                          {
                                             if(!_loc4_)
                                             {
                                                addr382:
                                                §§push(this);
                                                §§push(this.§^6§);
                                                if(_loc3_ || _loc3_)
                                                {
                                                   §§push(param1);
                                                   if(!(_loc4_ && this))
                                                   {
                                                      §§push(this.§&!;§);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§§pop() - this.§^6§);
                                                         if(!(_loc4_ && param1))
                                                         {
                                                            addr419:
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc3_)
                                                            {
                                                               §§push(param2);
                                                            }
                                                            §§pop().§&k§ = §§pop() + §§pop();
                                                            if(_loc3_)
                                                            {
                                                               §§goto(addr423);
                                                            }
                                                            else
                                                            {
                                                               addr605:
                                                               if(this.§^6§ - this.§&!;§ > 180)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     §§goto(addr615);
                                                                  }
                                                               }
                                                               §§goto(addr656);
                                                            }
                                                         }
                                                         §§goto(addr419);
                                                         §§push(§§pop() / §§pop());
                                                      }
                                                   }
                                                }
                                                §§goto(addr419);
                                             }
                                             §§goto(addr615);
                                          }
                                          else
                                          {
                                             §§push(this.§&!;§);
                                             if(_loc3_ || param2)
                                             {
                                                §§push(this.§^6§);
                                                if(_loc3_ || _loc3_)
                                                {
                                                   addr442:
                                                   §§push(§§pop() > §§pop());
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         §§pop();
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            addr464:
                                                            §§push(this.§&!;§ - this.§^6§);
                                                            if(!(_loc4_ && param1))
                                                            {
                                                               addr472:
                                                               §§push(§§pop() > 180);
                                                               if(_loc3_ || this)
                                                               {
                                                                  addr481:
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc4_ && _loc3_))
                                                                     {
                                                                        addr489:
                                                                        §§push(this);
                                                                        §§push(this.§^6§);
                                                                        if(!_loc4_)
                                                                        {
                                                                           §§push(param1);
                                                                           if(!_loc4_)
                                                                           {
                                                                              §§push(this.§&!;§);
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(§§pop() - 360);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§push(§§pop() - this.§^6§);
                                                                                    if(_loc3_ || _loc3_)
                                                                                    {
                                                                                    }
                                                                                    addr526:
                                                                                    §§pop().§&k§ = §§pop() + §§pop() / §§pop();
                                                                                    addr524:
                                                                                    §§goto(addr656);
                                                                                 }
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    addr523:
                                                                                    §§goto(addr524);
                                                                                    §§push(param2);
                                                                                 }
                                                                              }
                                                                              §§goto(addr524);
                                                                           }
                                                                           §§goto(addr523);
                                                                        }
                                                                        §§goto(addr526);
                                                                     }
                                                                     §§goto(addr656);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§push(this.§&!;§);
                                                                     if(!(_loc4_ && param2))
                                                                     {
                                                                        §§push(this.§^6§);
                                                                        if(_loc3_)
                                                                        {
                                                                           addr543:
                                                                           §§push(§§pop() < §§pop());
                                                                           if(§§pop() < §§pop())
                                                                           {
                                                                              §§pop();
                                                                              if(_loc3_)
                                                                              {
                                                                                 §§push(this.§^6§);
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr551:
                                                                                    §§push(this.§&!;§);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          addr560:
                                                                                          if(§§pop() <= 180)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                addr563:
                                                                                                §§push(this);
                                                                                                §§push(this.§^6§);
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§push(param1);
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §§push(this.§&!;§);
                                                                                                      if(_loc3_ || this)
                                                                                                      {
                                                                                                         §§push(§§pop() - this.§^6§);
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            addr590:
                                                                                                            addr591:
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc3_)
                                                                                                            {
                                                                                                               §§push(param2);
                                                                                                            }
                                                                                                            §§pop().§&k§ = §§pop() + §§pop();
                                                                                                            §§goto(addr656);
                                                                                                         }
                                                                                                      }
                                                                                                      §§push(§§pop() / §§pop());
                                                                                                   }
                                                                                                   §§goto(addr590);
                                                                                                }
                                                                                                §§goto(addr591);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr615);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr595:
                                                                                             §§push(this.§&!;§);
                                                                                             §§push(this.§^6§);
                                                                                          }
                                                                                          §§goto(addr656);
                                                                                       }
                                                                                       §§goto(addr595);
                                                                                    }
                                                                                    §§push(§§pop() < §§pop());
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       addr600:
                                                                                       if(§§pop())
                                                                                       {
                                                                                          §§pop();
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§goto(addr605);
                                                                                          }
                                                                                          addr615:
                                                                                          §§push(this);
                                                                                          §§push(this.§^6§);
                                                                                          if(_loc3_ || _loc3_)
                                                                                          {
                                                                                             §§push(param1);
                                                                                             if(_loc3_ || param1)
                                                                                             {
                                                                                                §§push(this.§&!;§);
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §§push(§§pop() + 360);
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      §§push(§§pop() - this.§^6§);
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         §§goto(addr656);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr660);
                                                                                                }
                                                                                                addr656:
                                                                                                §§goto(addr662);
                                                                                             }
                                                                                             §§goto(addr660);
                                                                                          }
                                                                                          addr662:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             addr660:
                                                                                             §§push(§§pop() / param2);
                                                                                          }
                                                                                          §§pop().§&k§ = §§pop() + §§pop();
                                                                                          return;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr605);
                                                                              }
                                                                              §§goto(addr590);
                                                                           }
                                                                           §§goto(addr560);
                                                                        }
                                                                        §§goto(addr605);
                                                                     }
                                                                     §§goto(addr551);
                                                                  }
                                                               }
                                                               §§goto(addr600);
                                                            }
                                                            §§goto(addr595);
                                                         }
                                                         §§goto(addr590);
                                                      }
                                                      §§goto(addr481);
                                                   }
                                                   §§goto(addr605);
                                                }
                                                §§goto(addr464);
                                             }
                                             §§goto(addr472);
                                          }
                                       }
                                    }
                                    §§goto(addr560);
                                 }
                                 §§goto(addr551);
                              }
                           }
                           §§goto(addr379);
                        }
                        §§goto(addr600);
                     }
                     §§goto(addr560);
                  }
                  §§goto(addr656);
               }
               if(param2 < 0)
               {
                  if(_loc3_ || param2)
                  {
                     §§push(this.§?!@§.§?V§.§'O§.§-!8§);
                     if(_loc3_)
                     {
                        §§push(1000);
                        if(!_loc4_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc4_)
                           {
                              param2 = §§pop();
                              addr78:
                              §§push(param1 * -1);
                              if(!(_loc4_ && param1))
                              {
                                 §§push(Number(§§pop()));
                                 if(!(_loc4_ && param1))
                                 {
                                    param1 = §§pop();
                                    §§push(this.§3D§ == this.§#v§);
                                    if(_loc3_ || param2)
                                    {
                                       §§push(§§pop());
                                       if(_loc3_)
                                       {
                                          if(!§§pop())
                                          {
                                             §§pop();
                                             if(!(_loc4_ && param1))
                                             {
                                                §§push(param1 == 0);
                                                if(!(_loc4_ && param1))
                                                {
                                                   addr129:
                                                   if(§§pop())
                                                   {
                                                      this.§@A§ = 0;
                                                      addr133:
                                                      this.§-`§ = this.§3D§;
                                                      if(_loc3_ || param1)
                                                      {
                                                         addr192:
                                                         §§push(this.§3!-§);
                                                         §§push(this.§><§);
                                                         if(!(_loc4_ && this))
                                                         {
                                                            addr204:
                                                            §§push(§§pop() == §§pop());
                                                            if(!(§§pop() == §§pop()))
                                                            {
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  §§pop();
                                                                  §§push(param1);
                                                                  if(_loc3_ || param1)
                                                                  {
                                                                     addr224:
                                                                     if(§§pop() == 0)
                                                                     {
                                                                        if(!_loc4_)
                                                                        {
                                                                           this.§1!3§ = 0;
                                                                           this.§4J§ = this.§3!-§;
                                                                           addr287:
                                                                           §§push(this.§^6§);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(§§pop() == this.§&!;§);
                                                                              §§push(§§pop() == this.§&!;§);
                                                                              if(_loc3_ || param2)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    addr303:
                                                                                    §§pop();
                                                                                    if(_loc3_ || param2)
                                                                                    {
                                                                                       §§goto(addr311);
                                                                                    }
                                                                                    §§goto(addr315);
                                                                                 }
                                                                                 §§goto(addr311);
                                                                              }
                                                                              §§goto(addr543);
                                                                           }
                                                                           §§goto(addr472);
                                                                        }
                                                                        §§goto(addr382);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(this);
                                                                        §§push(param1);
                                                                        if(_loc3_ || param2)
                                                                        {
                                                                           §§push(this.§><§);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§push(§§pop() - this.§3!-§);
                                                                              if(!(_loc4_ && param2))
                                                                              {
                                                                                 addr268:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc3_ || param1)
                                                                                 {
                                                                                    §§push(param2);
                                                                                 }
                                                                                 §§pop().§1!3§ = §§pop();
                                                                                 if(_loc3_ || param2)
                                                                                 {
                                                                                    §§push(this);
                                                                                    §§push(this.§3!-§);
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§push(§§pop() + this.§1!3§);
                                                                                    }
                                                                                    §§pop().§4J§ = §§pop();
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       §§goto(addr287);
                                                                                    }
                                                                                    §§goto(addr656);
                                                                                 }
                                                                                 §§goto(addr489);
                                                                              }
                                                                           }
                                                                           §§push(§§pop() / §§pop());
                                                                        }
                                                                        §§goto(addr268);
                                                                     }
                                                                  }
                                                                  §§goto(addr311);
                                                               }
                                                               §§goto(addr543);
                                                            }
                                                            §§goto(addr224);
                                                         }
                                                         §§goto(addr442);
                                                      }
                                                      §§goto(addr656);
                                                   }
                                                   else
                                                   {
                                                      §§push(this);
                                                      §§push(param1);
                                                      if(!(_loc4_ && param2))
                                                      {
                                                         §§push(this.§#v§);
                                                         if(!_loc4_)
                                                         {
                                                            §§push(§§pop() - this.§3D§);
                                                            if(_loc3_)
                                                            {
                                                               addr173:
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  §§push(param2);
                                                               }
                                                               §§pop().§@A§ = §§pop();
                                                               if(_loc3_)
                                                               {
                                                                  addr176:
                                                                  §§push(this);
                                                                  §§push(this.§3D§);
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(§§pop() + this.§@A§);
                                                                  }
                                                                  §§pop().§-`§ = §§pop();
                                                                  if(_loc3_ || param1)
                                                                  {
                                                                     §§goto(addr192);
                                                                  }
                                                                  §§goto(addr563);
                                                               }
                                                               §§goto(addr489);
                                                            }
                                                            §§goto(addr173);
                                                            §§push(§§pop() / §§pop());
                                                         }
                                                      }
                                                      §§goto(addr173);
                                                   }
                                                }
                                                §§goto(addr204);
                                             }
                                             §§goto(addr176);
                                          }
                                          §§goto(addr129);
                                       }
                                       §§goto(addr600);
                                    }
                                    §§goto(addr303);
                                 }
                                 §§goto(addr605);
                              }
                              §§goto(addr311);
                           }
                           §§goto(addr365);
                        }
                        §§goto(addr78);
                     }
                     §§goto(addr224);
                  }
                  §§goto(addr133);
               }
               §§goto(addr78);
            }
            §§goto(addr472);
         }
         §§goto(addr311);
      }
      
      public function get §3! §() : Point
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(!§@@§)
            {
            }
         }
         return null;
      }
      
      public function §-!+§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§@%§);
            if(_loc2_ || _loc1_)
            {
               §§push(each.§=7§);
               if(!(_loc1_ && _loc1_))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(_loc2_)
                        {
                           addr69:
                           §§pop();
                           §§push(this.§@%§ == each.§!!N§);
                        }
                     }
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §72§() : Boolean
      {
         return this.§@%§ == each.§,U§;
      }
      
      public function §"!"§() : Boolean
      {
         return this.§@%§ == each.§=!'§;
      }
      
      public function §@!-§() : Boolean
      {
         return this.§@%§ == each.§!!N§;
      }
      
      public function §;8§() : Boolean
      {
         return false;
      }
      
      public function isTexture() : Boolean
      {
         return this.§@%§ == each.§6Z§;
      }
      
      public function isGround() : Boolean
      {
         return this.§@%§ == each.§@i§;
      }
      
      public function §-A§() : Boolean
      {
         return this.§@%§ == each.§`V§;
      }
      
      public function §?8§() : Boolean
      {
         return this.§@%§ == each.§9R§;
      }
      
      public function §&d§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§1>§);
            if(!(_loc1_ && _loc2_))
            {
               §§push("MISC_EXPLOSIVE_TNT");
               if(!_loc1_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           §§pop();
                           if(_loc2_)
                           {
                              §§goto(addr69);
                           }
                           §§goto(addr89);
                        }
                        §§goto(addr90);
                     }
                     §§goto(addr72);
                  }
                  §§goto(addr90);
               }
               addr69:
               §§goto(addr68);
            }
            addr68:
            §§goto(addr66);
         }
         addr66:
         §§push(this.§1>§ == "POWERUP_BOMB");
         if(_loc2_)
         {
            addr72:
            if(§§pop())
            {
               if(!(_loc1_ && _loc2_))
               {
                  §§push(true);
                  if(!(_loc2_ || this))
                  {
                     §§goto(addr90);
                  }
               }
               else
               {
                  addr89:
                  addr90:
                  return §§pop();
                  §§push(false);
               }
               §§goto(addr90);
            }
            §§goto(addr89);
         }
         return §§pop();
      }
      
      public function §'<§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(Boolean(this.§72§()));
            §§push(Boolean(this.§72§()));
            if(_loc2_ || _loc1_)
            {
               if(!§§pop())
               {
                  §§pop();
                  if(!_loc1_)
                  {
                     addr49:
                     §§push(Boolean(this.§-A§()));
                     if(!_loc1_)
                     {
                        addr64:
                        §§push(§§pop());
                        if(_loc2_)
                        {
                           addr67:
                           if(!§§pop())
                           {
                              if(!_loc1_)
                              {
                                 §§pop();
                                 if(_loc2_)
                                 {
                                    addr75:
                                    §§push(Boolean(this.§?8§()));
                                    if(Boolean(this.§?8§()))
                                    {
                                       if(_loc2_ || _loc1_)
                                       {
                                          §§pop();
                                          addr86:
                                          §§push(this.§?Z§);
                                          if(_loc1_)
                                          {
                                          }
                                          §§goto(addr91);
                                       }
                                       addr91:
                                       return §§pop();
                                       §§push(!§§pop());
                                    }
                                    §§goto(addr91);
                                 }
                                 §§goto(addr86);
                              }
                           }
                        }
                        §§goto(addr75);
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr75);
               }
               §§goto(addr64);
            }
            §§goto(addr67);
         }
         §§goto(addr49);
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §8!A§() : Number
      {
         return Number(Math.sqrt(this.§'[§().GetLinearVelocity().x * this.§'[§().GetLinearVelocity().x + this.§'[§().GetLinearVelocity().y * this.§'[§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         if(!(_loc9_ && param1))
         {
            §§push(this.§"!"§());
            if(!_loc9_)
            {
               if(§§pop())
               {
                  §§push(this.§`Y§);
                  if(_loc10_ || this)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  §§push(this.§?!@§);
                  if(!_loc9_)
                  {
                     if(!§§pop().§],§())
                     {
                        §§push(this.§`Y§);
                        if(_loc10_)
                        {
                           return §§pop();
                        }
                        §§goto(addr169);
                     }
                     else
                     {
                        §§push(this.§>^§);
                        if(_loc10_ || param3)
                        {
                           §§push(0);
                           if(!(_loc9_ && param2))
                           {
                              §§push(§§pop() < §§pop());
                              §§push(§§pop() < §§pop());
                              if(_loc10_ || param2)
                              {
                                 if(§§pop())
                                 {
                                    if(!_loc9_)
                                    {
                                       §§pop();
                                       §§push(param6);
                                       if(!(_loc9_ && param1))
                                       {
                                          addr102:
                                          if(!§§pop())
                                          {
                                             §§push(param1);
                                             §§push(30);
                                             if(_loc10_ || param2)
                                             {
                                                if(§§pop() > §§pop())
                                                {
                                                   this.§,H§(§%h§.§"h§);
                                                   if(!(_loc9_ && param1))
                                                   {
                                                      addr167:
                                                      addr169:
                                                      return §§pop();
                                                      §§push(this.§`Y§);
                                                   }
                                                }
                                                else
                                                {
                                                   §§push(param1);
                                                   if(!_loc9_)
                                                   {
                                                      §§push(12);
                                                      if(_loc10_ || param1)
                                                      {
                                                         addr136:
                                                         if(§§pop() > §§pop())
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               this.§,H§(§%h§.§=c§);
                                                               if(!(_loc9_ && this))
                                                               {
                                                                  §§goto(addr167);
                                                               }
                                                               else
                                                               {
                                                                  addr209:
                                                                  this.§,H§(§%h§.§+G§);
                                                                  if(_loc10_ || param1)
                                                                  {
                                                                     addr220:
                                                                     §§push(Boolean(this.§-!+§()));
                                                                     if(_loc10_)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(_loc10_ || param1)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              addr234:
                                                                              §§pop();
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§push(this.§`Y§);
                                                                                 if(_loc10_)
                                                                                 {
                                                                                    §§push(this.§@!§);
                                                                                    if(_loc10_)
                                                                                    {
                                                                                       addr245:
                                                                                       §§push(§§pop() == §§pop());
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          addr248:
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§push(this);
                                                                                             §§push(this.§@!§);
                                                                                             if(!(_loc9_ && param3))
                                                                                             {
                                                                                                §§push(§§pop() - 1);
                                                                                             }
                                                                                             §§pop().§`Y§ = §§pop();
                                                                                          }
                                                                                          §§goto(addr273);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr490);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr279:
                                                                                       §§push(Number(§§pop() - §§pop()));
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          addr283:
                                                                                          param1 = §§pop();
                                                                                          addr284:
                                                                                          §§push(param2);
                                                                                          if(!(_loc9_ && param3))
                                                                                          {
                                                                                             addr292:
                                                                                             §§push(Boolean(§§pop()));
                                                                                             if(_loc10_ || this)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                if(!(_loc9_ && param2))
                                                                                                {
                                                                                                   addr308:
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(_loc10_ || param3)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         §§push(this.§'<§());
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            if(!(_loc9_ && param3))
                                                                                                            {
                                                                                                               addr329:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     addr332:
                                                                                                                     §§push(int(Math.min(this.§`Y§,int(param1))));
                                                                                                                     if(_loc10_)
                                                                                                                     {
                                                                                                                        _loc7_ = §§pop();
                                                                                                                        if(_loc10_ || param3)
                                                                                                                        {
                                                                                                                           §§push(§ !§.§6]§.getValue());
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * _loc7_);
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 addr359:
                                                                                                                                 §§push(int(§§pop()));
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    _loc8_ = §§pop();
                                                                                                                                    addr364:
                                                                                                                                    if(param5)
                                                                                                                                    {
                                                                                                                                       if(!(_loc9_ && param2))
                                                                                                                                       {
                                                                                                                                          §§push(_loc8_);
                                                                                                                                          if(_loc10_ || this)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * § !§.§2!B§);
                                                                                                                                             if(_loc10_)
                                                                                                                                             {
                                                                                                                                                addr386:
                                                                                                                                                _loc8_ = int(§§pop());
                                                                                                                                                §§push(this.§?!@§.§?V§);
                                                                                                                                                §§push(_loc8_);
                                                                                                                                                §§push(§0!'§.§36§);
                                                                                                                                                if(!(_loc9_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§push(this.§`Y§ > param1);
                                                                                                                                                   if(!(_loc9_ && param3))
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         if(_loc10_ || param2)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            addr421:
                                                                                                                                                            §§push(param3);
                                                                                                                                                            if(!_loc10_)
                                                                                                                                                            {
                                                                                                                                                            }
                                                                                                                                                            addr425:
                                                                                                                                                            §§pop().addScore(§§pop(),§§pop(),§§pop(),this.§'[§().GetPosition().x,this.§'[§().GetPosition().y,§<!6§.§-S§(this.§1>§));
                                                                                                                                                            §§push(param5);
                                                                                                                                                            if(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                               if(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  addr444:
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  if(_loc10_ || param2)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        addr453:
                                                                                                                                                                        §§pop();
                                                                                                                                                                        §§push(Boolean(this.§9m§));
                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                        }
                                                                                                                                                                        addr490:
                                                                                                                                                                        §§goto(addr489);
                                                                                                                                                                     }
                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this);
                                                                                                                                                                        §§push(this.§`Y§);
                                                                                                                                                                        if(!(_loc9_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() - param1);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().§`Y§ = §§pop();
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        addr460:
                                                                                                                                                                     }
                                                                                                                                                                     addr476:
                                                                                                                                                                     §§push(this.§`Y§);
                                                                                                                                                                     §§push(1);
                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        addr481:
                                                                                                                                                                        §§push(§§pop() < §§pop());
                                                                                                                                                                        if(§§pop() < §§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              addr484:
                                                                                                                                                                              §§pop();
                                                                                                                                                                              if(_loc10_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr487:
                                                                                                                                                                                 addr489:
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    addr491:
                                                                                                                                                                                    this.§`Y§ = 1;
                                                                                                                                                                                    if(!_loc10_)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr535);
                                                                                                                                                                                 }
                                                                                                                                                                                 if(this.§`Y§ < 1)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc10_)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.§`Y§ = 0;
                                                                                                                                                                                       §;!%§.§6!&§(§%h§.§"h§,this.§4>§.§2;§,"ChannelDestroyed");
                                                                                                                                                                                       addr505:
                                                                                                                                                                                       if(_loc9_ && this)
                                                                                                                                                                                       {
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr535);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    this.§,H§(§%h§.§=c§);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr535);
                                                                                                                                                                                 return this.§`Y§;
                                                                                                                                                                                 §§push(this.§-!+§());
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr491);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr490);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr481);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr453);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr490);
                                                                                                                                                         }
                                                                                                                                                         §§push(Boolean(§§pop()));
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr425);
                                                                                                                                                }
                                                                                                                                                §§goto(addr421);
                                                                                                                                             }
                                                                                                                                             §§goto(addr476);
                                                                                                                                          }
                                                                                                                                          §§goto(addr386);
                                                                                                                                       }
                                                                                                                                       §§goto(addr490);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr386);
                                                                                                                              }
                                                                                                                              §§goto(addr476);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr460);
                                                                                                                     }
                                                                                                                     §§goto(addr386);
                                                                                                                  }
                                                                                                                  §§goto(addr460);
                                                                                                               }
                                                                                                               §§goto(addr421);
                                                                                                            }
                                                                                                            §§goto(addr453);
                                                                                                         }
                                                                                                         §§goto(addr444);
                                                                                                      }
                                                                                                      §§goto(addr364);
                                                                                                   }
                                                                                                   §§goto(addr329);
                                                                                                }
                                                                                                §§goto(addr481);
                                                                                             }
                                                                                             §§goto(addr484);
                                                                                          }
                                                                                          §§goto(addr453);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr491);
                                                                                 }
                                                                                 addr273:
                                                                                 return this.§`Y§;
                                                                              }
                                                                              §§goto(addr332);
                                                                           }
                                                                           §§goto(addr248);
                                                                        }
                                                                        §§goto(addr481);
                                                                     }
                                                                     §§goto(addr490);
                                                                  }
                                                                  §§goto(addr284);
                                                               }
                                                            }
                                                            §§goto(addr491);
                                                         }
                                                         else
                                                         {
                                                            §§push(param1);
                                                            §§push(3);
                                                            if(_loc10_)
                                                            {
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  if(!(_loc9_ && param1))
                                                                  {
                                                                     this.§,H§(§%h§.§+G§);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr487);
                                                                  }
                                                               }
                                                               §§goto(addr167);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr481);
                                                            }
                                                         }
                                                         §§goto(addr481);
                                                      }
                                                      §§goto(addr490);
                                                   }
                                                   §§goto(addr359);
                                                }
                                                §§goto(addr421);
                                             }
                                             §§goto(addr481);
                                          }
                                          else
                                          {
                                             §§push(param1);
                                             if(!(_loc9_ && param3))
                                             {
                                                §§push(this.§>^§);
                                                if(_loc10_)
                                                {
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         §§push(param1);
                                                         §§push(this.§>^§);
                                                         if(!(_loc9_ && this))
                                                         {
                                                            §§push(§§pop() / 2);
                                                            if(_loc10_)
                                                            {
                                                               if(§§pop() >= §§pop())
                                                               {
                                                                  if(!(_loc9_ && param3))
                                                                  {
                                                                     §§goto(addr209);
                                                                  }
                                                                  §§goto(addr505);
                                                               }
                                                               §§goto(addr220);
                                                            }
                                                            §§goto(addr279);
                                                         }
                                                         §§goto(addr245);
                                                      }
                                                      §§goto(addr460);
                                                   }
                                                   else
                                                   {
                                                      §§push(param1);
                                                      if(_loc10_)
                                                      {
                                                         §§goto(addr279);
                                                         §§push(this.§>^§);
                                                      }
                                                   }
                                                   §§goto(addr279);
                                                }
                                                §§goto(addr245);
                                             }
                                          }
                                          §§goto(addr283);
                                       }
                                       §§goto(addr292);
                                    }
                                    §§goto(addr234);
                                 }
                                 §§goto(addr102);
                              }
                              §§goto(addr308);
                           }
                           §§goto(addr136);
                        }
                        §§goto(addr248);
                     }
                     §§goto(addr169);
                  }
                  §§goto(addr386);
               }
               §§goto(addr169);
            }
            §§goto(addr292);
         }
         §§goto(addr491);
      }
      
      public function §,H§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §;!%§.§6!&§(param1,this.§4>§.§2;§);
         }
      }
      
      public function §?]§(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§4>§.material.§'F§(param1));
         if(!_loc3_)
         {
            §§push(§§pop() * this.§4Y§);
         }
         return §§pop();
      }
      
      public function §#!&§(param1:String) : Number
      {
         return this.§4>§.material.§ !0§(param1);
      }
      
      public function §@]§() : String
      {
         return this.§4>§.material.mName;
      }
      
      public function §;6§() : Number
      {
         return this.§4>§.§ "§();
      }
      
      public function §default§() : int
      {
         return this.§4>§.§3m§();
      }
      
      public function §4Z§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 30;
         if(!_loc2_)
         {
            §§push(Boolean(this.§'[§().IsAwake()));
            if(_loc3_)
            {
               §§push(§§pop());
               if(_loc3_ || _loc2_)
               {
                  if(§§pop())
                  {
                     if(_loc3_)
                     {
                        §§pop();
                        if(!(_loc2_ && this))
                        {
                           §§push(this.§-!+§());
                           if(_loc3_)
                           {
                              §§push(Boolean(§§pop()));
                              §§push(Boolean(§§pop()));
                              if(!_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    if(_loc3_)
                                    {
                                       addr57:
                                       §§pop();
                                       if(_loc3_)
                                       {
                                          §§push(this.§`Y§ == this.§@!§);
                                          if(!(_loc2_ && _loc1_))
                                          {
                                             addr82:
                                             §§push(§§pop());
                                             if(_loc3_)
                                             {
                                                addr85:
                                                if(!§§pop())
                                                {
                                                   if(_loc3_)
                                                   {
                                                      addr88:
                                                      §§pop();
                                                      if(!(_loc2_ && _loc2_))
                                                      {
                                                         §§push(Math.abs(this.§'[§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                         if(_loc3_)
                                                         {
                                                            §§goto(addr109);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr149);
                                                }
                                             }
                                             §§goto(addr117);
                                          }
                                          addr109:
                                          §§push(§§pop());
                                          if(!(_loc2_ && _loc2_))
                                          {
                                             addr117:
                                             if(!§§pop())
                                             {
                                                if(!(_loc2_ && _loc3_))
                                                {
                                                   §§pop();
                                                }
                                                §§goto(addr164);
                                             }
                                             §§goto(addr149);
                                          }
                                          if(!§§pop())
                                          {
                                             if(!_loc2_)
                                             {
                                                addr153:
                                                §§pop();
                                             }
                                          }
                                          §§goto(addr164);
                                       }
                                       §§goto(addr149);
                                    }
                                    §§goto(addr88);
                                 }
                                 §§goto(addr82);
                              }
                              §§goto(addr85);
                           }
                           §§goto(addr57);
                        }
                        §§goto(addr164);
                     }
                     §§goto(addr153);
                  }
                  §§goto(addr164);
               }
               §§goto(addr117);
            }
            §§goto(addr82);
         }
         addr164:
         if(_loc3_)
         {
            addr149:
            §§push(Math.abs(this.§'[§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * _loc1_);
            §§push(Math.abs(this.§'[§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * _loc1_);
         }
         return Math.abs(this.§'[§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * _loc1_;
      }
      
      public function §switch§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§'[§().IsAwake());
            if(_loc2_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(true);
                     if(!(_loc1_ && _loc2_))
                     {
                        return §§pop();
                     }
                     addr75:
                     §§push(!§§pop());
                  }
                  else
                  {
                     addr66:
                     §§push(this.§30§());
                     if(_loc2_ || _loc2_)
                     {
                        §§goto(addr75);
                     }
                  }
               }
               §§goto(addr66);
            }
            return §§pop();
         }
         §§goto(addr66);
      }
      
      protected function §30§() : Boolean
      {
         return this.§;!0§.§30§();
      }
      
      public function §%!§(param1:Number = 3) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§4Y§ = param1;
            if(!_loc3_)
            {
               if(this.§4Y§ > 1)
               {
                  if(_loc2_ || this)
                  {
                     addr54:
                     §§push(this.§;S§);
                     if(_loc2_ || param1)
                     {
                        §§pop().§%w§();
                        if(_loc2_ || _loc3_)
                        {
                        }
                     }
                     else
                     {
                        addr74:
                        §§pop().§1=§ = null;
                     }
                  }
                  §§goto(addr76);
               }
               else
               {
                  §§push(this.§;S§);
               }
               §§goto(addr74);
            }
            addr76:
            return;
         }
         §§goto(addr54);
      }
      
      public function §1!=§(param1:Boolean) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Number(0);
         if(!(_loc4_ && param1))
         {
            §§push(this.§4>§.§"7§());
            if(!(_loc4_ && param1))
            {
               if(§§pop() == §5b§.§-!G§)
               {
                  addr39:
                  §§push(this.§;S§.mW);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(§§pop() * this.§;S§.mH);
                  }
                  §§push(§ !§.§`J§);
                  §§push(§ !§.§`J§);
                  if(!_loc4_)
                  {
                     _loc2_ = Number(§§pop() * (§§pop() * §§pop()));
                     if(!_loc3_)
                     {
                     }
                     addr159:
                     §§push(_loc2_);
                  }
                  else
                  {
                     addr148:
                     §§push(§§pop() / (§§pop() * §§pop()));
                     if(_loc3_ || _loc2_)
                     {
                        addr158:
                        _loc2_ = Number(§§pop());
                        addr157:
                        §§goto(addr159);
                     }
                  }
               }
               else
               {
                  §§push(this.§'[§().GetMass());
                  if(!_loc4_)
                  {
                     §§push(Number(§§pop() / this.§!^§.GetDensity()));
                     if(_loc3_)
                     {
                        _loc2_ = §§pop();
                        if(param1)
                        {
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(_loc2_);
                              if(_loc3_ || this)
                              {
                                 addr106:
                                 §§push(this.§@K§());
                                 if(_loc3_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc4_)
                                    {
                                       addr113:
                                       §§push(Number(§§pop()));
                                       if(_loc3_ || _loc2_)
                                       {
                                          _loc2_ = §§pop();
                                          if(_loc3_)
                                          {
                                             addr134:
                                             §§push(_loc2_);
                                             if(!(_loc4_ && _loc2_))
                                             {
                                                §§push(this.§-_§);
                                                if(_loc3_)
                                                {
                                                   addr146:
                                                   §§goto(addr148);
                                                   §§push(this.§-_§);
                                                }
                                                §§goto(addr148);
                                             }
                                             §§goto(addr157);
                                          }
                                          §§goto(addr159);
                                       }
                                       §§goto(addr157);
                                    }
                                    §§goto(addr158);
                                 }
                                 §§goto(addr146);
                              }
                              §§goto(addr158);
                           }
                        }
                        §§goto(addr134);
                     }
                     §§goto(addr106);
                  }
               }
               return §§pop();
            }
            §§goto(addr113);
         }
         §§goto(addr39);
      }
      
      public function §@K§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Number(1);
         if(!_loc2_)
         {
            §§push(_loc1_);
            if(!(_loc2_ && _loc1_))
            {
               §§push(_loc1_);
               if(_loc3_ || _loc1_)
               {
                  §§push(2);
                  if(_loc3_)
                  {
                     §§push(§§pop() / §§pop());
                     if(!(_loc2_ && _loc3_))
                     {
                        addr59:
                        §§push(§§pop() * Math.min(10,this.§;S§.§=4§ - 1));
                        if(_loc3_ || _loc2_)
                        {
                           addr85:
                           §§push(§§pop() / 10);
                        }
                     }
                     §§push(§§pop() - §§pop());
                     if(!(_loc2_ && this))
                     {
                        §§push(Number(§§pop()));
                        if(_loc3_ || this)
                        {
                        }
                        §§goto(addr104);
                     }
                     _loc1_ = §§pop();
                     addr103:
                     addr104:
                     return §§pop();
                     §§push(_loc1_);
                  }
                  §§goto(addr85);
               }
               §§goto(addr59);
            }
            §§goto(addr104);
         }
         §§goto(addr103);
      }
      
      public function §%3§(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(this.§'[§().GetLinearVelocity().x);
         if(_loc6_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§'[§().GetLinearVelocity().y);
         if(!(_loc7_ && _loc3_))
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
         if(_loc6_)
         {
            §§push(_loc2_);
            if(!_loc7_)
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
                        addr93:
                        _loc2_ = §§pop();
                        §§goto(addr127);
                     }
                     _loc3_ = §§pop();
                     if(!_loc7_)
                     {
                        §§goto(addr127);
                     }
                     addr127:
                     if(_loc6_ || _loc2_)
                     {
                        §§push(_loc3_);
                        if(_loc6_ || _loc3_)
                        {
                           addr119:
                           §§push(§§pop() * _loc5_);
                           if(_loc6_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                     }
                     this.§'[§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
                     return;
                  }
               }
               §§goto(addr119);
            }
         }
         §§goto(addr93);
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§@H§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§2!H§) : void
      {
      }
      
      public function addDamageParticles(param1:§2!H§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §"!@§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2Vec2 = this.§'[§().GetPosition();
         §§push(_loc4_);
         §§push(_loc4_.x);
         if(!_loc6_)
         {
            §§push(param2.x * param1);
            if(!_loc6_)
            {
               §§push(§§pop() * param3);
            }
            §§push(§§pop() + §§pop());
         }
         §§pop().x = §§pop();
         if(_loc5_ || this)
         {
            §§push(_loc4_);
            §§push(_loc4_.y);
            if(!_loc6_)
            {
               §§push(param2.y * param1);
               if(!_loc6_)
               {
                  §§push(§§pop() * param3);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().y = §§pop();
            if(_loc5_ || param1)
            {
               this.§'[§().SetPosition(_loc4_);
            }
         }
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(param2)
         {
            if(!_loc6_)
            {
               §§push(this.§>8§());
               if(!(_loc6_ && _loc3_))
               {
                  §§push(Number(§§pop()));
                  if(_loc7_ || this)
                  {
                     §§push(_loc4_ = §§pop());
                  }
                  §§push(360);
                  if(_loc7_)
                  {
                     §§push(§§pop() + §§pop());
                     if(_loc7_)
                     {
                        §§push(360);
                        if(_loc7_ || param2)
                        {
                           addr59:
                           §§push(Number(§§pop() % §§pop()));
                           if(!_loc6_)
                           {
                              _loc4_ = §§pop();
                              if(_loc7_ || param1)
                              {
                                 §§push(Number(Math.round(_loc4_ / 22.5) * 22.5));
                                 if(_loc7_)
                                 {
                                    _loc4_ = §§pop();
                                    §§push(Number(0));
                                    if(!(_loc6_ && param2))
                                    {
                                       _loc5_ = §§pop();
                                       if(_loc7_ || param2)
                                       {
                                          §§goto(addr98);
                                       }
                                       §§goto(addr155);
                                    }
                                    §§goto(addr128);
                                 }
                                 §§goto(addr142);
                              }
                              §§goto(addr98);
                           }
                           §§goto(addr181);
                        }
                        §§goto(addr98);
                     }
                     §§goto(addr151);
                  }
                  addr98:
                  if(param1 != 0)
                  {
                     §§push(_loc4_ % param1);
                     if(!_loc6_)
                     {
                        _loc5_ = Number(§§pop());
                        if(!(_loc6_ && param1))
                        {
                           §§goto(addr125);
                        }
                        §§goto(addr155);
                     }
                     §§goto(addr157);
                  }
                  addr125:
                  §§push(_loc5_);
                  if(!_loc6_)
                  {
                     addr128:
                     §§push(param1);
                     if(!_loc6_)
                     {
                        §§push(§§pop() / 2);
                     }
                     if(§§pop() < §§pop())
                     {
                        if(!(_loc6_ && param1))
                        {
                           addr142:
                           §§push(_loc4_ - _loc5_);
                           if(_loc7_ || param2)
                           {
                              addr151:
                              _loc4_ = Number(§§pop());
                              if(!_loc6_)
                              {
                                 addr155:
                              }
                              addr181:
                              this.§=!<§(_loc4_);
                              addr184:
                              §§push(this.§>8§() + param1);
                              if(!_loc6_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                        }
                        §§goto(addr184);
                     }
                     else
                     {
                        addr157:
                        §§push(_loc4_);
                        §§push(param1);
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(§§pop() - _loc5_);
                           if(!_loc6_)
                           {
                              §§goto(addr169);
                           }
                           §§goto(addr181);
                        }
                        addr169:
                        §§push(Number(§§pop() + §§pop()));
                        if(!(_loc6_ && param1))
                        {
                           _loc4_ = §§pop();
                           if(_loc6_)
                           {
                           }
                           §§goto(addr181);
                        }
                        §§goto(addr201);
                     }
                  }
                  addr201:
                  var _loc3_:* = §§pop();
                  if(!(_loc6_ && param1))
                  {
                     §§push(Math.round(_loc3_ / 22.5) * 22.5);
                     if(_loc7_)
                     {
                        §§push(Number(§§pop()));
                     }
                     _loc3_ = §§pop();
                     if(_loc7_ || this)
                     {
                        this.§=!<§(_loc3_);
                     }
                  }
                  return;
               }
               §§goto(addr59);
            }
         }
         §§goto(addr151);
      }
      
      public function §2o§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§ Z§(this.§'[§().GetAngle()));
         if(!(_loc3_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && this))
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               §§push(param1);
               if(_loc4_ || _loc2_)
               {
                  §§push(360);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc4_ || param1)
                     {
                        addr86:
                        §§push(§§pop() / 1000);
                     }
                     §§push(§§pop() - §§pop());
                     if(!_loc3_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc4_)
                        {
                           §§goto(addr93);
                        }
                        §§goto(addr102);
                     }
                     addr93:
                     _loc2_ = §§pop();
                     if(!_loc3_)
                     {
                        §§push(§;!E§(_loc2_));
                        if(_loc4_)
                        {
                           addr102:
                           _loc2_ = Number(§§pop());
                           if(!(_loc3_ && param1))
                           {
                              addr110:
                              this.§'[§().SetAngle(_loc2_);
                           }
                        }
                        §§goto(addr102);
                     }
                     return;
                  }
               }
               §§goto(addr86);
            }
            §§goto(addr102);
         }
         §§goto(addr110);
      }
      
      public function §%M§(param1:Number, param2:Point) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(!(_loc14_ && param1))
         {
            this.rotate(param1);
         }
         var _loc3_:b2Vec2 = this.§'[§().GetPosition().Copy();
         §§push(_loc3_.x);
         if(!_loc14_)
         {
            §§push(§§pop() - param2.x);
            if(_loc15_)
            {
               addr42:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(_loc3_.y);
            if(_loc15_ || param2)
            {
               §§push(§§pop() - param2.y);
               if(!_loc14_)
               {
                  addr58:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(!_loc14_)
               {
                  §§push(_loc4_);
                  if(!_loc14_)
                  {
                     §§push(0);
                     if(_loc15_)
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc15_)
                        {
                           if(§§pop())
                           {
                              if(_loc15_)
                              {
                                 addr75:
                                 §§pop();
                                 if(_loc15_)
                                 {
                                    addr78:
                                    §§push(_loc5_);
                                    if(!(_loc14_ && param1))
                                    {
                                       addr88:
                                       if(§§pop() == 0)
                                       {
                                          if(_loc15_)
                                          {
                                             return;
                                          }
                                       }
                                    }
                                    addr102:
                                    var _loc6_:* = §§pop();
                                    §§push(_loc4_);
                                    if(_loc15_)
                                    {
                                       §§push(§§pop() / _loc5_);
                                       if(_loc15_ || param1)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    var _loc7_:* = §§pop();
                                    §§push(Math.atan(_loc7_) * 180);
                                    if(_loc15_ || this)
                                    {
                                       §§push(§§pop() / Math.PI);
                                       if(_loc15_ || this)
                                       {
                                          addr149:
                                          §§push(Number(§§pop()));
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
                                                if(!_loc14_)
                                                {
                                                   addr172:
                                                   §§push(_loc8_ + 180);
                                                   if(_loc15_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      if(_loc15_ || param2)
                                                      {
                                                         _loc8_ = §§pop();
                                                         addr184:
                                                         §§push(_loc8_);
                                                         if(_loc15_)
                                                         {
                                                            §§push(param1);
                                                            if(_loc15_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc14_)
                                                               {
                                                                  addr194:
                                                                  §§push(Number(§§pop()));
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               §§goto(addr194);
                                                            }
                                                            var _loc9_:* = §§pop();
                                                            if(!_loc14_)
                                                            {
                                                               §§push(§§pop() * Math.PI);
                                                               if(_loc15_)
                                                               {
                                                                  §§push(§§pop() / 180);
                                                                  if(_loc15_ || _loc3_)
                                                                  {
                                                                     addr212:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc10_:* = §§pop();
                                                               §§push(Math.sin(_loc10_) * _loc6_);
                                                               if(_loc15_ || param1)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc11_:* = §§pop();
                                                               §§push(Math.cos(_loc10_) * _loc6_);
                                                               if(_loc15_ || this)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc12_:* = §§pop();
                                                               var _loc13_:b2Vec2 = new b2Vec2(param2.x + _loc11_,param2.y + _loc12_);
                                                               if(!_loc14_)
                                                               {
                                                                  this.§'[§().SetPosition(_loc13_);
                                                               }
                                                               return;
                                                            }
                                                            §§goto(addr212);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr194);
                                                }
                                             }
                                             §§goto(addr184);
                                          }
                                       }
                                       §§goto(addr172);
                                    }
                                    §§goto(addr149);
                                 }
                                 §§goto(addr102);
                                 §§push(Number(Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)));
                              }
                           }
                           §§goto(addr88);
                        }
                        §§goto(addr75);
                     }
                     §§goto(addr88);
                  }
                  §§goto(addr102);
               }
               §§goto(addr78);
            }
            §§goto(addr58);
         }
         §§goto(addr42);
      }
   }
}
