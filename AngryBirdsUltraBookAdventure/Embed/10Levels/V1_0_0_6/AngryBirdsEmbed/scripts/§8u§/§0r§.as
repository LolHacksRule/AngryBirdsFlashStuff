package §8u§
{
   import §#h§.§ !H§;
   import §,!C§.§+X§;
   import §,!C§.§0v§;
   import §,!C§.§6m§;
   import §,!C§.§8!3§;
   import §,!C§.§implements§;
   import §,_§.Sprite;
   import §3G§.§!E§;
   import §3G§.§4f§;
   import §>K§.§9X§;
   import §?t§.§,i§;
   import §?t§.§;x§;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §0r§
   {
      
      public static const §^!F§:uint = §§pop();
      
      public static const §<!,§:uint;
      
      public static const §%!-§:uint;
      
      public static const §5^§:uint;
      
      public static const §``§:Boolean = true;
      
      public static const §!G§:Number = 5;
      
      public static const §+f§:Number = 10;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(§^!F§));
         §§push(1);
         if(!_loc1_)
         {
            §§push(§§pop() << §§pop());
         }
         if(_loc2_)
         {
            §§push(§§findproperty(§<!,§));
            §§push(1);
            if(!_loc1_)
            {
               §§push(§§pop() << 2);
            }
            §§pop().§<!,§ = §§pop();
            §§push(§§findproperty(§%!-§));
            §§push(1);
            if(!(_loc1_ && _loc2_))
            {
               §§push(§§pop() << 3);
            }
            §§pop().§%!-§ = §§pop();
            if(_loc2_)
            {
               §§push(§§findproperty(§5^§));
               §§push(1);
               if(!(_loc1_ && §0r§))
               {
                  §§push(§§pop() << 4);
               }
               §§pop().§5^§ = §§pop();
               if(_loc2_)
               {
                  addr81:
                  §``§ = true;
                  if(_loc2_ || _loc2_)
                  {
                     §§goto(addr91);
                  }
                  §§goto(addr101);
               }
               addr91:
               §!G§ = 5;
               if(!(_loc1_ && §0r§))
               {
                  addr101:
                  §+f§ = 10;
               }
               return;
            }
         }
         §§goto(addr81);
      }
      
      private var §9f§:String;
      
      private var §'E§:int;
      
      private var §7!5§:int;
      
      public var §>!"§:String;
      
      public var §!U§:int;
      
      private var §=!#§:§+X§;
      
      private var §46§:§6a§;
      
      private var §<!F§:b2World;
      
      protected var §+M§:String = "";
      
      protected var §?!I§:int = 1;
      
      private var §]0§:b2Fixture;
      
      private var §7!!§:b2Body;
      
      private var §,r§:b2Vec2;
      
      public var §@^§:Number;
      
      public var §%!J§:Number;
      
      private var §#w§:Number;
      
      private var §7L§:Boolean = false;
      
      private var §`!@§:Number;
      
      private var §`=§:Number;
      
      private var §!9§:Number;
      
      private var §8?§:Number;
      
      private var §"! §:Number;
      
      private var §"H§:Number;
      
      public var §&1§:Number = 1;
      
      private var §8!$§:Boolean = false;
      
      public var §+!A§:Number = 0;
      
      public var §[=§:Number = 0;
      
      protected var §>;§:Boolean = false;
      
      public var §7!;§:§44§;
      
      private var §62§:Sprite;
      
      private var §^C§:Number = 0;
      
      private var §0§:Number = 0;
      
      private var §@!$§:Number = 0;
      
      private var §]H§:Number = 1.0;
      
      private var §?"§:Boolean = false;
      
      protected var §@m§:§0a§;
      
      private var §!]§:Boolean = true;
      
      public function §0r§(param1:§6a§, param2:Sprite, param3:b2World, param4:§!E§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc14_:b2PolygonShape = null;
         super();
         if(_loc16_ || this)
         {
            this.§>!"§ = param6;
            if(_loc16_ || param2)
            {
               this.§=!#§ = §0v§.§&2§(param6);
               if(!(_loc17_ && param1))
               {
                  addr50:
                  this.§46§ = param1;
                  if(_loc16_ || this)
                  {
                     this.§62§ = param2;
                     if(_loc16_)
                     {
                        this.§]H§ = param10;
                        this.§?"§ = param11;
                        if(_loc16_ || param2)
                        {
                           addr78:
                           this.§'E§ = param5;
                           this.§!U§ = this.§=!#§.§!U§;
                           addr86:
                           this.§7!5§ = this.§=!#§.§7a§();
                           this.§@m§ = new §0a§(§!G§,§+f§);
                           if(!_loc17_)
                           {
                              addr99:
                              this.§7!;§ = new §44§(this,param2,param4);
                              §§push(this.§7!;§);
                              if(!_loc17_)
                              {
                                 if(!§§pop().§#!5§(param1.§33§.§ use§))
                                 {
                                    if(_loc16_)
                                    {
                                       addr117:
                                       §§push(this.§7!;§);
                                       if(_loc16_)
                                       {
                                          addr121:
                                          §§push(this.§7!5§);
                                          if(_loc16_)
                                          {
                                             §§pop().§+!>§(§§pop(),this.§=!#§.§![§(),this.§=!#§.§;r§() / §!E§.§#N§,this.§=!#§.§#G§() / §!E§.§#N§);
                                             if(_loc16_ || param1)
                                             {
                                                addr152:
                                                this.§7!;§.§6x§(this.§7!5§ == §6m§.§#a§);
                                                this.§<!F§ = param3;
                                                addr150:
                                                addr148:
                                             }
                                             var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
                                             if(!(_loc17_ && param2))
                                             {
                                                this.§7!!§ = this.§<!F§.CreateBody(_loc12_);
                                                if(_loc16_)
                                                {
                                                   this.§7!!§.SetUserData(this);
                                                   if(!(_loc17_ && param3))
                                                   {
                                                      §§push(this.§7!5§);
                                                      if(_loc16_ || param1)
                                                      {
                                                         §§push(§6m§.§%e§);
                                                         if(!_loc17_)
                                                         {
                                                            if(§§pop() == §§pop())
                                                            {
                                                               if(!_loc17_)
                                                               {
                                                                  §§push(b2PolygonShape);
                                                                  §§push(this.§=!#§.shape.§5;§);
                                                                  if(_loc16_ || param2)
                                                                  {
                                                                     §§push(param10);
                                                                     if(!(_loc17_ && param1))
                                                                     {
                                                                        addr228:
                                                                        §§push(§§pop() * §§pop());
                                                                        §§push(this.§=!#§.shape.§>!'§);
                                                                        if(_loc16_)
                                                                        {
                                                                           §§push(§§pop() * param10);
                                                                        }
                                                                     }
                                                                     _loc14_ = §§pop().AsBox(§§pop(),§§pop());
                                                                     if(!(_loc17_ && this))
                                                                     {
                                                                        this.§]0§ = this.§7!!§.CreateFixture2(_loc14_,this.§=!#§.override());
                                                                        if(!(_loc17_ && param1))
                                                                        {
                                                                           addr318:
                                                                           §§push(this.§]0§);
                                                                           if(!(_loc17_ && param3))
                                                                           {
                                                                              §§push(this.§=!#§);
                                                                              if(!_loc17_)
                                                                              {
                                                                                 §§push(§§pop().§6S§());
                                                                                 if(!_loc17_)
                                                                                 {
                                                                                    §§pop().SetFriction(§§pop());
                                                                                    addr348:
                                                                                    if(!(_loc17_ && param1))
                                                                                    {
                                                                                       addr346:
                                                                                       §§push(this.§]0§);
                                                                                       §§push(this.§=!#§.§-U§());
                                                                                    }
                                                                                    var _loc13_:b2FilterData = new b2FilterData();
                                                                                    §§push(this.§3r§());
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          _loc13_.categoryBits = §^!F§;
                                                                                          §§push(_loc13_);
                                                                                          §§push(65535);
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             §§push(§§pop() & ~§<!,§);
                                                                                          }
                                                                                          §§pop().maskBits = §§pop();
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             addr423:
                                                                                             this.§]0§.SetFilterData(_loc13_);
                                                                                             this.§#w§ = this.§=!#§.§<<§();
                                                                                             if(!(_loc17_ && param3))
                                                                                             {
                                                                                                addr439:
                                                                                                §§push(this.§=!#§);
                                                                                                if(_loc16_ || param1)
                                                                                                {
                                                                                                   §§push(§§pop().§%!J§);
                                                                                                   if(!(_loc17_ && param1))
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      if(!_loc17_)
                                                                                                      {
                                                                                                         if(§§pop() > §§pop())
                                                                                                         {
                                                                                                            this.§@^§ = this.§%!J§ = this.§=!#§.§%!J§;
                                                                                                            if(_loc16_ || param2)
                                                                                                            {
                                                                                                               addr522:
                                                                                                               if(this.§=!#§.§!U§ == §+X§.§9?§)
                                                                                                               {
                                                                                                                  if(_loc16_ || param1)
                                                                                                                  {
                                                                                                                     this.§62§.visible = false;
                                                                                                                     if(_loc16_)
                                                                                                                     {
                                                                                                                        addr562:
                                                                                                                        addr564:
                                                                                                                        if(!this.isTexture())
                                                                                                                        {
                                                                                                                        }
                                                                                                                        addr567:
                                                                                                                        addr566:
                                                                                                                        if(param9 != 0)
                                                                                                                        {
                                                                                                                           if(_loc16_)
                                                                                                                           {
                                                                                                                              this.§>X§(param9);
                                                                                                                              if(!_loc16_)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              addr577:
                                                                                                                              this.§;C§(0,1);
                                                                                                                              addr583:
                                                                                                                              this.§7!;§.§17§(this.§=!#§.shape);
                                                                                                                              return;
                                                                                                                              addr581:
                                                                                                                           }
                                                                                                                           §§goto(addr581);
                                                                                                                        }
                                                                                                                        this.§`!+§();
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr577);
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(this.§7!;§);
                                                                                                                  if(_loc16_ || param2)
                                                                                                                  {
                                                                                                                     §§pop().setDamagedFrame();
                                                                                                                     §§goto(addr562);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr583);
                                                                                                            }
                                                                                                            §§goto(addr577);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            this.§@^§ = this.§%!J§ = Math.round(this.§;?§(true) * this.§=!#§.§9>§());
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                               §§push(this.§@^§);
                                                                                                               if(_loc16_ || param1)
                                                                                                               {
                                                                                                                  §§push(1);
                                                                                                                  if(!_loc17_)
                                                                                                                  {
                                                                                                                     if(§§pop() < §§pop())
                                                                                                                     {
                                                                                                                        this.§@^§ = this.§%!J§ = 1;
                                                                                                                        if(_loc17_)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        §§goto(addr562);
                                                                                                                     }
                                                                                                                     §§goto(addr522);
                                                                                                                  }
                                                                                                                  §§goto(addr567);
                                                                                                               }
                                                                                                               §§goto(addr566);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr562);
                                                                                                }
                                                                                                §§goto(addr522);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr577);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(this.§>!"§);
                                                                                          if(_loc16_)
                                                                                          {
                                                                                             §§push(§§pop().toUpperCase() == "MISC_WHITE_BIRD_EGG");
                                                                                             if(_loc16_ || param2)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   if(!_loc17_)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      addr392:
                                                                                                      §§push(this.§>!"§.toUpperCase() == "MISC_FOOD_EGG");
                                                                                                      if(!_loc16_)
                                                                                                      {
                                                                                                      }
                                                                                                      §§goto(addr564);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc17_ && param2))
                                                                                                {
                                                                                                   _loc13_.categoryBits = §<!,§;
                                                                                                   §§push(_loc13_);
                                                                                                   §§push(65535);
                                                                                                   if(!(_loc17_ && this))
                                                                                                   {
                                                                                                      §§push(§§pop() & ~§^!F§);
                                                                                                   }
                                                                                                   §§pop().maskBits = §§pop();
                                                                                                   if(_loc16_)
                                                                                                   {
                                                                                                      §§goto(addr423);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr439);
                                                                                             }
                                                                                             §§goto(addr423);
                                                                                          }
                                                                                          §§goto(addr392);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr562);
                                                                                 }
                                                                                 §§pop().SetRestitution(§§pop());
                                                                                 §§goto(addr348);
                                                                              }
                                                                           }
                                                                           §§goto(addr346);
                                                                        }
                                                                     }
                                                                     §§goto(addr348);
                                                                  }
                                                                  §§goto(addr228);
                                                               }
                                                               else
                                                               {
                                                                  addr299:
                                                                  §§push(this.§7!5§);
                                                               }
                                                               §§goto(addr318);
                                                            }
                                                            else
                                                            {
                                                               §§push(this.§7!5§);
                                                               if(!(_loc17_ && param3))
                                                               {
                                                                  addr272:
                                                                  §§push(§6m§.§#a§);
                                                                  if(_loc16_)
                                                                  {
                                                                     addr276:
                                                                     §§push(§§pop() == §§pop());
                                                                     if(_loc16_)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           if(_loc16_ || this)
                                                                           {
                                                                              addr298:
                                                                              §§pop();
                                                                              §§goto(addr299);
                                                                           }
                                                                        }
                                                                        addr304:
                                                                        if(§§pop())
                                                                        {
                                                                           this.§]0§ = this.§7!!§.CreateFixture2(this.§=!#§.shape.§@I§(param10),this.§=!#§.override());
                                                                        }
                                                                        §§goto(addr318);
                                                                     }
                                                                     §§goto(addr298);
                                                                  }
                                                                  addr303:
                                                                  §§goto(addr304);
                                                                  §§push(§§pop() == §§pop());
                                                               }
                                                            }
                                                            §§goto(addr303);
                                                            §§push(§6m§.§8-§);
                                                         }
                                                         §§goto(addr276);
                                                      }
                                                      §§goto(addr272);
                                                   }
                                                   §§goto(addr299);
                                                }
                                             }
                                             §§goto(addr318);
                                          }
                                          §§goto(addr152);
                                       }
                                       §§goto(addr150);
                                    }
                                    §§goto(addr152);
                                 }
                                 §§goto(addr148);
                              }
                              §§goto(addr121);
                           }
                           §§goto(addr152);
                        }
                        §§goto(addr99);
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr99);
               }
               §§goto(addr86);
            }
            §§goto(addr50);
         }
         §§goto(addr78);
      }
      
      public static function §>Y§(param1:int, param2:§implements§, param3:String = "") : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(param2 == null)
            {
               if(!(_loc6_ && param3))
               {
                  return;
               }
            }
         }
         var _loc4_:String;
         §§push(_loc4_ = param2.§,L§[param1]);
         if(_loc5_)
         {
            if(§§pop().length > 0)
            {
               if(!_loc6_)
               {
                  §§push(param3);
                  if(_loc5_)
                  {
                     addr66:
                     if(§§pop().length <= 0)
                     {
                        if(_loc5_ || param1)
                        {
                           addr76:
                           §§push(param2.§^!E§);
                           if(_loc6_ && §0r§)
                           {
                           }
                           §§goto(addr86);
                        }
                     }
                     § !H§.§]p§(_loc4_,param3);
                  }
                  §§goto(addr86);
               }
               §§goto(addr76);
            }
            addr86:
            param3 = §§pop();
            if(!_loc5_)
            {
            }
            return;
         }
         §§goto(addr66);
      }
      
      public static function §&Q§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(360);
         §§push(param1);
         if(!(_loc3_ && §0r§))
         {
            §§push(180);
            if(_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc3_ && param1))
               {
                  §§push(§§pop() / Math.PI);
                  if(_loc2_ || _loc3_)
                  {
                     addr66:
                     §§push(§§pop() % 360);
                  }
                  §§push(§§pop() - §§pop());
                  if(!_loc3_)
                  {
                     §§push(§§pop() % 360);
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr66);
      }
      
      public static function §%n§(param1:Number) : Number
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
         if(_loc4_)
         {
            §§push(§§pop() / (180 / Math.PI));
            if(_loc4_)
            {
               addr43:
               §§push(Number(§§pop()));
            }
            return §§pop();
         }
         §§goto(addr43);
      }
      
      public function get sprite() : Sprite
      {
         return this.§62§;
      }
      
      public function get x() : Number
      {
         return this.§^C§;
      }
      
      public function get y() : Number
      {
         return this.§0§;
      }
      
      public function get scale() : Number
      {
         return this.§]H§;
      }
      
      public function get front() : Boolean
      {
         return this.§?"§;
      }
      
      public function get §#!0§() : Number
      {
         return this.§7!!§.GetPosition().x;
      }
      
      public function get § c§() : Number
      {
         return this.§7!!§.GetPosition().y;
      }
      
      public function get § x§() : §+X§
      {
         return this.§=!#§;
      }
      
      public function get §@!+§() : Boolean
      {
         return this.§#w§ >= 0;
      }
      
      public function get container() : §6a§
      {
         return this.§46§;
      }
      
      public function get §'2§() : Boolean
      {
         return this.§!]§;
      }
      
      public function set §'2§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§!]§ = param1;
         }
      }
      
      public function set §?'§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§7L§ = param1;
         }
      }
      
      public function set § w§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§@m§.§ w§ = param1;
         }
      }
      
      public function get § w§() : uint
      {
         return this.§@m§.§ w§;
      }
      
      public function get §9R§() : Boolean
      {
         return this.§8!$§;
      }
      
      public function set §9R§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§8!$§ = param1;
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
         return this.§9f§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§9f§ = param1;
         }
      }
      
      public function §"t§(param1:b2FilterData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.§]0§);
            if(!(_loc3_ && param1))
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr47:
                     this.§]0§.SetFilterData(param1);
                  }
               }
               return;
            }
         }
         §§goto(addr47);
      }
      
      protected function §?Q§(param1:String) : int
      {
         return §,i§.§?Q§(param1);
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
                  _loc3_.type = this.§=!#§.§1]§();
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
            §§push(this.§<!F§);
            if(!_loc1_)
            {
               if(§§pop())
               {
                  if(_loc2_ || _loc2_)
                  {
                     addr33:
                     this.§<!F§.DestroyBody(this.§?n§());
                     if(_loc2_ || _loc2_)
                     {
                        this.§<!F§ = null;
                        addr56:
                        this.§7!;§.dispose();
                        if(!(_loc1_ && this))
                        {
                           addr66:
                           §§push(this.§62§);
                           if(_loc2_ || this)
                           {
                              if(§§pop())
                              {
                                 if(_loc2_)
                                 {
                                    addr90:
                                    this.§62§.dispose();
                                    if(_loc2_)
                                    {
                                       addr93:
                                       this.§62§ = null;
                                       addr96:
                                       this.§]0§ = null;
                                       this.§,r§ = null;
                                       if(!_loc2_)
                                       {
                                       }
                                    }
                                    §§goto(addr107);
                                 }
                                 this.§=!#§ = null;
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
      
      public function §>X§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(this.§?n§());
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
      
      public function § for§() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(360);
         §§push(this.§?n§().GetAngle());
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
      
      public function §96§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§?n§().SetLinearVelocity(param1);
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
                        this.§@P§();
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
                     this.§'!G§();
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
         return this.§]0§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(this.§?n§());
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
                                 §§push(this.§?n§());
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
                                                      §§push(this.§?n§());
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
                              §§push(this.§?n§().GetPosition().y <= param2);
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
      
      public function §-n§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§,r§ = param1;
         }
      }
      
      public function §9-§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            if(this.§,r§)
            {
               if(!(_loc2_ && _loc1_))
               {
                  this.§96§(this.§,r§,false);
                  if(!(_loc2_ && this))
                  {
                     addr55:
                     this.§,r§ = null;
                  }
               }
               §§goto(addr55);
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function §@P§(param1:b2Vec2 = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            if(!param1)
            {
               if(_loc3_)
               {
                  §§push(this.§?n§());
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
                                    §§push(this.§?n§());
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
                                 §§push(this.§?n§());
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
      
      public function §'!G§(param1:b2Vec2 = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!param1)
            {
               param1 = this.§?n§().GetLinearVelocity();
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
               this.§>X§(_loc2_);
            }
            return;
         }
         §§goto(addr20);
      }
      
      public function §!!5§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§?n§().SetAngularVelocity(param1);
         }
      }
      
      public function §?n§() : b2Body
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§]0§);
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
         return this.§]0§.GetBody();
      }
      
      public function §]W§(param1:Number = -9999, param2:Number = -9999) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param1 != -9999)
            {
               if(!(_loc4_ && param1))
               {
                  this.§^C§ = param1;
                  if(_loc3_ || param1)
                  {
                     addr38:
                     this.§0§ = param2;
                     if(_loc3_)
                     {
                        addr53:
                        §§push(this.§?n§());
                        if(_loc3_)
                        {
                           §§push(§§pop().GetPosition());
                           if(!(_loc4_ && this))
                           {
                              §§push(this.§^C§);
                              if(!_loc4_)
                              {
                                 §§push(§!E§.§#N§);
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
                                 §§push(this.§?n§().GetPosition());
                                 §§push(this.§0§);
                                 if(!(_loc4_ && param2))
                                 {
                                    addr111:
                                    §§push(§§pop() * §!E§.§#N§);
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
      
      public function §;C§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc3_:* = false;
         if(this.§>;§)
         {
            §§push(true);
            if(!_loc6_)
            {
               _loc3_ = §§pop();
               if(_loc5_)
               {
                  this.§>;§ = false;
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
                                 §§push(this.§7!;§);
                                 if(!_loc6_)
                                 {
                                    §§pop().§'q§();
                                    if(_loc5_ || param2)
                                    {
                                       addr95:
                                       §§push(this.§&1§);
                                       if(_loc5_)
                                       {
                                          §§push(§§pop() > 1);
                                          if(_loc5_ || _loc3_)
                                          {
                                             addr108:
                                             if(§§pop())
                                             {
                                                §§pop();
                                                §§push(this.§7!;§);
                                                if(!(_loc6_ && this))
                                                {
                                                   §§push(Boolean(§§pop().§ !<§));
                                                   if(!_loc6_)
                                                   {
                                                      addr124:
                                                      if(§§pop())
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            §§push(4);
                                                            §§push(this.§7!;§.§ !<§.blurX - 4);
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
                                                               §§push(this.§7!;§);
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  addr180:
                                                                  §§pop().§ !<§.blurX = _loc4_;
                                                                  §§push(this.§7!;§);
                                                                  if(!(_loc6_ && _loc3_))
                                                                  {
                                                                     addr192:
                                                                     §§pop().§ !<§.blurY = _loc4_;
                                                                     §§goto(addr284);
                                                                  }
                                                               }
                                                               §§pop().§,l§(param2);
                                                               if(_loc5_ || param1)
                                                               {
                                                                  addr214:
                                                                  if(§``§)
                                                                  {
                                                                     addr215:
                                                                     this.§;!?§(param1);
                                                                     if(_loc5_ || _loc3_)
                                                                     {
                                                                        addr242:
                                                                        §§push(this.§62§);
                                                                        if(!_loc6_)
                                                                        {
                                                                           §§pop().x = Math.round(this.§^C§);
                                                                           addr261:
                                                                           §§push(this.§62§);
                                                                           if(_loc5_)
                                                                           {
                                                                              §§pop().y = Math.round(this.§0§);
                                                                              addr270:
                                                                              §§push(this.§62§);
                                                                           }
                                                                        }
                                                                        §§push(this.§@!$§);
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
                                                                           §§push(this.§7!;§);
                                                                        }
                                                                        return;
                                                                        addr225:
                                                                     }
                                                                     §§goto(addr261);
                                                                  }
                                                                  else
                                                                  {
                                                                     this.§@!$§ = this.§!9§;
                                                                     this.§^C§ = this.§`!@§;
                                                                     if(!_loc6_)
                                                                     {
                                                                        this.§0§ = this.§`=§;
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
      
      public function §`!+§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§?n§().GetPosition().x);
         if(!(_loc4_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(this.§?n§().GetPosition().y);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && _loc1_))
         {
            this.§"H§ = this.§!9§;
            this.§8?§ = this.§`!@§;
            if(_loc3_ || this)
            {
               this.§"! § = this.§`=§;
               if(_loc3_)
               {
                  §§push(this);
                  §§push(this.§?n§().GetAngle());
                  if(_loc3_)
                  {
                     §§push(180);
                     if(_loc3_)
                     {
                        §§push(§§pop() * (§§pop() / Math.PI));
                        if(!_loc4_)
                        {
                           addr101:
                           §§push(§§pop() % 360);
                        }
                        §§pop().§!9§ = §§pop();
                        addr103:
                        §§push(this);
                        §§push(_loc1_);
                        if(!_loc4_)
                        {
                           §§push(§§pop() / §!E§.§#N§);
                        }
                        §§pop().§`!@§ = §§pop();
                        §§push(this);
                        §§push(_loc2_);
                        if(!_loc4_)
                        {
                           §§push(§§pop() / §!E§.§#N§);
                        }
                        §§pop().§`=§ = §§pop();
                        §§goto(addr119);
                     }
                  }
                  §§goto(addr101);
               }
               §§goto(addr124);
            }
            addr119:
            §§push(this.§@m§);
            if(!_loc4_)
            {
               §§pop().§-O§();
               addr124:
               §§push(this.§@m§);
            }
            §§pop().§[!>§(this.§?n§());
            return;
         }
         §§goto(addr103);
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
      
      public function §;!?§(param1:Number, param2:Number = -1) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         if(!(_loc4_ && _loc3_))
         {
            §§push(1e-9);
            if(_loc3_ || _loc3_)
            {
               if(§§pop() > §§pop())
               {
                  §§push(§9X§);
                  §§push("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = ");
                  if(!_loc4_)
                  {
                     §§push(§§pop() + param1);
                     if(_loc3_)
                     {
                        addr41:
                        §§push(§§pop() + " overriding to 0");
                     }
                     §§pop().log(§§pop());
                     if(_loc3_)
                     {
                        addr46:
                        §§push(param2);
                        if(!(_loc4_ && this))
                        {
                           addr54:
                           §§push(0);
                           if(_loc3_ || this)
                           {
                              if(§§pop() < §§pop())
                              {
                                 if(_loc3_)
                                 {
                                    §§push(this.§46§.§33§.§=!D§.§=!4§);
                                    if(!_loc4_)
                                    {
                                       §§push(1000);
                                       if(!(_loc4_ && param1))
                                       {
                                          §§push(Number(§§pop() * §§pop()));
                                          if(_loc3_ || param2)
                                          {
                                             param2 = §§pop();
                                             addr90:
                                             §§push(param1);
                                             if(_loc3_ || param2)
                                             {
                                                §§push(-1);
                                                if(_loc3_)
                                                {
                                                   addr103:
                                                   param1 = §§pop() * §§pop();
                                                   if(!(_loc4_ && _loc3_))
                                                   {
                                                      §§push(this.§`!@§);
                                                      if(!_loc4_)
                                                      {
                                                         §§push(§§pop() == this.§8?§);
                                                         if(!(_loc4_ && param2))
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc3_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  if(_loc3_ || param2)
                                                                  {
                                                                     §§pop();
                                                                     if(!(_loc4_ && param2))
                                                                     {
                                                                        addr145:
                                                                        §§push(param1);
                                                                        §§push(0);
                                                                        if(!(_loc4_ && param1))
                                                                        {
                                                                           addr154:
                                                                           if(§§pop() == §§pop())
                                                                           {
                                                                              this.§+!A§ = 0;
                                                                              if(!(_loc4_ && this))
                                                                              {
                                                                                 this.§^C§ = this.§`!@§;
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    addr219:
                                                                                    §§push(this.§`=§);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       §§push(this.§"! §);
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          §§push(§§pop() == §§pop());
                                                                                          §§push(§§pop() == §§pop());
                                                                                          if(!(_loc4_ && this))
                                                                                          {
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                if(!(_loc4_ && param2))
                                                                                                {
                                                                                                   §§pop();
                                                                                                   §§push(param1);
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      addr248:
                                                                                                      §§push(0);
                                                                                                      if(_loc3_)
                                                                                                      {
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         if(_loc3_ || param1)
                                                                                                         {
                                                                                                            addr259:
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               this.§[=§ = 0;
                                                                                                               if(_loc3_)
                                                                                                               {
                                                                                                                  this.§0§ = this.§`=§;
                                                                                                                  addr322:
                                                                                                                  §§push(this.§!9§);
                                                                                                                  if(!(_loc4_ && param2))
                                                                                                                  {
                                                                                                                     §§push(§§pop() == this.§"H§);
                                                                                                                     if(!(§§pop() == this.§"H§))
                                                                                                                     {
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           §§pop();
                                                                                                                           if(!(_loc4_ && param1))
                                                                                                                           {
                                                                                                                              §§push(param1);
                                                                                                                              if(_loc3_)
                                                                                                                              {
                                                                                                                                 §§push(0);
                                                                                                                                 if(_loc3_)
                                                                                                                                 {
                                                                                                                                    addr363:
                                                                                                                                    if(§§pop() == §§pop())
                                                                                                                                    {
                                                                                                                                       if(!(_loc4_ && param2))
                                                                                                                                       {
                                                                                                                                          addr371:
                                                                                                                                          this.§@!$§ = this.§!9§;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       addr378:
                                                                                                                                       §§push(this.§"H§ > this.§!9§);
                                                                                                                                       §§push(this.§"H§ > this.§!9§);
                                                                                                                                       if(_loc3_)
                                                                                                                                       {
                                                                                                                                          addr384:
                                                                                                                                          if(§§pop())
                                                                                                                                          {
                                                                                                                                             addr385:
                                                                                                                                             §§pop();
                                                                                                                                             if(_loc3_ || param2)
                                                                                                                                             {
                                                                                                                                                addr393:
                                                                                                                                                §§push(this.§"H§);
                                                                                                                                                if(_loc3_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   addr402:
                                                                                                                                                   §§push(§§pop() - this.§!9§);
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      addr407:
                                                                                                                                                      §§push(§§pop() <= 180);
                                                                                                                                                      if(_loc3_ || param1)
                                                                                                                                                      {
                                                                                                                                                         addr416:
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            addr417:
                                                                                                                                                            §§push(this);
                                                                                                                                                            §§push(this.§!9§);
                                                                                                                                                            if(!(_loc4_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(param1);
                                                                                                                                                               if(_loc3_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§"H§);
                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - this.§!9§);
                                                                                                                                                                     if(!(_loc4_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        addr460:
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!(_loc4_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           addr458:
                                                                                                                                                                           §§push(§§pop() / param2);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().§@!$§ = §§pop() + §§pop();
                                                                                                                                                                        return;
                                                                                                                                                                        addr461:
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr458);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr460);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            addr466:
                                                                                                                                                            §§push(this.§"H§ > this.§!9§);
                                                                                                                                                            if(_loc3_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               if(!_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        if(!(_loc4_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           addr490:
                                                                                                                                                                           §§push(this.§"H§ - this.§!9§);
                                                                                                                                                                           if(_loc3_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              addr500:
                                                                                                                                                                              §§push(§§pop() > 180);
                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr504:
                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                 {
                                                                                                                                                                                    addr505:
                                                                                                                                                                                    §§push(this);
                                                                                                                                                                                    §§push(this.§!9§);
                                                                                                                                                                                    if(!(_loc4_ && _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(param1);
                                                                                                                                                                                       if(_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§"H§);
                                                                                                                                                                                          if(!(_loc4_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() - 360);
                                                                                                                                                                                             if(!(_loc4_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() - this.§!9§);
                                                                                                                                                                                                if(_loc3_ || param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr551:
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(!_loc4_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(param2);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().§@!$§ = §§pop() + §§pop();
                                                                                                                                                                                                   §§goto(addr460);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr551);
                                                                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr551);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§"H§);
                                                                                                                                                                                    if(!(_loc4_ && param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§!9§);
                                                                                                                                                                                       if(_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() < §§pop());
                                                                                                                                                                                          if(!(_loc4_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr575:
                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                             if(_loc3_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr583:
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                   if(!(_loc4_ && param2))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr592:
                                                                                                                                                                                                      §§push(this.§!9§);
                                                                                                                                                                                                      if(_loc3_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr601:
                                                                                                                                                                                                         §§push(this.§"H§);
                                                                                                                                                                                                         if(!_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                                                                            if(!(_loc4_ && _loc3_))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr613:
                                                                                                                                                                                                               §§push(§§pop() <= 180);
                                                                                                                                                                                                               if(_loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr617:
                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr620:
                                                                                                                                                                                                                        §§push(this);
                                                                                                                                                                                                                        §§push(this.§!9§);
                                                                                                                                                                                                                        if(!(_loc4_ && param2))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(param1);
                                                                                                                                                                                                                           if(!(_loc4_ && param2))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§"H§);
                                                                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() - this.§!9§);
                                                                                                                                                                                                                                 if(_loc3_ || _loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr652:
                                                                                                                                                                                                                                    addr658:
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    if(!_loc4_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr656:
                                                                                                                                                                                                                                       §§push(§§pop() / param2);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§pop().§@!$§ = §§pop() + §§pop();
                                                                                                                                                                                                                                    §§goto(addr460);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr656);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr652);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr656);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr658);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr460);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  else
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr664:
                                                                                                                                                                                                                     §§push(this.§"H§ < this.§!9§);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr460);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr666:
                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§pop();
                                                                                                                                                                                                                  if(_loc3_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr680:
                                                                                                                                                                                                                     §§push(this.§!9§ - this.§"H§ > 180);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr460);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this);
                                                                                                                                                                                                                  §§push(this.§!9§);
                                                                                                                                                                                                                  if(!(_loc4_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(param1);
                                                                                                                                                                                                                     if(_loc3_ || param2)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§"H§);
                                                                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() + 360);
                                                                                                                                                                                                                           if(!_loc4_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr719:
                                                                                                                                                                                                                              §§push(§§pop() - this.§!9§);
                                                                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr729:
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 if(!_loc4_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(param2);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§pop().§@!$§ = §§pop() + §§pop();
                                                                                                                                                                                                                                 §§goto(addr460);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr729);
                                                                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr719);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr729);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr460);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr680);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr664);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr613);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr460);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr617);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr666);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr617);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr680);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr613);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr575);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr601);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr592);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr617);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr504);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr613);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr575);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr504);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr500);
                                                                                                                                             }
                                                                                                                                             §§goto(addr460);
                                                                                                                                          }
                                                                                                                                          §§goto(addr416);
                                                                                                                                       }
                                                                                                                                       §§goto(addr583);
                                                                                                                                    }
                                                                                                                                    §§goto(addr460);
                                                                                                                                 }
                                                                                                                                 §§goto(addr680);
                                                                                                                              }
                                                                                                                              §§goto(addr407);
                                                                                                                           }
                                                                                                                           §§goto(addr371);
                                                                                                                        }
                                                                                                                        §§goto(addr385);
                                                                                                                     }
                                                                                                                     §§goto(addr363);
                                                                                                                  }
                                                                                                                  §§goto(addr378);
                                                                                                                  addr269:
                                                                                                               }
                                                                                                               §§goto(addr620);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(this);
                                                                                                               §§push(param1);
                                                                                                               if(!_loc4_)
                                                                                                               {
                                                                                                                  §§push(this.§"! §);
                                                                                                                  if(_loc3_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - this.§`=§);
                                                                                                                     if(_loc3_ || param1)
                                                                                                                     {
                                                                                                                        addr298:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc3_ || this)
                                                                                                                        {
                                                                                                                           §§push(param2);
                                                                                                                        }
                                                                                                                        §§pop().§[=§ = §§pop();
                                                                                                                        if(_loc3_ || param2)
                                                                                                                        {
                                                                                                                           §§push(this);
                                                                                                                           §§push(this.§`=§);
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + this.§[=§);
                                                                                                                           }
                                                                                                                           §§pop().§0§ = §§pop();
                                                                                                                           if(!(_loc4_ && _loc3_))
                                                                                                                           {
                                                                                                                              §§goto(addr322);
                                                                                                                           }
                                                                                                                           §§goto(addr652);
                                                                                                                        }
                                                                                                                        §§goto(addr505);
                                                                                                                     }
                                                                                                                     §§goto(addr298);
                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr298);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr504);
                                                                                                      }
                                                                                                      §§goto(addr407);
                                                                                                   }
                                                                                                   §§goto(addr402);
                                                                                                }
                                                                                                §§goto(addr617);
                                                                                             }
                                                                                             §§goto(addr259);
                                                                                          }
                                                                                          §§goto(addr613);
                                                                                       }
                                                                                       §§goto(addr466);
                                                                                    }
                                                                                    §§goto(addr490);
                                                                                 }
                                                                                 §§goto(addr461);
                                                                              }
                                                                              §§goto(addr417);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(this);
                                                                              §§push(param1);
                                                                              if(!(_loc4_ && param2))
                                                                              {
                                                                                 §§push(this.§8?§);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§push(§§pop() - this.§`!@§);
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!(_loc4_ && this))
                                                                                       {
                                                                                          addr199:
                                                                                          §§push(§§pop() / param2);
                                                                                       }
                                                                                       §§pop().§+!A§ = §§pop();
                                                                                       if(_loc3_ || param2)
                                                                                       {
                                                                                          addr208:
                                                                                          §§push(this);
                                                                                          §§push(this.§`!@§);
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(§§pop() + this.§+!A§);
                                                                                          }
                                                                                          §§pop().§^C§ = §§pop();
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             §§goto(addr219);
                                                                                          }
                                                                                          §§goto(addr371);
                                                                                       }
                                                                                       §§goto(addr680);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr199);
                                                                           }
                                                                        }
                                                                        §§goto(addr680);
                                                                     }
                                                                     §§goto(addr269);
                                                                  }
                                                                  §§goto(addr385);
                                                               }
                                                               §§goto(addr154);
                                                            }
                                                            §§goto(addr384);
                                                         }
                                                         §§goto(addr154);
                                                      }
                                                      §§goto(addr248);
                                                   }
                                                   §§goto(addr371);
                                                }
                                                §§goto(addr363);
                                             }
                                             §§goto(addr680);
                                          }
                                          §§goto(addr145);
                                       }
                                       §§goto(addr154);
                                    }
                                    §§goto(addr407);
                                 }
                                 §§goto(addr208);
                              }
                              §§goto(addr90);
                           }
                           §§goto(addr680);
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr393);
                  }
                  §§goto(addr41);
               }
               §§goto(addr46);
            }
            §§goto(addr402);
         }
         §§goto(addr54);
      }
      
      public function get §6J§() : Point
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(!§``§)
            {
            }
         }
         return null;
      }
      
      public function §3r§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§!U§);
            if(!_loc1_)
            {
               §§push(§+X§.§1!C§);
               if(!(_loc1_ && _loc1_))
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc1_)
                  {
                     if(!§§pop())
                     {
                        if(_loc2_ || _loc1_)
                        {
                           §§pop();
                           addr69:
                           §§push(this.§!U§ == §+X§.§2p§);
                        }
                     }
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §?V§() : Boolean
      {
         return this.§!U§ == §+X§.§92§;
      }
      
      public function §%!@§() : Boolean
      {
         return this.§!U§ == §+X§.§!q§;
      }
      
      public function §@1§() : Boolean
      {
         return this.§!U§ == §+X§.§2p§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§!U§ == §+X§.§ 2§;
      }
      
      public function isGround() : Boolean
      {
         return this.§!U§ == §+X§.§9?§;
      }
      
      public function §%z§() : Boolean
      {
         return this.§!U§ == §+X§.§ !'§;
      }
      
      public function §9;§() : Boolean
      {
         return this.§!U§ == §+X§.§ >§;
      }
      
      public function §#!-§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§>!"§);
            if(!(_loc1_ && _loc1_))
            {
               §§push("MISC_EXPLOSIVE_TNT");
               if(!_loc1_)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc1_)
                  {
                     if(!§§pop())
                     {
                        if(_loc2_ || _loc1_)
                        {
                           addr53:
                           §§pop();
                           if(_loc2_ || _loc1_)
                           {
                              §§goto(addr74);
                           }
                           §§goto(addr99);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr82);
                  }
                  §§goto(addr53);
               }
               addr74:
               §§goto(addr73);
            }
            addr73:
            §§goto(addr71);
         }
         addr71:
         §§push(this.§>!"§ == "POWERUP_BOMB");
         if(_loc2_ || _loc2_)
         {
            addr82:
            if(§§pop())
            {
               if(!(_loc1_ && this))
               {
                  §§push(true);
                  if(!(_loc2_ || this))
                  {
                     §§goto(addr100);
                  }
               }
               else
               {
                  addr99:
                  addr100:
                  return §§pop();
                  §§push(false);
               }
               §§goto(addr100);
            }
            §§goto(addr99);
         }
         return §§pop();
      }
      
      public function §[!G§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(Boolean(this.§?V§()));
            §§push(Boolean(this.§?V§()));
            if(_loc1_)
            {
               if(!§§pop())
               {
                  §§pop();
                  if(!(_loc2_ && this))
                  {
                     §§push(this.§%z§());
                     if(!_loc2_)
                     {
                        §§goto(addr53);
                     }
                     §§goto(addr89);
                  }
                  §§goto(addr70);
               }
               addr53:
               §§push(Boolean(§§pop()));
               §§push(Boolean(§§pop()));
               if(_loc1_)
               {
                  if(!§§pop())
                  {
                     §§pop();
                     if(!_loc2_)
                     {
                        addr70:
                        §§push(this.§9;§());
                        if(!(_loc2_ && _loc1_))
                        {
                           §§goto(addr80);
                        }
                        §§goto(addr89);
                     }
                     §§goto(addr90);
                  }
               }
               §§goto(addr80);
            }
            addr80:
            §§push(Boolean(§§pop()));
            if(Boolean(§§pop()))
            {
               if(_loc1_ || this)
               {
                  addr89:
                  §§pop();
                  addr90:
                  §§push(this.§9R§);
                  if(_loc2_)
                  {
                  }
                  §§goto(addr95);
               }
               §§push(!§§pop());
            }
            addr95:
            return §§pop();
         }
         §§goto(addr70);
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §2Y§() : Number
      {
         return Number(Math.sqrt(this.§?n§().GetLinearVelocity().x * this.§?n§().GetLinearVelocity().x + this.§?n§().GetLinearVelocity().y * this.§?n§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         §§push(this.§%!@§());
         if(!_loc9_)
         {
            if(§§pop())
            {
               if(!_loc9_)
               {
                  return this.§@^§;
               }
               addr189:
               §§push(param1);
               if(_loc10_)
               {
                  addr192:
                  §§push(this.§#w§);
                  if(_loc10_)
                  {
                     if(§§pop() <= §§pop())
                     {
                        if(_loc10_)
                        {
                           §§push(param1);
                           §§push(this.§#w§);
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
                                       this.§'!"§(§implements§.§,!6§);
                                       if(!_loc9_)
                                       {
                                          addr222:
                                          §§push(Boolean(this.§3r§()));
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
                                                         §§push(this.§@^§);
                                                         §§push(this.§%!J§);
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
                                                                     §§push(this.§%!J§);
                                                                     if(_loc10_)
                                                                     {
                                                                        §§push(§§pop() - 1);
                                                                     }
                                                                     §§pop().§@^§ = §§pop();
                                                                  }
                                                                  addr588:
                                                                  return this.§@^§;
                                                                  addr586:
                                                               }
                                                               §§push(this.§@^§);
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
                                                                              §§push(Boolean(this.§[!G§()));
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              addr359:
                                                                              §§push(int(Math.min(this.§@^§,int(param1))));
                                                                              if(!_loc9_)
                                                                              {
                                                                                 _loc7_ = §§pop();
                                                                                 §§push(§!E§.§<!#§.getValue());
                                                                                 if(!_loc9_)
                                                                                 {
                                                                                    §§push(int(§§pop() * _loc7_));
                                                                                 }
                                                                              }
                                                                              _loc8_ = §§pop();
                                                                              §§push(this.§46§.§33§);
                                                                              §§push(_loc8_);
                                                                              §§push(§4f§.§!l§);
                                                                              if(_loc10_)
                                                                              {
                                                                                 §§push(this.§@^§ > param1);
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
                                                                                          §§pop().addScore(§§pop(),§§pop(),§§pop(),this.§?n§().GetPosition().x,this.§?n§().GetPosition().y,§,i§.§[!1§(this.§>!"§));
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
                                                                                                            §§push(this.§7L§);
                                                                                                            if(_loc10_ || param1)
                                                                                                            {
                                                                                                               addr470:
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  if(_loc10_ || param2)
                                                                                                                  {
                                                                                                                     addr499:
                                                                                                                     §§push(this.§@^§);
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
                                                                                                                                    §§push(this.§3r§());
                                                                                                                                    if(_loc10_)
                                                                                                                                    {
                                                                                                                                       addr524:
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          if(!_loc9_)
                                                                                                                                          {
                                                                                                                                             this.§@^§ = 1;
                                                                                                                                             addr530:
                                                                                                                                             if(this.§@^§ < 1)
                                                                                                                                             {
                                                                                                                                                if(_loc10_)
                                                                                                                                                {
                                                                                                                                                   this.§@^§ = 0;
                                                                                                                                                   addr539:
                                                                                                                                                   §0r§.§>Y§(§implements§.§&H§,this.§=!#§.§#T§,"ChannelDestroyed");
                                                                                                                                                   if(!(_loc9_ && param1))
                                                                                                                                                   {
                                                                                                                                                      addr583:
                                                                                                                                                      this.§7!;§.setDamagedFrame();
                                                                                                                                                      §§goto(addr586);
                                                                                                                                                      addr564:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr583);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                this.§'!"§(§implements§.§?8§);
                                                                                                                                                if(_loc10_ || param1)
                                                                                                                                                {
                                                                                                                                                }
                                                                                                                                                §§goto(addr583);
                                                                                                                                             }
                                                                                                                                             §§goto(addr583);
                                                                                                                                          }
                                                                                                                                          this.addDamageParticles(this.§46§.§33§.particles,param1);
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
                                                                                                                  §§push(this.§@^§);
                                                                                                                  if(!(_loc9_ && param1))
                                                                                                                  {
                                                                                                                     §§push(§§pop() - param1);
                                                                                                                  }
                                                                                                                  §§pop().§@^§ = §§pop();
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
                           §§push(this.§#w§);
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
               §§push(this.§46§);
               if(!(_loc9_ && this))
               {
                  if(!§§pop().§'n§())
                  {
                     return this.§@^§;
                  }
                  §§push(this.§#w§);
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
                                                         this.§'!"§(§implements§.§&H§);
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
                                                               this.§'!"§(§implements§.§?8§);
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
                                                                        this.§'!"§(§implements§.§,!6§);
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
                                                            return this.§@^§;
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
      
      public function §'!"§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §0r§.§>Y§(param1,this.§=!#§.§#T§);
         }
      }
      
      public function §%h§(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§=!#§.material.§^?§(param1));
         if(!(_loc2_ && param1))
         {
            §§push(§§pop() * this.§&1§);
         }
         return §§pop();
      }
      
      public function §]F§(param1:String) : Number
      {
         return this.§=!#§.material.§!!E§(param1);
      }
      
      public function §8M§() : String
      {
         return this.§=!#§.material.mName;
      }
      
      public function §9]§() : Number
      {
         return this.§=!#§.§9>§();
      }
      
      public function §4U§() : int
      {
         return this.§=!#§.§1!%§();
      }
      
      public function §9!"§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 30;
         if(!(_loc3_ && _loc2_))
         {
            §§push(Boolean(this.§?n§().IsAwake()));
            §§push(Boolean(this.§?n§().IsAwake()));
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
                        §§push(Boolean(this.§3r§()));
                        §§push(Boolean(this.§3r§()));
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
                                    §§push(this.§@^§ == this.§%!J§);
                                    §§push(this.§@^§ == this.§%!J§);
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
                                          §§push(Math.abs(this.§?n§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * _loc1_);
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
                  §§push(Math.abs(this.§?n§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * _loc1_);
               }
               return Math.abs(this.§?n§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * _loc1_;
            }
            §§goto(addr75);
         }
         §§goto(addr60);
      }
      
      public function §-[§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§?n§().IsAwake());
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
                     §§push(this.§#[§());
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
      
      protected function §#[§() : Boolean
      {
         return this.§@m§.§#[§();
      }
      
      public function §=!-§(param1:Number = 3) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§&1§ = param1;
            if(!_loc3_)
            {
               if(this.§&1§ > 1)
               {
                  if(_loc2_ || this)
                  {
                     §§push(this.§7!;§);
                     if(!(_loc3_ && _loc2_))
                     {
                        §§pop().§&p§();
                        if(_loc2_ || _loc3_)
                        {
                           addr81:
                           return;
                           addr76:
                        }
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr76);
               }
               else
               {
                  §§push(this.§7!;§);
               }
               §§pop().§ !<§ = null;
            }
         }
         §§goto(addr81);
      }
      
      public function §;?§(param1:Boolean) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Number(0);
         if(!_loc4_)
         {
            §§push(this.§=!#§.§1]§());
            if(_loc3_)
            {
               if(§§pop() == §8!3§.§%2§)
               {
                  if(!(_loc4_ && this))
                  {
                     §§push(this.§7!;§.mW * this.§7!;§.mH);
                     §§push(§!E§.§#N§);
                     if(!_loc4_)
                     {
                        §§push(§!E§.§#N§);
                        if(_loc3_)
                        {
                           addr52:
                           §§push(§§pop() * (§§pop() * §§pop()));
                           if(_loc3_ || this)
                           {
                              _loc2_ = Number(§§pop());
                           }
                           else
                           {
                              addr120:
                              _loc2_ = §§pop();
                              addr121:
                              §§push(_loc2_);
                              if(_loc3_)
                              {
                                 addr124:
                                 §§push(this.§]H§);
                                 if(!_loc3_)
                                 {
                                 }
                                 §§goto(addr131);
                              }
                              §§goto(addr140);
                           }
                           §§goto(addr140);
                        }
                        §§goto(addr131);
                     }
                     §§goto(addr52);
                  }
                  §§goto(addr121);
               }
               else
               {
                  §§push(this.§?n§().GetMass());
                  §§push(this.§]0§.GetDensity());
                  if(_loc3_ || _loc2_)
                  {
                     §§push(Number(§§pop() / §§pop()));
                     if(_loc3_ || _loc2_)
                     {
                        _loc2_ = §§pop();
                        if(param1)
                        {
                           addr98:
                           §§push(_loc2_);
                           if(!(_loc4_ && _loc2_))
                           {
                              §§goto(addr120);
                              §§push(Number(§§pop() * this.§]4§()));
                           }
                           §§goto(addr124);
                        }
                        §§goto(addr120);
                     }
                     §§goto(addr140);
                  }
               }
               addr131:
               §§push(§§pop() / (§§pop() * this.§]H§));
               if(_loc3_ || param1)
               {
                  addr140:
                  _loc2_ = Number(§§pop());
                  §§push(_loc2_);
                  addr139:
               }
               return §§pop();
            }
            §§goto(addr139);
         }
         §§goto(addr98);
      }
      
      public function §]4§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Number(1);
         if(!(_loc2_ && _loc1_))
         {
            §§push(_loc1_);
            if(!(_loc2_ && _loc3_))
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
                        addr59:
                        §§push(§§pop() * Math.min(10,this.§7!;§.§try§ - 1));
                        if(!(_loc2_ && _loc1_))
                        {
                           addr85:
                           §§push(§§pop() / 10);
                        }
                     }
                     §§push(§§pop() - §§pop());
                     if(_loc3_ || this)
                     {
                        §§push(Number(§§pop()));
                        if(_loc3_)
                        {
                           _loc1_ = §§pop();
                        }
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr85);
               }
               §§goto(addr59);
            }
            §§goto(addr99);
         }
         addr99:
         return _loc1_;
      }
      
      public function §^§(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(this.§?n§().GetLinearVelocity().x);
         if(_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§?n§().GetLinearVelocity().y);
         if(!(_loc7_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         §§push(1);
         §§push(param1);
         if(!(_loc7_ && _loc2_))
         {
            §§push(§§pop() / _loc4_);
         }
         §§push(§§pop() + §§pop());
         if(!(_loc7_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc6_ || this)
         {
            §§push(_loc2_);
            if(_loc6_ || param1)
            {
               §§push(_loc5_);
               if(!(_loc7_ && param1))
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc7_ && _loc2_))
                  {
                     addr110:
                     §§push(Number(§§pop()));
                     if(!_loc7_)
                     {
                        _loc2_ = §§pop();
                        if(_loc6_ || this)
                        {
                           §§goto(addr131);
                        }
                        §§goto(addr147);
                     }
                     §§goto(addr134);
                  }
                  §§goto(addr138);
               }
               §§goto(addr134);
            }
            §§goto(addr110);
         }
         addr131:
         §§push(_loc3_);
         if(_loc6_)
         {
            addr134:
            §§push(§§pop() * _loc5_);
            if(_loc6_)
            {
               addr138:
               §§push(Number(§§pop()));
            }
         }
         _loc3_ = §§pop();
         if(!(_loc7_ && param1))
         {
            addr147:
            this.§?n§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
         }
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§6a§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§;x§) : void
      {
      }
      
      public function addDamageParticles(param1:§;x§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §3!H§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2Vec2 = this.§?n§().GetPosition();
         §§push(_loc4_);
         §§push(_loc4_.x);
         if(_loc5_)
         {
            §§push(param2.x * param1);
            if(!_loc6_)
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
            if(_loc5_ || param2)
            {
               §§push(param2.y * param1);
               if(!(_loc6_ && param2))
               {
                  §§push(§§pop() * param3);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().y = §§pop();
            if(!_loc6_)
            {
               this.§?n§().SetPosition(_loc4_);
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
            §§push(Number(this.§ for§()));
            §§push(Number(this.§ for§()));
            if(_loc7_ || _loc3_)
            {
               _loc4_ = §§pop();
               if(_loc7_)
               {
                  §§push(360);
                  if(!_loc6_)
                  {
                     addr41:
                     §§push(§§pop() + §§pop());
                     §§push(360);
                     if(_loc7_)
                     {
                        §§push(§§pop() % §§pop());
                        if(!(_loc6_ && this))
                        {
                           §§push(Number(§§pop()));
                           if(!(_loc6_ && param1))
                           {
                              _loc4_ = §§pop();
                              if(!(_loc6_ && param1))
                              {
                                 §§push(Math.round(_loc4_ / 22.5) * 22.5);
                                 if(!_loc6_)
                                 {
                                    §§push(Number(§§pop()));
                                    if(_loc7_ || param1)
                                    {
                                       _loc4_ = §§pop();
                                       if(_loc7_)
                                       {
                                          _loc5_ = Number(0);
                                          addr102:
                                          if(param1 != 0)
                                          {
                                             addr105:
                                             §§push(_loc4_ % param1);
                                             if(!(_loc6_ && param2))
                                             {
                                                §§push(Number(§§pop()));
                                                if(_loc7_ || param2)
                                                {
                                                   _loc5_ = §§pop();
                                                   if(_loc7_)
                                                   {
                                                      addr125:
                                                      §§push(_loc5_);
                                                      §§push(param1);
                                                      if(!_loc6_)
                                                      {
                                                         §§push(§§pop() / 2);
                                                         if(!_loc6_)
                                                         {
                                                            if(§§pop() < §§pop())
                                                            {
                                                               addr134:
                                                               §§push(_loc4_ - _loc5_);
                                                               if(!_loc6_)
                                                               {
                                                                  addr140:
                                                                  _loc4_ = Number(§§pop());
                                                                  addr141:
                                                               }
                                                               else
                                                               {
                                                                  addr150:
                                                                  _loc4_ = Number(§§pop());
                                                                  addr149:
                                                               }
                                                               this.§>X§(_loc4_);
                                                               §§push(this.§ for§());
                                                               if(_loc7_ || param2)
                                                               {
                                                                  addr174:
                                                                  §§push(§§pop() + param1);
                                                               }
                                                               var _loc3_:* = Number(§§pop());
                                                               if(!_loc6_)
                                                               {
                                                                  §§push(Math.round(_loc3_ / 22.5) * 22.5);
                                                                  if(!(_loc6_ && param1))
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  _loc3_ = §§pop();
                                                                  if(!_loc6_)
                                                                  {
                                                                     addr197:
                                                                     this.§>X§(_loc3_);
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr197);
                                                            }
                                                            else
                                                            {
                                                               addr143:
                                                               §§push(_loc4_);
                                                               §§push(param1);
                                                               if(_loc7_)
                                                               {
                                                                  addr148:
                                                                  §§goto(addr149);
                                                                  §§push(§§pop() + (§§pop() - _loc5_));
                                                               }
                                                               §§goto(addr148);
                                                            }
                                                         }
                                                         §§goto(addr174);
                                                      }
                                                      §§goto(addr148);
                                                   }
                                                   §§goto(addr141);
                                                }
                                                §§goto(addr143);
                                             }
                                             §§goto(addr140);
                                          }
                                          §§goto(addr125);
                                       }
                                       §§goto(addr134);
                                    }
                                    §§goto(addr102);
                                 }
                                 §§goto(addr150);
                              }
                              §§goto(addr102);
                           }
                           §§goto(addr105);
                        }
                        §§goto(addr150);
                     }
                  }
                  §§goto(addr102);
               }
               §§goto(addr41);
            }
            §§goto(addr148);
         }
         §§goto(addr134);
      }
      
      public function §7Q§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§&Q§(this.§?n§().GetAngle()));
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            §§push(_loc2_);
            if(!(_loc4_ && this))
            {
               §§push(param1);
               if(!(_loc4_ && this))
               {
                  §§push(360);
                  if(_loc3_)
                  {
                     §§goto(addr71);
                  }
                  §§push(§§pop() / §§pop());
               }
               addr71:
               §§push(§§pop() * §§pop());
               if(!(_loc4_ && this))
               {
                  §§push(1000);
               }
               §§push(§§pop() - §§pop());
               if(!_loc4_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc4_)
                  {
                     §§goto(addr87);
                  }
                  §§goto(addr101);
               }
               addr87:
               _loc2_ = §§pop();
               if(_loc3_ || _loc3_)
               {
                  §§push(§%n§(_loc2_));
                  if(!_loc4_)
                  {
                     addr101:
                     _loc2_ = Number(§§pop());
                     if(!(_loc4_ && this))
                     {
                        addr109:
                        this.§?n§().SetAngle(_loc2_);
                     }
                  }
                  §§goto(addr101);
               }
               return;
            }
            §§goto(addr101);
         }
         §§goto(addr109);
      }
      
      public function §77§(param1:Number, param2:Point) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(!(_loc14_ && _loc3_))
         {
            this.rotate(param1);
         }
         var _loc3_:b2Vec2 = this.§?n§().GetPosition().Copy();
         §§push(_loc3_.x);
         if(_loc15_)
         {
            §§push(§§pop() - param2.x);
            if(_loc15_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_.y);
         if(_loc15_ || this)
         {
            §§push(§§pop() - param2.y);
            if(_loc15_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(!_loc14_)
         {
            §§push(_loc4_);
            if(_loc15_ || this)
            {
               §§push(0);
               if(_loc15_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc14_ && param1))
                  {
                     if(§§pop())
                     {
                        if(!(_loc14_ && param2))
                        {
                           §§goto(addr90);
                        }
                     }
                     §§goto(addr98);
                  }
                  addr90:
                  §§pop();
                  if(!_loc14_)
                  {
                     §§push(_loc5_);
                     if(_loc15_)
                     {
                        addr98:
                        addr97:
                        addr96:
                        if(§§pop() == 0)
                        {
                           if(_loc15_)
                           {
                              §§goto(addr101);
                           }
                        }
                        §§push(Number(Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)));
                     }
                     var _loc6_:* = §§pop();
                     §§push(_loc4_);
                     if(_loc15_)
                     {
                        §§push(§§pop() / _loc5_);
                        if(_loc15_)
                        {
                           addr120:
                           §§push(Number(§§pop()));
                        }
                        var _loc7_:* = §§pop();
                        §§push(Math.atan(_loc7_) * 180);
                        if(!(_loc14_ && param2))
                        {
                           §§push(§§pop() / Math.PI);
                           if(_loc15_ || _loc3_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc8_:* = §§pop();
                        if(!(_loc14_ && this))
                        {
                           §§push(_loc5_);
                           §§push(0);
                           if(!_loc14_)
                           {
                              if(§§pop() < §§pop())
                              {
                                 if(_loc15_)
                                 {
                                    addr170:
                                    §§push(_loc8_);
                                    if(!(_loc14_ && param1))
                                    {
                                       addr179:
                                       §§push(§§pop() + 180);
                                       if(_loc15_)
                                       {
                                          §§push(Number(§§pop()));
                                          if(_loc15_ || param1)
                                          {
                                             addr190:
                                             _loc8_ = §§pop();
                                             §§push(_loc8_);
                                          }
                                          §§push(param1);
                                          if(_loc15_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!(_loc14_ && _loc3_))
                                             {
                                                addr204:
                                                §§push(Number(§§pop()));
                                                §§push(Number(§§pop()));
                                             }
                                             §§goto(addr204);
                                          }
                                          var _loc9_:* = §§pop();
                                          if(_loc15_)
                                          {
                                             §§push(§§pop() * Math.PI);
                                             if(!(_loc14_ && param2))
                                             {
                                                §§push(§§pop() / 180);
                                                if(!(_loc14_ && this))
                                                {
                                                   addr227:
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             var _loc10_:* = §§pop();
                                             §§push(Math.sin(_loc10_) * _loc6_);
                                             if(_loc15_)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc11_:* = §§pop();
                                             §§push(Math.cos(_loc10_) * _loc6_);
                                             if(_loc15_ || param2)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc12_:* = §§pop();
                                             var _loc13_:b2Vec2 = new b2Vec2(param2.x + _loc11_,param2.y + _loc12_);
                                             if(!_loc14_)
                                             {
                                                this.§?n§().SetPosition(_loc13_);
                                             }
                                             return;
                                          }
                                          §§goto(addr227);
                                       }
                                       §§goto(addr190);
                                    }
                                    §§goto(addr204);
                                 }
                              }
                              §§goto(addr190);
                           }
                           §§goto(addr179);
                        }
                        §§goto(addr170);
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr101);
               }
               §§goto(addr97);
            }
            §§goto(addr96);
         }
         addr101:
      }
   }
}
