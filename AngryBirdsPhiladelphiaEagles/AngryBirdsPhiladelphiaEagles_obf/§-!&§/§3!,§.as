package §-!&§
{
   import § N§.Sprite;
   import §&^§.§[!7§;
   import §-!<§.§5!5§;
   import §-!<§.§8R§;
   import §2G§.§+b§;
   import §2G§.§,6§;
   import §2G§.§0Z§;
   import §2G§.§5!1§;
   import §2G§.§>U§;
   import §9T§.§1r§;
   import §9T§.§<!!§;
   import §`K§.§ L§;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §3!,§
   {
      
      public static const override:uint = §§pop();
      
      public static const §+p§:uint;
      
      public static const §'A§:uint;
      
      public static const §0m§:uint;
      
      public static const §`!?§:Boolean = true;
      
      public static const §&z§:Number = 5;
      
      public static const §#!M§:Number = 10;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(override));
         §§push(1);
         if(!(_loc2_ && _loc2_))
         {
            §§push(§§pop() << §§pop());
         }
         while(true)
         {
            §§push(§§findproperty(§+p§));
            §§push(1);
            if(!_loc2_)
            {
               §§push(§§pop() << 2);
            }
            §§pop().§+p§ = §§pop();
            while(true)
            {
               §§push(§§findproperty(§'A§));
               §§push(1);
               if(!(_loc2_ && _loc1_))
               {
                  §§push(§§pop() << 3);
               }
               §§pop().§'A§ = §§pop();
               §§push(§§findproperty(§0m§));
               §§push(1);
               if(_loc1_ || §3!,§)
               {
                  §§push(§§pop() << 4);
               }
               §§pop().§0m§ = §§pop();
               if(_loc2_)
               {
                  break;
               }
               §`!?§ = true;
               while(!(_loc2_ && §3!,§))
               {
                  §&z§ = 5;
                  while(!_loc2_)
                  {
                     §#!M§ = 10;
                     if(!_loc2_)
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
      
      private var §%!%§:String;
      
      private var §>8§:int;
      
      private var §4T§:int;
      
      public var §4V§:String;
      
      public var §]^§:int;
      
      private var § Q§:§5!1§;
      
      private var §"F§:§20§;
      
      private var §8f§:b2World;
      
      protected var §7!H§:String = "";
      
      protected var §8!O§:int = 1;
      
      private var §5@§:b2Fixture;
      
      private var §%'§:b2Body;
      
      private var §9!#§:b2Vec2;
      
      public var §8!2§:Number;
      
      public var §53§:Number;
      
      private var §`O§:Number;
      
      private var §@!4§:Boolean = false;
      
      private var §6_§:Number;
      
      private var §!V§:Number;
      
      private var § 5§:Number;
      
      private var §>M§:Number;
      
      private var §67§:Number;
      
      private var §4$§:Number;
      
      public var §&!N§:Number = 1;
      
      private var § 4§:Boolean = false;
      
      public var §2q§:Number = 0;
      
      public var §2m§:Number = 0;
      
      protected var §;Q§:Boolean = false;
      
      public var §3! §:§?k§;
      
      private var §8A§:Sprite;
      
      private var §]!B§:Number = 0;
      
      private var §5G§:Number = 0;
      
      private var § !'§:Number = 0;
      
      private var §6-§:Number = 1.0;
      
      private var §^!-§:Boolean = false;
      
      protected var §^2§:§^U§;
      
      private var §]Y§:Boolean = true;
      
      public function §3!,§(param1:§20§, param2:Sprite, param3:b2World, param4:§1r§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc14_:b2PolygonShape = null;
         if(_loc17_)
         {
            super();
            loop0:
            while(true)
            {
               this.§4V§ = param6;
               while(true)
               {
                  this.§ Q§ = §>U§.§=v§(param6);
                  this.§"F§ = param1;
                  this.§8A§ = param2;
                  this.§6-§ = param10;
                  loop2:
                  while(_loc17_)
                  {
                     this.§^!-§ = param11;
                     while(!_loc16_)
                     {
                        this.§>8§ = param5;
                        this.§]^§ = this.§ Q§.§]^§;
                        while(true)
                        {
                           this.§4T§ = this.§ Q§.§]!Q§();
                           this.§^2§ = new §^U§(§&z§,§#!M§);
                           this.§3! § = new §?k§(this,param2,param4);
                           loop5:
                           while(!(_loc16_ && param2))
                           {
                              §§push(this.§3! §);
                              loop6:
                              while(true)
                              {
                                 if(!§§pop().§[!B§(param1.§;§.§<'§))
                                 {
                                    addr76:
                                    while(true)
                                    {
                                       §§push(this.§3! §);
                                       addr78:
                                       while(true)
                                       {
                                          §§push(this.§4T§);
                                          addr80:
                                          while(true)
                                          {
                                             §§pop().§+,§(§§pop(),this.§ Q§.§2!>§(),this.§ Q§.§@!&§() / §1r§.§[M§,this.§ Q§.§7!!§() / §1r§.§[M§);
                                             addr96:
                                             while(true)
                                             {
                                                if(!_loc17_)
                                                {
                                                   continue loop5;
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr76:
                                 }
                                 addr38:
                                 while(true)
                                 {
                                    §§push(this.§3! §);
                                    if(_loc17_)
                                    {
                                       continue loop6;
                                    }
                                    §§goto(addr78);
                                 }
                                 continue loop5;
                              }
                           }
                           continue loop2;
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr76);
      }
      
      public static function §,!I§(param1:int, param2:§0Z§, param3:String = "") : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            if(param2 == null)
            {
               if(!_loc6_)
               {
                  §§goto(addr23);
               }
            }
            var _loc4_:String;
            §§push(_loc4_ = param2.§=[§[param1]);
            if(!_loc6_)
            {
               if(§§pop().length > 0)
               {
                  if(!_loc6_)
                  {
                     §§push(param3);
                     if(_loc5_ || §3!,§)
                     {
                        addr66:
                        if(§§pop().length <= 0)
                        {
                           if(!_loc6_)
                           {
                              addr71:
                              §§push(param2.§<j§);
                              if(_loc6_ && param1)
                              {
                              }
                              §§goto(addr81);
                           }
                        }
                        §[!7§.§,!5§(_loc4_,param3);
                     }
                     §§goto(addr81);
                  }
                  §§goto(addr71);
               }
               addr81:
               param3 = §§pop();
               if(_loc6_ && §3!,§)
               {
               }
               return;
            }
            §§goto(addr66);
         }
         addr23:
      }
      
      public static function §"j§(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(360);
         §§push(param1);
         if(_loc3_ || param1)
         {
            §§push(180);
            if(_loc3_)
            {
               §§push(§§pop() * §§pop());
               if(_loc2_ && param1)
               {
               }
               §§goto(addr64);
            }
            §§push(§§pop() % §§pop());
         }
         addr64:
         §§push(§§pop() / Math.PI);
         if(!_loc2_)
         {
            §§push(360);
         }
         §§push(§§pop() - §§pop());
         if(!_loc2_)
         {
            return §§pop() % 360;
         }
      }
      
      public static function §?!#§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(360);
         §§push(param1);
         if(!(_loc4_ && param1))
         {
            §§push(§§pop() % 360);
         }
         §§push(§§pop() - §§pop());
         if(_loc3_)
         {
            §§push(§§pop() / (180 / Math.PI));
            if(_loc3_ || _loc2_)
            {
               return Number(§§pop());
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§8A§;
      }
      
      public function get x() : Number
      {
         return this.§]!B§;
      }
      
      public function get y() : Number
      {
         return this.§5G§;
      }
      
      public function get scale() : Number
      {
         return this.§6-§;
      }
      
      public function get front() : Boolean
      {
         return this.§^!-§;
      }
      
      public function get §49§() : Number
      {
         return this.§%'§.GetPosition().x;
      }
      
      public function get §"!<§() : Number
      {
         return this.§%'§.GetPosition().y;
      }
      
      public function get §+!?§() : §5!1§
      {
         return this.§ Q§;
      }
      
      public function get § [§() : Boolean
      {
         return this.§`O§ >= 0;
      }
      
      public function get container() : §20§
      {
         return this.§"F§;
      }
      
      public function get §+!>§() : Boolean
      {
         return this.§]Y§;
      }
      
      public function set §+!>§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§]Y§ = param1;
         }
      }
      
      public function set §@!1§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            this.§@!4§ = param1;
         }
      }
      
      public function set §7!G§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§^2§.§7!G§ = param1;
         }
      }
      
      public function get §7!G§() : uint
      {
         return this.§^2§.§7!G§;
      }
      
      public function get §5§() : Boolean
      {
         return this.§ 4§;
      }
      
      public function set §5§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§ 4§ = param1;
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
         return this.§%!%§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§%!%§ = param1;
         }
      }
      
      public function §?[§(param1:b2FilterData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(this.§5@§);
            if(_loc2_)
            {
               if(!§§pop())
               {
               }
               §§goto(addr44);
            }
            §§pop().SetFilterData(param1);
         }
         addr44:
         if(!_loc3_)
         {
            §§push(this.§5@§);
         }
      }
      
      protected function §[q§(param1:String) : int
      {
         return §8R§.§[q§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2BodyDef = new b2BodyDef();
         §§push(_loc3_.position);
         while(true)
         {
            §§push(param1);
            while(true)
            {
               §§pop().x = §§pop();
               §§push(_loc3_.position);
               if(!(_loc5_ || _loc3_))
               {
                  break;
               }
               §§push(param2);
               if(!_loc5_)
               {
                  continue;
               }
               §§pop().y = §§pop();
               while(true)
               {
                  _loc3_.type = this.§ Q§.§&'§();
                  _loc3_.allowSleep = true;
                  while(!_loc4_)
                  {
                     _loc3_.active = true;
                     do
                     {
                        _loc3_.awake = true;
                        _loc3_.angularDamping = 1;
                        _loc3_.bullet = false;
                     }
                     while(_loc4_);
                     
                     if(!_loc4_)
                     {
                        return _loc3_;
                     }
                  }
               }
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§8f§);
         if(!(_loc1_ && _loc1_))
         {
            if(§§pop())
            {
               addr109:
               this.§8f§.DestroyBody(this.§`%§());
               while(true)
               {
                  this.§8f§ = null;
               }
               addr112:
            }
            loop0:
            while(true)
            {
               this.§3! §.dispose();
               while(true)
               {
                  §§push(this.§8A§);
                  if(!_loc1_)
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           §§push(this.§8A§);
                           break;
                        }
                        continue;
                     }
                     loop2:
                     while(true)
                     {
                        this.§5@§ = null;
                        loop3:
                        while(true)
                        {
                           this.§9!#§ = null;
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 if(_loc2_)
                                 {
                                    if(!(_loc2_ || _loc2_))
                                    {
                                       break;
                                    }
                                    continue;
                                 }
                                 continue loop2;
                              }
                              continue loop3;
                           }
                           continue loop0;
                        }
                     }
                  }
                  break;
               }
               §§pop().dispose();
               §§goto(addr86);
            }
         }
         §§goto(addr109);
      }
      
      public function §<H§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            §§push(this.§`%§());
            §§push(360);
            §§push(param1);
            if(!_loc3_)
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
      
      public function §'!I§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(360);
         §§push(this.§`%§().GetAngle());
         if(!_loc1_)
         {
            §§push(180);
            if(_loc2_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc1_ && _loc2_))
               {
                  §§push(§§pop() / Math.PI);
                  if(_loc2_)
                  {
                     addr59:
                     §§push(§§pop() % 360);
                  }
                  §§push(§§pop() - §§pop());
                  if(!(_loc1_ && _loc1_))
                  {
                     return §§pop() % 360;
                  }
               }
            }
         }
         §§goto(addr59);
      }
      
      public function §37§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§`%§().SetLinearVelocity(param1);
            while(true)
            {
               §§push(param2);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     continue;
                  }
                  while(true)
                  {
                     this.§!k§();
                     addr69:
                     while(true)
                     {
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§5@§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            §§push(this.§`%§());
            loop0:
            while(true)
            {
               §§push(§§pop().GetPosition());
               loop1:
               while(true)
               {
                  §§push(§§pop().x);
                  loop2:
                  while(true)
                  {
                     §§push(param3);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() >= §§pop());
                        §§push(§§pop() >= §§pop());
                        loop4:
                        while(true)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 §§pop();
                                 addr175:
                                 while(true)
                                 {
                                    §§push(this.§`%§());
                                    addr150:
                                    while(true)
                                    {
                                       §§push(§§pop().GetPosition());
                                       addr151:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr152:
                                          while(true)
                                          {
                                             §§push(param4);
                                             addr153:
                                             while(true)
                                             {
                                                §§push(§§pop() <= §§pop());
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              addr174:
                           }
                           while(true)
                           {
                              §§push(§§pop());
                              loop7:
                              while(_loc6_ || param3)
                              {
                                 if(§§pop())
                                 {
                                    §§pop();
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.§`%§());
                                       addr83:
                                       while(true)
                                       {
                                          §§push(§§pop().GetPosition());
                                          addr84:
                                          while(!_loc5_)
                                          {
                                             if(!_loc6_)
                                             {
                                                continue loop1;
                                             }
                                             §§push(§§pop().y);
                                             while(true)
                                             {
                                                if(!(_loc5_ && param3))
                                                {
                                                   if(_loc5_)
                                                   {
                                                      continue loop2;
                                                   }
                                                   §§push(param1);
                                                   while(_loc6_)
                                                   {
                                                      if(_loc5_ && param3)
                                                      {
                                                         continue loop3;
                                                      }
                                                      §§push(§§pop() >= §§pop());
                                                      if(_loc6_ || param2)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(!(_loc6_ || param3))
                                                            {
                                                               break;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               return §§pop();
                                                            }
                                                            addr66:
                                                            continue loop8;
                                                         }
                                                         continue loop7;
                                                         addr116:
                                                      }
                                                      §§goto(addr174);
                                                   }
                                                   §§goto(addr153);
                                                }
                                                §§push(§§pop().y);
                                                addr47:
                                                break;
                                                if(_loc5_ && param1)
                                                {
                                                   continue;
                                                }
                                                §§push(param2);
                                                if(!_loc5_)
                                                {
                                                   addr58:
                                                   §§push(§§pop() <= §§pop());
                                                   if(_loc5_ && param1)
                                                   {
                                                      continue loop8;
                                                   }
                                                }
                                                else
                                                {
                                                   §§goto(addr99);
                                                }
                                                §§goto(addr66);
                                             }
                                             §§goto(addr152);
                                          }
                                          §§goto(addr151);
                                          addr146:
                                          §§push(this.§`%§());
                                          if(_loc5_)
                                          {
                                             continue;
                                          }
                                          if(!(_loc5_ && param1))
                                          {
                                             continue loop0;
                                          }
                                          §§goto(addr150);
                                       }
                                    }
                                 }
                                 §§goto(addr116);
                              }
                              continue loop4;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr175);
      }
      
      public function §use§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§9!#§ = param1;
         }
      }
      
      public function §@y§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(this.§9!#§)
            {
               do
               {
                  this.§37§(this.§9!#§,false);
                  do
                  {
                     this.§9!#§ = null;
                  }
                  while(_loc2_);
                  
               }
               while(_loc2_ && _loc2_);
               
               addr51:
            }
            return;
         }
         §§goto(addr51);
      }
      
      public function §!k§(param1:b2Vec2 = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(!param1)
            {
               if(_loc2_)
               {
                  addr27:
                  §§push(this.§`%§());
                  if(_loc2_ || _loc2_)
                  {
                     param1 = §§pop().GetLinearVelocity();
                     addr39:
                     §§push(param1.x);
                     if(_loc2_ || param1)
                     {
                        §§push(0);
                        if(!_loc3_)
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc2_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    §§pop();
                                    §§goto(addr129);
                                 }
                              }
                           }
                           if(§§pop())
                           {
                              if(!_loc3_)
                              {
                                 §§push(this.§`%§());
                              }
                           }
                           else
                           {
                              §§push(this.§`%§());
                              if(!(_loc3_ && param1))
                              {
                                 addr103:
                                 §§pop().SetAngularVelocity(Math.atan2(param1.x,param1.y));
                                 if(_loc2_ || _loc2_)
                                 {
                                 }
                              }
                           }
                           §§goto(addr129);
                           §§goto(addr129);
                        }
                     }
                     §§goto(addr121);
                  }
                  §§goto(addr103);
               }
               addr129:
               if(!(_loc3_ && this))
               {
                  addr121:
                  §§push(param1.y == 0);
               }
               return;
            }
            §§goto(addr39);
         }
         §§goto(addr27);
      }
      
      public function §4j§(param1:b2Vec2 = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!param1)
            {
               param1 = this.§`%§().GetLinearVelocity();
               addr20:
            }
            §§push(Math.atan2(-param1.y,param1.x) * (180 / Math.PI));
            if(!(_loc4_ && param1))
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(_loc3_)
            {
               this.§<H§(_loc2_);
            }
            return;
         }
         §§goto(addr20);
      }
      
      public function §5!O§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§`%§().SetAngularVelocity(param1);
         }
      }
      
      public function §`%§() : b2Body
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§5@§);
            if(_loc2_)
            {
               if(§§pop() != null)
               {
                  if(!_loc1_)
                  {
                     §§push(this.§5@§);
                  }
                  else
                  {
                     §§goto(addr31);
                  }
               }
               §§goto(addr31);
            }
            return §§pop().GetBody();
         }
         addr31:
         return null;
      }
      
      public function §]7§(param1:Number = -9999, param2:Number = -9999) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            if(param1 != -9999)
            {
               if(_loc3_ || param2)
               {
                  this.§]!B§ = param1;
               }
               while(true)
               {
                  this.§5G§ = param2;
                  addr107:
                  while(true)
                  {
                  }
                  addr95:
                  if(_loc4_ && param1)
                  {
                     continue;
                  }
                  loop8:
                  while(true)
                  {
                     §§push(this.§`%§());
                     if(_loc3_ || param1)
                     {
                        §§push(§§pop().GetPosition());
                        if(!_loc4_)
                        {
                           §§push(this.§5G§);
                           if(!_loc4_)
                           {
                              if(!_loc4_)
                              {
                                 addr57:
                                 §§push(§1r§.§[M§);
                                 if(!(_loc4_ && param1))
                                 {
                                    addr67:
                                    §§pop().y = §§pop() * §§pop();
                                    if(_loc3_)
                                    {
                                       break;
                                    }
                                    while(!_loc4_)
                                    {
                                       §§goto(addr95);
                                    }
                                    §§goto(addr107);
                                    addr93:
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    §§goto(addr57);
                                 }
                                 addr81:
                              }
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 §§goto(addr93);
                              }
                              addr92:
                           }
                           §§goto(addr67);
                        }
                        while(true)
                        {
                           §§push(this.§]!B§);
                           if(!_loc4_)
                           {
                              §§goto(addr81);
                              §§push(§1r§.§[M§);
                           }
                           §§goto(addr92);
                        }
                        addr75:
                     }
                     addr74:
                     while(true)
                     {
                        §§goto(addr75);
                        continue loop8;
                     }
                  }
                  return;
                  addr102:
               }
            }
            while(true)
            {
               §§goto(addr74);
               §§goto(addr107);
            }
         }
         §§goto(addr102);
      }
      
      public function §break§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Number = NaN;
         var _loc3_:* = false;
         if(this.§;Q§)
         {
            _loc3_ = true;
            loop0:
            while(true)
            {
               this.§;Q§ = false;
               addr342:
               if(_loc6_ && this)
               {
                  continue;
               }
               §§push(true);
               loop3:
               while(true)
               {
                  _loc3_ = §§pop();
                  loop4:
                  while(true)
                  {
                     §§push(this.updateFlyingFrameAnimations(param2));
                     loop5:
                     while(true)
                     {
                        if(§§pop())
                        {
                           _loc3_ = true;
                           while(true)
                           {
                              loop32:
                              while(!(_loc6_ && param2))
                              {
                                 while(true)
                                 {
                                    §§push(this.§8A§);
                                    while(true)
                                    {
                                       §§pop().x = Math.round(this.§]!B§);
                                       addr87:
                                       loop30:
                                       while(!(_loc6_ && _loc3_))
                                       {
                                          §§push(this.§8A§);
                                          loop31:
                                          while(true)
                                          {
                                             §§pop().y = Math.round(this.§5G§);
                                             if(!_loc5_)
                                             {
                                                continue loop30;
                                             }
                                             addr60:
                                             if(_loc5_ || _loc3_)
                                             {
                                                if(_loc5_ || _loc3_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         continue;
                                                      }
                                                      addr316:
                                                      while(true)
                                                      {
                                                         §§push(true);
                                                         loop9:
                                                         while(true)
                                                         {
                                                            _loc3_ = §§pop();
                                                            while(true)
                                                            {
                                                               addr301:
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  if(this.updateBlinkingFrameAnimations(param2))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§push(true);
                                                                        if(!_loc5_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        _loc3_ = §§pop();
                                                                        while(true)
                                                                        {
                                                                        }
                                                                     }
                                                                     continue loop3;
                                                                     addr306:
                                                                  }
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     addr296:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           §§push(this.§3! §);
                                                                           while(true)
                                                                           {
                                                                              §§pop().§08§();
                                                                              loop23:
                                                                              while(!(_loc6_ && _loc3_))
                                                                              {
                                                                                 §§pop().§@O§.blurY = _loc4_;
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§3! §);
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§pop().§56§(param2);
                                                                                          break loop31;
                                                                                       }
                                                                                       addr193:
                                                                                       loop21:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc6_ && param1))
                                                                                          {
                                                                                             §§pop().§@O§.blurX = _loc4_;
                                                                                             while(true)
                                                                                             {
                                                                                                continue loop23;
                                                                                             }
                                                                                             addr203:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Boolean(§§pop().§@O§));
                                                                                                break loop21;
                                                                                             }
                                                                                             addr207:
                                                                                          }
                                                                                       }
                                                                                       continue loop5;
                                                                                    }
                                                                                    continue loop23;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§&!N§);
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() > 1);
                                                                              if(_loc5_ || _loc3_)
                                                                              {
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop18;
                                                                                       }
                                                                                       §§goto(addr156);
                                                                                       continue loop5;
                                                                                    }
                                                                                    continue loop14;
                                                                                    addr216:
                                                                                 }
                                                                                 addr285:
                                                                                 §§pop();
                                                                                 if(_loc6_ && param2)
                                                                                 {
                                                                                    continue loop11;
                                                                                 }
                                                                                 §§push(this.§3! §);
                                                                                 §§goto(addr207);
                                                                              }
                                                                              §§goto(addr285);
                                                                           }
                                                                           addr341:
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                              §§goto(addr342);
                                                                           }
                                                                           continue loop0;
                                                                        }
                                                                        addr135:
                                                                        if(!(_loc5_ || _loc3_))
                                                                        {
                                                                           continue;
                                                                        }
                                                                        if(!_loc5_)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        if(!§§pop())
                                                                        {
                                                                           this.§ !'§ = this.§ 5§;
                                                                           break loop30;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           this.§%K§(param1);
                                                                           continue loop32;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   break;
                                                }
                                                continue loop32;
                                             }
                                             while(true)
                                             {
                                                if(!_loc6_)
                                                {
                                                   §§goto(addr108);
                                                }
                                                break;
                                                §§goto(addr60);
                                             }
                                             §§goto(addr203);
                                          }
                                          while(true)
                                          {
                                             §§push(§`!?§);
                                             if(_loc6_ && param1)
                                             {
                                                continue loop5;
                                             }
                                             §§goto(addr135);
                                          }
                                          §§goto(addr296);
                                       }
                                       while(true)
                                       {
                                          if(_loc5_)
                                          {
                                             this.§]!B§ = this.§6_§;
                                             §§goto(addr106);
                                          }
                                          §§goto(addr145);
                                          §§goto(addr87);
                                       }
                                    }
                                    §§push(this.§ !'§);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() / 180);
                                       if(!_loc6_)
                                       {
                                          §§push(§§pop() * Math.PI);
                                       }
                                    }
                                    §§pop().rotation = §§pop();
                                    return;
                                    §§goto(addr155);
                                 }
                                 addr155:
                              }
                           }
                        }
                        while(true)
                        {
                           if(this.updateScreamingFrameAnimations(param2))
                           {
                              §§goto(addr316);
                           }
                           §§goto(addr301);
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr341);
         }
      }
      
      public function § !4§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§`%§().GetPosition().x);
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(this.§`%§().GetPosition().y);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc4_ && this))
         {
            this.§4$§ = this.§ 5§;
            this.§>M§ = this.§6_§;
            while(true)
            {
               this.§67§ = this.§!V§;
               addr54:
               if(!(_loc3_ || _loc1_))
               {
                  continue;
               }
               return;
               addr61:
            }
         }
         loop1:
         while(true)
         {
            §§push(this);
            §§push(this.§`%§().GetAngle());
            if(!(_loc4_ && _loc1_))
            {
               §§push(180);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§pop() * (§§pop() / Math.PI));
                  if(_loc3_ || _loc3_)
                  {
                     addr143:
                     §§push(§§pop() % 360);
                  }
                  §§pop().§ 5§ = §§pop();
                  §§push(this);
                  §§push(_loc1_);
                  if(!_loc4_)
                  {
                     §§push(§§pop() / §1r§.§[M§);
                  }
                  §§pop().§6_§ = §§pop();
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push(_loc2_);
                     if(_loc3_)
                     {
                        §§push(§§pop() / §1r§.§[M§);
                     }
                     §§pop().§!V§ = §§pop();
                     addr88:
                     while(!_loc4_)
                     {
                        §§push(this.§^2§);
                        continue loop2;
                     }
                     continue loop1;
                  }
               }
            }
            §§goto(addr143);
         }
         §§goto(addr61);
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
      
      public function §%K§(param1:Number, param2:Number = -1) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(param1);
         loop0:
         while(true)
         {
            §§push(1e-9);
            loop1:
            while(true)
            {
               if(§§pop() > §§pop())
               {
                  §§push(§ L§);
                  §§push("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = ");
                  if(_loc3_)
                  {
                     §§push(§§pop() + param1);
                     if(_loc3_ || param1)
                     {
                        §§push(§§pop() + " overriding to 0");
                     }
                  }
                  §§pop().log(§§pop());
                  while(true)
                  {
                  }
                  addr742:
               }
               while(true)
               {
                  §§push(param2);
                  if(_loc3_ || param1)
                  {
                     if(§§pop() < 0)
                     {
                        §§push(this.§"F§.§;§.§-!H§.§>f§);
                        loop4:
                        while(true)
                        {
                           §§push(§§pop() * 1000);
                           addr716:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr717:
                              while(!_loc4_)
                              {
                                 param2 = §§pop();
                                 while(!_loc4_)
                                 {
                                 }
                                 §§goto(addr742);
                              }
                              continue loop0;
                           }
                           loop39:
                           while(true)
                           {
                              if(!(_loc3_ || _loc3_))
                              {
                                 continue loop4;
                              }
                              §§push(this.§ 5§);
                              loop40:
                              while(true)
                              {
                                 §§push(§§pop() < §§pop());
                                 if(_loc3_)
                                 {
                                    addr297:
                                    if(!(_loc4_ && this))
                                    {
                                       if(_loc3_)
                                       {
                                          §§push(§§pop());
                                          if(!(_loc4_ && param2))
                                          {
                                             if(§§pop())
                                             {
                                                addr315:
                                                if(!_loc4_)
                                                {
                                                   §§pop();
                                                   loop47:
                                                   while(true)
                                                   {
                                                      §§push(this.§ 5§);
                                                      if(!_loc4_)
                                                      {
                                                         continue loop40;
                                                      }
                                                      loop9:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() == this.§>M§);
                                                         loop10:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               loop11:
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  §§push(param1);
                                                                  loop12:
                                                                  while(!(_loc4_ && param1))
                                                                  {
                                                                     §§push(§§pop() == 0);
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              this.§2q§ = 0;
                                                                              this.§]!B§ = this.§6_§;
                                                                              addr590:
                                                                              §§push(this.§!V§);
                                                                              loop14:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() == this.§67§);
                                                                                 addr596:
                                                                                 addr498:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    break loop40;
                                                                                 }
                                                                                 §§pop();
                                                                                 §§push(this.§4$§);
                                                                                 if(_loc4_ && param1)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§push(this.§ 5§);
                                                                                 loop28:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    addr428:
                                                                                    loop29:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(180);
                                                                                       loop30:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() <= §§pop());
                                                                                          loop31:
                                                                                          while(!§§pop())
                                                                                          {
                                                                                             §§push(this.§4$§);
                                                                                             §§push(this.§ 5§);
                                                                                             loop32:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() > §§pop());
                                                                                                if(!(_loc3_ || param2))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§push(§§pop());
                                                                                                loop33:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      loop34:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         §§push(this.§4$§);
                                                                                                         if(_loc3_)
                                                                                                         {
                                                                                                            if(_loc3_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(this.§ 5§);
                                                                                                               continue loop28;
                                                                                                            }
                                                                                                            addr685:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               break loop12;
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               break loop34;
                                                                                                            }
                                                                                                            addr582:
                                                                                                         }
                                                                                                      }
                                                                                                      loop18:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() == §§pop());
                                                                                                         addr584:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr585:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop())
                                                                                                               {
                                                                                                                  this.§2m§ = 0;
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§push(this);
                                                                                                                  §§push(param1);
                                                                                                                  if(!_loc4_)
                                                                                                                  {
                                                                                                                     §§push(this.§67§);
                                                                                                                     if(_loc3_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - this.§!V§);
                                                                                                                        if(_loc3_)
                                                                                                                        {
                                                                                                                           addr560:
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!(_loc4_ && this))
                                                                                                                           {
                                                                                                                              addr569:
                                                                                                                              §§push(§§pop() / param2);
                                                                                                                           }
                                                                                                                           §§pop().§2m§ = §§pop();
                                                                                                                           if(!_loc4_)
                                                                                                                           {
                                                                                                                              §§push(this);
                                                                                                                              §§push(this.§!V§);
                                                                                                                              if(!(_loc4_ && param2))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + this.§2m§);
                                                                                                                              }
                                                                                                                              §§pop().§5G§ = §§pop();
                                                                                                                              loop21:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 addr179:
                                                                                                                                 addr205:
                                                                                                                                 loop45:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc4_ && this)
                                                                                                                                    {
                                                                                                                                       continue loop21;
                                                                                                                                    }
                                                                                                                                    §§push(this.§ 5§);
                                                                                                                                    if(_loc3_)
                                                                                                                                    {
                                                                                                                                       addr26:
                                                                                                                                       if(_loc3_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          addr33:
                                                                                                                                          §§push(this.§4$§);
                                                                                                                                          if(!(_loc3_ || this))
                                                                                                                                          {
                                                                                                                                             continue loop32;
                                                                                                                                          }
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             continue loop28;
                                                                                                                                          }
                                                                                                                                          addr45:
                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                          if(_loc3_)
                                                                                                                                          {
                                                                                                                                             §§push(180);
                                                                                                                                             if(!_loc3_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             if(!_loc4_)
                                                                                                                                             {
                                                                                                                                                if(_loc3_ || this)
                                                                                                                                                {
                                                                                                                                                   addr59:
                                                                                                                                                   §§push(§§pop() > §§pop());
                                                                                                                                                   if(!(_loc4_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      addr67:
                                                                                                                                                      if(_loc3_ || param2)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc4_ && param2))
                                                                                                                                                         {
                                                                                                                                                            while(§§pop())
                                                                                                                                                            {
                                                                                                                                                               if(!_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop45;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     addr268:
                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc4_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           addr466:
                                                                                                                                                                           if(_loc3_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           break loop39;
                                                                                                                                                                        }
                                                                                                                                                                        addr393:
                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        break loop31;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop47;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(this);
                                                                                                                                                                  §§push(this.§ 5§);
                                                                                                                                                                  if(_loc3_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param1);
                                                                                                                                                                     if(!(_loc4_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§4$§);
                                                                                                                                                                        if(!(_loc4_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() + 360);
                                                                                                                                                                           if(!_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              addr120:
                                                                                                                                                                              §§push(§§pop() - this.§ 5§);
                                                                                                                                                                              if(_loc3_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 addr130:
                                                                                                                                                                                 addr141:
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(_loc3_ || _loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr139:
                                                                                                                                                                                    §§push(§§pop() / param2);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§pop().§ !'§ = §§pop() + §§pop();
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr139);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr130);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr120);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr139);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr141);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr130);
                                                                                                                                                            }
                                                                                                                                                            addr81:
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr596);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop())
                                                                                                                                                            {
                                                                                                                                                               this.§ !'§ = this.§ 5§;
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§4$§);
                                                                                                                                                               if(!(_loc4_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§ 5§);
                                                                                                                                                                  if(_loc4_ && this)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                     addr496:
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop() > §§pop());
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        continue loop31;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr498);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop14;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr717);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr67);
                                                                                                                                                         }
                                                                                                                                                         continue loop1;
                                                                                                                                                         addr505:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr17);
                                                                                                                                                   }
                                                                                                                                                   continue loop33;
                                                                                                                                                }
                                                                                                                                                continue loop18;
                                                                                                                                             }
                                                                                                                                             continue loop30;
                                                                                                                                          }
                                                                                                                                          addr502:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() == 0);
                                                                                                                                             addr504:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr505);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc3_)
                                                                                                                                          {
                                                                                                                                             if(_loc3_)
                                                                                                                                             {
                                                                                                                                                §§push(this.§ 5§);
                                                                                                                                                continue loop32;
                                                                                                                                             }
                                                                                                                                             continue loop12;
                                                                                                                                          }
                                                                                                                                          continue loop29;
                                                                                                                                          §§goto(addr26);
                                                                                                                                       }
                                                                                                                                       addr148:
                                                                                                                                    }
                                                                                                                                    §§goto(addr45);
                                                                                                                                 }
                                                                                                                                 loop48:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() <= §§pop());
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          addr342:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(§§pop())
                                                                                                                                             {
                                                                                                                                                if(_loc3_ || param2)
                                                                                                                                                {
                                                                                                                                                   §§push(this);
                                                                                                                                                   §§push(this.§ 5§);
                                                                                                                                                   if(!(_loc4_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§push(param1);
                                                                                                                                                      if(!(_loc4_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§4$§);
                                                                                                                                                         if(!(_loc4_ && param2))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - this.§ 5§);
                                                                                                                                                            if(_loc3_ || this)
                                                                                                                                                            {
                                                                                                                                                               addr266:
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(_loc3_ || param1)
                                                                                                                                                               {
                                                                                                                                                                  §§push(param2);
                                                                                                                                                               }
                                                                                                                                                               §§pop().§ !'§ = §§pop() + §§pop();
                                                                                                                                                               §§goto(addr268);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr266);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   addr345:
                                                                                                                                                   §§push(this);
                                                                                                                                                   §§push(this.§ 5§);
                                                                                                                                                   if(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(param1);
                                                                                                                                                      if(!(_loc4_ && param2))
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§4$§);
                                                                                                                                                         if(_loc3_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - 360);
                                                                                                                                                            if(_loc3_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() - this.§ 5§);
                                                                                                                                                               if(!_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  addr391:
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param2);
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().§ !'§ = §§pop() + §§pop();
                                                                                                                                                                  §§goto(addr393);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr391);
                                                                                                                                                               §§push(§§pop() / §§pop());
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr391);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr148);
                                                                                                                                                §§push(this.§4$§);
                                                                                                                                             }
                                                                                                                                             continue loop48;
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() > §§pop());
                                                                                                                                          }
                                                                                                                                          addr342:
                                                                                                                                          addr210:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr413);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr342);
                                                                                                                                    }
                                                                                                                                    addr343:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       addr344:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!§§pop())
                                                                                                                                          {
                                                                                                                                             §§push(this.§4$§);
                                                                                                                                             continue loop39;
                                                                                                                                          }
                                                                                                                                          §§goto(addr345);
                                                                                                                                          §§goto(addr297);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr543:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              this.§5G§ = this.§!V§;
                                                                                                                              addr589:
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(this.§ 5§ == this.§4$§);
                                                                                                                              §§push(this.§ 5§ == this.§4$§);
                                                                                                                              addr518:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!§§pop())
                                                                                                                                 {
                                                                                                                                    if(_loc4_ && _loc3_)
                                                                                                                                    {
                                                                                                                                       continue loop11;
                                                                                                                                    }
                                                                                                                                    §§pop();
                                                                                                                                    §§goto(addr502);
                                                                                                                                    §§push(param1);
                                                                                                                                 }
                                                                                                                                 §§goto(addr504);
                                                                                                                                 addr170:
                                                                                                                                 if(_loc4_ && this)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    §§pop();
                                                                                                                                    §§goto(addr179);
                                                                                                                                 }
                                                                                                                                 §§goto(addr81);
                                                                                                                              }
                                                                                                                              §§goto(addr543);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr569);
                                                                                                                     }
                                                                                                                     §§goto(addr560);
                                                                                                                  }
                                                                                                                  §§goto(addr569);
                                                                                                               }
                                                                                                               §§goto(addr589);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr413:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr343);
                                                                                                   }
                                                                                                   addr17:
                                                                                                   return;
                                                                                                }
                                                                                             }
                                                                                             continue loop10;
                                                                                          }
                                                                                          §§push(this);
                                                                                          §§push(this.§ 5§);
                                                                                          if(!(_loc4_ && _loc3_))
                                                                                          {
                                                                                             §§push(param1);
                                                                                             if(!(_loc4_ && param2))
                                                                                             {
                                                                                                §§push(this.§4$§);
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   §§push(§§pop() - this.§ 5§);
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      addr464:
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      if(!_loc4_)
                                                                                                      {
                                                                                                         §§push(param2);
                                                                                                      }
                                                                                                      §§pop().§ !'§ = §§pop() + §§pop();
                                                                                                      §§goto(addr466);
                                                                                                   }
                                                                                                }
                                                                                                §§push(§§pop() / §§pop());
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr464);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§push(this);
                                                                        §§push(param1);
                                                                        if(_loc3_)
                                                                        {
                                                                           §§push(this.§>M§);
                                                                           if(_loc3_ || param1)
                                                                           {
                                                                              §§push(§§pop() - this.§6_§);
                                                                              if(!(_loc4_ && this))
                                                                              {
                                                                                 addr642:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§push(param2);
                                                                                 }
                                                                                 §§pop().§2q§ = §§pop();
                                                                                 §§push(this);
                                                                                 §§push(this.§6_§);
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    §§push(§§pop() + this.§2q§);
                                                                                 }
                                                                                 §§pop().§]!B§ = §§pop();
                                                                                 §§goto(addr590);
                                                                              }
                                                                           }
                                                                           §§push(§§pop() / §§pop());
                                                                        }
                                                                        §§goto(addr642);
                                                                        §§goto(addr590);
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     param1 = §§pop();
                                                                     §§goto(addr687);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr661);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr585);
                                             }
                                             else
                                             {
                                                §§goto(addr210);
                                             }
                                          }
                                          break;
                                       }
                                       §§goto(addr496);
                                    }
                                    §§goto(addr344);
                                 }
                                 §§goto(addr315);
                              }
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    §§pop();
                                    §§goto(addr582);
                                    §§push(param1);
                                 }
                                 §§goto(addr584);
                              }
                           }
                           §§goto(addr720);
                        }
                     }
                     while(true)
                     {
                        §§push(param1);
                        if(!_loc4_)
                        {
                           §§push(§§pop() * -1);
                        }
                        §§goto(addr685);
                        §§goto(addr722);
                     }
                  }
                  §§goto(addr716);
               }
            }
         }
      }
      
      public function get §0v§() : Point
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(!§`!?§)
            {
            }
         }
         return null;
      }
      
      public function §?s§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§]^§);
            if(!_loc2_)
            {
               §§push(§5!1§.§5J§);
               if(_loc1_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc1_)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc2_ && _loc2_))
                        {
                           addr63:
                           §§pop();
                           return this.§]^§ == §5!1§.§0z§;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      public function §&l§() : Boolean
      {
         return this.§]^§ == §5!1§.§4!,§;
      }
      
      public function §&0§() : Boolean
      {
         return this.§]^§ == §5!1§.§#p§;
      }
      
      public function §for§() : Boolean
      {
         return this.§]^§ == §5!1§.§0z§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§]^§ == §5!1§.§[!2§;
      }
      
      public function isGround() : Boolean
      {
         return this.§]^§ == §5!1§.§2!M§;
      }
      
      public function §4H§() : Boolean
      {
         return this.§]^§ == §5!1§.§?m§;
      }
      
      public function §[!F§() : Boolean
      {
         return this.§]^§ == §5!1§.§9D§;
      }
      
      public function §51§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§4V§);
            loop0:
            while(true)
            {
               §§push("MISC_EXPLOSIVE_TNT");
               addr93:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  addr94:
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc1_ || _loc1_)
                              {
                                 if(_loc1_)
                                 {
                                    §§push(true);
                                    break;
                                 }
                                 continue loop0;
                              }
                           }
                           §§push(false);
                           if(_loc2_ && this)
                           {
                              break;
                           }
                           if(!_loc2_)
                           {
                              return §§pop();
                           }
                           addr52:
                           while(_loc2_ && _loc2_)
                           {
                           }
                           if(!(_loc2_ && _loc2_))
                           {
                              continue;
                           }
                           continue loop2;
                        }
                        return §§pop();
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
               }
            }
            addr92:
         }
         while(true)
         {
            §§push(this.§4V§);
            if(!_loc2_)
            {
               §§push("POWERUP_BOMB");
               if(_loc1_)
               {
                  §§goto(addr52);
                  §§push(§§pop() == §§pop());
               }
               else
               {
                  §§goto(addr93);
               }
               §§goto(addr94);
            }
            else
            {
               §§goto(addr92);
            }
         }
      }
      
      public function §83§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(Boolean(this.§&l§()));
            §§push(Boolean(this.§&l§()));
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§pop();
                  loop8:
                  while(true)
                  {
                     §§push(this.§4H§());
                     loop7:
                     while(true)
                     {
                        §§push(Boolean(§§pop()));
                        if(!_loc2_)
                        {
                           loop1:
                           while(true)
                           {
                              §§push(§§pop());
                              loop2:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    addr94:
                                    while(true)
                                    {
                                       §§pop();
                                       addr95:
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             continue loop8;
                                          }
                                          §§push(Boolean(this.§[!F§()));
                                       }
                                       continue loop7;
                                    }
                                    continue loop1;
                                    addr94:
                                 }
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!_loc2_)
                                       {
                                          continue loop0;
                                       }
                                       §§push(this.§5§);
                                       addr84:
                                       continue loop2;
                                       if(_loc1_ || _loc1_)
                                       {
                                          §§push(!§§pop());
                                       }
                                       if(_loc2_)
                                       {
                                          continue;
                                       }
                                       if(_loc1_ || _loc1_)
                                       {
                                          if(_loc1_)
                                          {
                                             addr51:
                                             return §§pop();
                                          }
                                          continue loop7;
                                       }
                                       §§goto(addr94);
                                    }
                                    §§goto(addr95);
                                 }
                              }
                           }
                           addr91:
                        }
                        §§goto(addr94);
                     }
                  }
                  addr104:
               }
               §§goto(addr91);
            }
         }
         §§goto(addr104);
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §?D§() : Number
      {
         return Number(Math.sqrt(this.§`%§().GetLinearVelocity().x * this.§`%§().GetLinearVelocity().x + this.§`%§().GetLinearVelocity().y * this.§`%§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         if(!this.§&0§())
         {
            loop0:
            while(true)
            {
               §§push(this.§"F§);
               loop1:
               while(true)
               {
                  §§push(§§pop().§6!8§());
                  loop2:
                  while(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        §§push(this.§`O§);
                        loop4:
                        while(true)
                        {
                           §§push(0);
                           loop5:
                           while(true)
                           {
                              §§push(§§pop() < §§pop());
                              loop6:
                              while(!(_loc10_ && param1))
                              {
                                 §§push(§§pop());
                                 loop7:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       §§pop();
                                       §§push(!param6);
                                    }
                                    if(!§§pop())
                                    {
                                       §§push(param1);
                                       loop8:
                                       while(true)
                                       {
                                          §§push(this.§`O§);
                                          if(!(_loc10_ && param3))
                                          {
                                             if(§§pop() > §§pop())
                                             {
                                                §§push(param1);
                                                if(_loc9_ || param2)
                                                {
                                                   §§push(this.§`O§);
                                                   if(_loc9_)
                                                   {
                                                      if(_loc9_ || param3)
                                                      {
                                                         §§push(Number(§§pop() - §§pop()));
                                                         loop9:
                                                         while(_loc9_)
                                                         {
                                                            if(_loc10_ && this)
                                                            {
                                                               continue loop4;
                                                            }
                                                            param1 = §§pop();
                                                            loop10:
                                                            while(true)
                                                            {
                                                               §§push(Boolean(param2));
                                                               if(!(_loc10_ && param3))
                                                               {
                                                                  §§push(§§pop());
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop45:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           addr407:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§83§());
                                                                              if(!_loc10_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop45;
                                                                           }
                                                                           §§push(Boolean(§§pop()));
                                                                        }
                                                                        addr406:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        loop13:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc10_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(int(Math.min(this.§8!2§,int(param1))));
                                                                              loop14:
                                                                              while(true)
                                                                              {
                                                                                 _loc7_ = §§pop();
                                                                                 loop15:
                                                                                 while(_loc9_)
                                                                                 {
                                                                                    §§push(§1r§.§5m§.getValue());
                                                                                    loop16:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * _loc7_);
                                                                                       loop17:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(int(§§pop()));
                                                                                          loop18:
                                                                                          while(!_loc10_)
                                                                                          {
                                                                                             _loc8_ = §§pop();
                                                                                             loop19:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc9_ || param2))
                                                                                                {
                                                                                                   addr582:
                                                                                                   §§push(param1);
                                                                                                   break;
                                                                                                }
                                                                                                §§push(param5);
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      loop21:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc8_);
                                                                                                         if(!(_loc10_ && param3))
                                                                                                         {
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§push(§§pop() * §1r§.§0!1§);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(int(§§pop()));
                                                                                                               loop37:
                                                                                                               for(; !(_loc10_ && param3); §§push(this.§8!2§),if(!(_loc9_ || param1))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               },if(_loc9_ || param1)
                                                                                                               {
                                                                                                                  continue loop9;
                                                                                                               },§§goto(addr196))
                                                                                                               {
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     continue loop17;
                                                                                                                  }
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     addr138:
                                                                                                                     §§push(1);
                                                                                                                     if(!(_loc10_ && param3))
                                                                                                                     {
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           continue loop5;
                                                                                                                        }
                                                                                                                        if(§§pop() >= §§pop())
                                                                                                                        {
                                                                                                                           this.§,A§(§0Z§.§-C§);
                                                                                                                           loop38:
                                                                                                                           while(!_loc10_)
                                                                                                                           {
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 this.addDamageParticles(this.§"F§.§;§.particles,param1);
                                                                                                                                 loop39:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          continue loop10;
                                                                                                                                       }
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             this.§3! §.setDamagedFrame();
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                if(_loc10_ && this)
                                                                                                                                                {
                                                                                                                                                   continue loop38;
                                                                                                                                                }
                                                                                                                                                if(_loc10_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr149);
                                                                                                                                                }
                                                                                                                                                §§goto(addr70);
                                                                                                                                                continue loop38;
                                                                                                                                             }
                                                                                                                                             continue loop39;
                                                                                                                                             addr123:
                                                                                                                                          }
                                                                                                                                          loop25:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc10_ && param3))
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(param5);
                                                                                                                                                   if(!(_loc10_ && param1))
                                                                                                                                                   {
                                                                                                                                                      if(_loc10_)
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                      §§push(Boolean(§§pop()));
                                                                                                                                                      loop27:
                                                                                                                                                      while(!_loc10_)
                                                                                                                                                      {
                                                                                                                                                         if(§§pop())
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop();
                                                                                                                                                               §§push(this.§@!4§);
                                                                                                                                                               addr231:
                                                                                                                                                               do
                                                                                                                                                               {
                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                               }
                                                                                                                                                               while(_loc9_);
                                                                                                                                                               
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!§§pop())
                                                                                                                                                            {
                                                                                                                                                               addr245:
                                                                                                                                                               §§push(this);
                                                                                                                                                               §§push(this.§8!2§);
                                                                                                                                                               if(!_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() - param1);
                                                                                                                                                               }
                                                                                                                                                               §§pop().§8!2§ = §§pop();
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                               }
                                                                                                                                                               addr245:
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§8!2§);
                                                                                                                                                               addr196:
                                                                                                                                                               while(!_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(1);
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc9_ || this))
                                                                                                                                                                        {
                                                                                                                                                                           addr562:
                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              break loop19;
                                                                                                                                                                           }
                                                                                                                                                                           if(§§pop() > §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              addr565:
                                                                                                                                                                              this.§,A§(§0Z§.§-C§);
                                                                                                                                                                              break loop15;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(param1);
                                                                                                                                                                           if(!(_loc10_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr630);
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() < §§pop());
                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop6;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop27;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop11;
                                                                                                                                                                           }
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              continue loop19;
                                                                                                                                                                           }
                                                                                                                                                                           addr173:
                                                                                                                                                                           if(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              continue loop10;
                                                                                                                                                                           }
                                                                                                                                                                           addr124:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop37;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr231);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                     §§goto(addr138);
                                                                                                                                                                  }
                                                                                                                                                                  if(§§pop() > §§pop())
                                                                                                                                                                  {
                                                                                                                                                                     addr550:
                                                                                                                                                                     this.§,A§(§0Z§.§9q§);
                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        addr589:
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§push(this.§8!2§);
                                                                                                                                                                  continue loop4;
                                                                                                                                                               }
                                                                                                                                                               addr506:
                                                                                                                                                               §§push(this.§`O§);
                                                                                                                                                               if(_loc9_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() / 2);
                                                                                                                                                                  break loop8;
                                                                                                                                                               }
                                                                                                                                                               break loop8;
                                                                                                                                                               §§goto(addr245);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop7;
                                                                                                                                                   }
                                                                                                                                                   continue loop13;
                                                                                                                                                }
                                                                                                                                                addr444:
                                                                                                                                                if(§§pop())
                                                                                                                                                {
                                                                                                                                                   §§push(this);
                                                                                                                                                   §§push(this.§53§);
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - 1);
                                                                                                                                                   }
                                                                                                                                                   §§pop().§8!2§ = §§pop();
                                                                                                                                                   if(!_loc9_)
                                                                                                                                                   {
                                                                                                                                                      addr505:
                                                                                                                                                      §§goto(addr506);
                                                                                                                                                      §§push(param1);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                return this.§8!2§;
                                                                                                                                                addr246:
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                             addr149:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc9_ || param2))
                                                                                                                                                {
                                                                                                                                                   continue loop25;
                                                                                                                                                }
                                                                                                                                                this.§8!2§ = 0;
                                                                                                                                                §3!,§.§,!I§(§0Z§.§-q§,this.§ Q§.§1h§,"ChannelDestroyed");
                                                                                                                                                while(_loc9_)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr123);
                                                                                                                                                }
                                                                                                                                                §§goto(addr245);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop0;
                                                                                                                                          addr55:
                                                                                                                                          addr318:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          addr518:
                                                                                                                                          this.§,A§(§0Z§.§9q§);
                                                                                                                                          if(!_loc10_)
                                                                                                                                          {
                                                                                                                                             addr471:
                                                                                                                                             §§push(Boolean(this.§?s§()));
                                                                                                                                             §§push(Boolean(this.§?s§()));
                                                                                                                                             continue loop7;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr550);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr121);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(!(_loc10_ && param2))
                                                                                                                                 {
                                                                                                                                    §§goto(addr124);
                                                                                                                                    if(_loc10_ && param2)
                                                                                                                                    {
                                                                                                                                       continue;
                                                                                                                                    }
                                                                                                                                    if(!(_loc10_ && param2))
                                                                                                                                    {
                                                                                                                                       continue loop37;
                                                                                                                                    }
                                                                                                                                    addr628:
                                                                                                                                    addr630:
                                                                                                                                    return §§pop();
                                                                                                                                    §§push(this.§8!2§);
                                                                                                                                 }
                                                                                                                                 continue loop15;
                                                                                                                                 addr185:
                                                                                                                              }
                                                                                                                              continue loop3;
                                                                                                                           }
                                                                                                                           continue loop21;
                                                                                                                        }
                                                                                                                        §§goto(addr149);
                                                                                                                     }
                                                                                                                     §§goto(addr199);
                                                                                                                  }
                                                                                                                  §§goto(addr444);
                                                                                                               }
                                                                                                            }
                                                                                                            addr342:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc9_ || param2))
                                                                                                            {
                                                                                                               continue loop18;
                                                                                                            }
                                                                                                            _loc8_ = §§pop();
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               break;
                                                                                                            }
                                                                                                            §§goto(addr342);
                                                                                                         }
                                                                                                         addr485:
                                                                                                         if(!(_loc10_ && param2))
                                                                                                         {
                                                                                                            addr456:
                                                                                                            §§goto(addr444);
                                                                                                            §§push(this.§8!2§ == this.§53§);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr565);
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop16;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§"F§);
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(§§pop().§;§);
                                                                                                      §§push(_loc8_);
                                                                                                      §§push(§<!!§.§3^§);
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         §§push(this.§8!2§ > param1);
                                                                                                         if(!(_loc10_ && param1))
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  §§pop();
                                                                                                                  addr291:
                                                                                                                  §§push(param3);
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                  }
                                                                                                                  §§pop().addScore(§§pop(),§§pop(),§§pop(),this.§`%§().GetPosition().x,this.§`%§().GetPosition().y,§8R§.§4!§(this.§4V§));
                                                                                                                  addr295:
                                                                                                                  §§goto(addr318);
                                                                                                               }
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr295);
                                                                                                      }
                                                                                                      §§goto(addr291);
                                                                                                   }
                                                                                                   §§push(this.§?s§());
                                                                                                   addr227:
                                                                                                   continue loop1;
                                                                                                   if(!(_loc10_ && param1))
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                   }
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   §§goto(addr173);
                                                                                                }
                                                                                             }
                                                                                             if(§§pop() <= §§pop())
                                                                                             {
                                                                                                §§goto(addr562);
                                                                                                §§push(param1);
                                                                                                §§push(12);
                                                                                             }
                                                                                             this.§,A§(§0Z§.§-q§);
                                                                                             §§goto(addr589);
                                                                                          }
                                                                                          continue loop14;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 if(_loc10_ && param3)
                                                                                 {
                                                                                    §§goto(addr585);
                                                                                 }
                                                                                 §§goto(addr525);
                                                                              }
                                                                           }
                                                                           §§goto(addr246);
                                                                        }
                                                                        §§goto(addr407);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr406);
                                                            }
                                                            if(!(_loc9_ || param1))
                                                            {
                                                               continue;
                                                            }
                                                            if(!(_loc10_ && this))
                                                            {
                                                               return §§pop();
                                                            }
                                                            §§goto(addr456);
                                                         }
                                                         continue;
                                                         addr430:
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr456);
                                                }
                                                §§goto(addr430);
                                             }
                                             §§goto(addr505);
                                          }
                                          break;
                                       }
                                       while(true)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             §§goto(addr518);
                                          }
                                          §§goto(addr471);
                                       }
                                       §§goto(addr589);
                                    }
                                    §§goto(addr582);
                                 }
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  return this.§8!2§;
               }
            }
         }
         §§goto(addr628);
      }
      
      public function §,A§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §3!,§.§,!I§(param1,this.§ Q§.§1h§);
         }
      }
      
      public function §3!'§(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§ Q§.material.§%!"§(param1));
         if(_loc2_ || this)
         {
            return §§pop() * this.§&!N§;
         }
      }
      
      public function §&F§(param1:String) : Number
      {
         return this.§ Q§.material.§?r§(param1);
      }
      
      public function §-X§() : String
      {
         return this.§ Q§.material.mName;
      }
      
      public function §=!$§() : Number
      {
         return this.§ Q§.§<m§();
      }
      
      public function §'q§() : int
      {
         return this.§ Q§.§@i§();
      }
      
      public function §@G§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 30;
         if(_loc3_ || _loc2_)
         {
            §§push(this.§`%§().IsAwake());
            loop0:
            while(true)
            {
               §§push(Boolean(§§pop()));
               loop1:
               while(true)
               {
                  §§push(§§pop());
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(this.§?s§());
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§push(Boolean(§§pop()));
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop6:
                                 while(!_loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          addr176:
                                          while(true)
                                          {
                                             §§push(this.§8!2§ == this.§53§);
                                          }
                                          addr75:
                                          if(_loc3_)
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop0;
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                    loop8:
                                    while(true)
                                    {
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          loop10:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                loop11:
                                                while(true)
                                                {
                                                   §§pop();
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(Math.abs(this.§`%§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                      if(_loc3_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            loop17:
                                                            while(true)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                  }
                                                                  addr133:
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     if(_loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop17;
                                                                  }
                                                                  if(!(_loc3_ || _loc2_))
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  if(_loc2_)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     §§goto(addr45);
                                                                  }
                                                                  §§pop();
                                                                  if(_loc3_)
                                                                  {
                                                                     if(!_loc2_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     continue loop8;
                                                                  }
                                                                  addr96:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc2_ && _loc1_)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  if(!_loc3_)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  §§push(Math.abs(this.§`%§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                                  if(_loc2_ && _loc3_)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  if(_loc2_ && _loc2_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  §§goto(addr75);
                                                               }
                                                               continue loop8;
                                                            }
                                                         }
                                                         addr130:
                                                      }
                                                      §§goto(addr133);
                                                   }
                                                }
                                             }
                                             §§goto(addr130);
                                          }
                                       }
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                           continue loop1;
                        }
                     }
                     addr45:
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr176);
      }
      
      public function §6D§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§`%§().IsAwake());
            if(_loc2_ || _loc1_)
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     addr57:
                     §§push(true);
                     if(!(_loc1_ && _loc1_))
                     {
                        return §§pop();
                     }
                     §§goto(addr76);
                  }
                  §§goto(addr76);
               }
               §§push(this.§0n§());
               if(!(_loc1_ && this))
               {
                  §§push(!§§pop());
               }
            }
            addr76:
            return §§pop();
         }
         §§goto(addr57);
      }
      
      protected function §0n§() : Boolean
      {
         return this.§^2§.§0n§();
      }
      
      public function §@!A§(param1:Number = 3) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§&!N§ = param1;
            while(true)
            {
               if(this.§&!N§ > 1)
               {
                  if(!_loc3_)
                  {
                     §§push(this.§3! §);
                     break;
                  }
               }
               else
               {
                  §§push(this.§3! §);
                  if(!(_loc2_ || _loc3_))
                  {
                     break;
                  }
                  §§pop().§@O§ = null;
                  if(_loc2_ || _loc2_)
                  {
                     continue;
                  }
               }
            }
            §§pop().§0V§();
         }
         §§goto(addr19);
      }
      
      public function §8!D§(param1:Boolean) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Number(0);
         if(!_loc4_)
         {
            if(this.§ Q§.§&'§() == §,6§.§"I§)
            {
               if(!_loc4_)
               {
                  §§push(this.§3! §.mW);
                  §§push(this.§3! §.mH);
                  if(!(_loc4_ && _loc2_))
                  {
                     addr159:
                     §§push(§§pop() * §§pop());
                     §§push(§1r§.§[M§);
                     §§push(§1r§.§[M§);
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        addr46:
                        §§push(this.§6-§);
                        if(!(_loc3_ || param1))
                        {
                           continue;
                        }
                        addr56:
                        §§push(Number(§§pop() / (§§pop() * §§pop())));
                        if(_loc3_ || param1)
                        {
                           _loc2_ = §§pop();
                           while(true)
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(_loc2_);
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 loop4:
                                 while(true)
                                 {
                                    §§push(this.§[o§());
                                    loop5:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       loop6:
                                       while(true)
                                       {
                                          if(!_loc4_)
                                          {
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §§push(Number(§§pop()));
                                                loop7:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   addr29:
                                                   while(true)
                                                   {
                                                      §§push(_loc2_);
                                                      if(!(_loc3_ || _loc3_))
                                                      {
                                                         break;
                                                      }
                                                      §§push(this.§6-§);
                                                      if(!_loc3_)
                                                      {
                                                         continue loop7;
                                                      }
                                                      if(_loc4_)
                                                      {
                                                         continue loop5;
                                                      }
                                                      if(_loc3_)
                                                      {
                                                         §§goto(addr46);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            break loop6;
                                                         }
                                                         addr164:
                                                      }
                                                      continue loop7;
                                                   }
                                                   continue loop6;
                                                }
                                                addr96:
                                             }
                                             break;
                                          }
                                          addr125:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             while(param1)
                                             {
                                                if(_loc3_)
                                                {
                                                   §§push(_loc2_);
                                                   continue loop4;
                                                }
                                             }
                                          }
                                          §§goto(addr29);
                                       }
                                       while(true)
                                       {
                                          _loc2_ = Number(§§pop());
                                          addr167:
                                          while(true)
                                          {
                                             continue loop3;
                                          }
                                       }
                                    }
                                 }
                              }
                              return §§pop();
                           }
                           addr66:
                        }
                        §§goto(addr96);
                     }
                     addr163:
                  }
                  §§goto(addr164);
               }
               §§goto(addr167);
            }
            else
            {
               §§push(this.§`%§().GetMass());
               if(!(_loc4_ && _loc3_))
               {
                  if(!(_loc4_ && this))
                  {
                     §§push(§§pop() / this.§5@§.GetDensity());
                     if(_loc3_)
                     {
                        addr124:
                        §§goto(addr125);
                        §§push(Number(§§pop()));
                     }
                     §§goto(addr125);
                  }
                  else
                  {
                     §§goto(addr159);
                  }
               }
               §§goto(addr124);
            }
         }
         §§goto(addr66);
      }
      
      public function §[o§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Number(1);
         if(!(_loc2_ && _loc1_))
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
                     if(!(_loc2_ && _loc1_))
                     {
                        §§push(§§pop() * Math.min(10,this.§3! §.§;!=§ - 1));
                        if(_loc2_)
                        {
                        }
                        addr81:
                        §§push(§§pop() - §§pop());
                        if(_loc3_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc3_ || _loc1_)
                           {
                           }
                           §§goto(addr94);
                        }
                        _loc1_ = §§pop();
                        addr94:
                        return §§pop();
                        §§push(_loc1_);
                     }
                     §§push(10);
                  }
                  §§push(§§pop() / §§pop());
               }
               §§goto(addr81);
            }
            §§goto(addr94);
         }
         §§goto(addr81);
      }
      
      public function §[!5§(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.§`%§().GetLinearVelocity().x);
         if(_loc7_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§`%§().GetLinearVelocity().y);
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         §§push(1);
         §§push(param1);
         if(_loc7_ || _loc3_)
         {
            §§push(§§pop() / _loc4_);
         }
         §§push(§§pop() + §§pop());
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc7_)
         {
            §§push(_loc2_);
            if(_loc7_)
            {
               §§push(_loc5_);
               while(true)
               {
                  §§push(§§pop() * §§pop());
               }
               addr151:
            }
            loop1:
            while(true)
            {
               §§push(Number(§§pop()));
               loop2:
               while(true)
               {
                  _loc2_ = §§pop();
                  loop3:
                  while(true)
                  {
                     §§push(_loc3_);
                     if(_loc7_)
                     {
                        §§push(_loc5_);
                        if(_loc7_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc6_ && this))
                           {
                              addr130:
                              if(_loc6_ && this)
                              {
                                 continue loop2;
                              }
                              if(_loc6_ && param1)
                              {
                                 continue loop1;
                              }
                              §§push(Number(§§pop()));
                           }
                           _loc3_ = §§pop();
                           while(true)
                           {
                              this.§`%§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
                              if(!(_loc6_ && this))
                              {
                                 if(!(_loc6_ && this))
                                 {
                                    break;
                                 }
                                 continue loop3;
                              }
                           }
                           return;
                           addr146:
                        }
                        break;
                     }
                     §§goto(addr130);
                  }
                  §§goto(addr151);
               }
            }
         }
         §§goto(addr146);
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§20§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§5!5§) : void
      {
      }
      
      public function addDamageParticles(param1:§5!5§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §4#§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2Vec2 = this.§`%§().GetPosition();
         §§push(_loc4_);
         §§push(_loc4_.x);
         if(_loc5_)
         {
            §§push(param2.x * param1);
            if(_loc5_ || param2)
            {
               §§push(§§pop() * param3);
            }
            §§push(§§pop() + §§pop());
         }
         §§pop().x = §§pop();
         if(!(_loc6_ && param3))
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
         }
         do
         {
            this.§`%§().SetPosition(_loc4_);
         }
         while(_loc6_);
         
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(param2)
         {
            if(_loc7_ || _loc3_)
            {
               §§push(this.§'!I§());
               loop0:
               while(true)
               {
                  §§push(Number(§§pop()));
                  §§push(Number(§§pop()));
                  addr202:
                  while(true)
                  {
                     _loc4_ = §§pop();
                     §§push(360);
                     addr204:
                     while(true)
                     {
                        §§push(§§pop() + §§pop());
                        §§push(360);
                        addr206:
                        while(true)
                        {
                           §§push(§§pop() % §§pop());
                           addr207:
                           while(true)
                           {
                              _loc4_ = Number(§§pop());
                           }
                        }
                     }
                  }
                  loop11:
                  while(true)
                  {
                     §§push(§§pop() % §§pop());
                     if(!(_loc7_ || this))
                     {
                        continue loop0;
                     }
                     _loc5_ = Number(§§pop());
                     if(!_loc6_)
                     {
                        loop12:
                        while(true)
                        {
                           §§push(_loc5_);
                           if(_loc7_ || this)
                           {
                              addr91:
                              if(!(_loc7_ || this))
                              {
                                 break;
                              }
                              continue loop11;
                           }
                           addr150:
                           addr186:
                           while(!(_loc6_ && param2))
                           {
                              §§push(param1);
                              continue loop11;
                           }
                           while(true)
                           {
                              _loc4_ = Number(§§pop());
                              §§push(Number(0));
                              break loop12;
                              §§goto(addr150);
                           }
                        }
                        while(true)
                        {
                           _loc5_ = §§pop();
                           §§goto(addr91);
                        }
                        addr82:
                     }
                     loop8:
                     while(true)
                     {
                        if(_loc7_)
                        {
                           §§push(param1);
                           while(true)
                           {
                              §§push(0);
                              if(!(_loc6_ && _loc3_))
                              {
                                 if(!_loc6_)
                                 {
                                    if(§§pop() != §§pop())
                                    {
                                       §§push(_loc4_);
                                    }
                                    else
                                    {
                                       §§goto(addr82);
                                    }
                                    §§goto(addr150);
                                 }
                                 else
                                 {
                                    §§goto(addr204);
                                 }
                              }
                              break;
                              addr48:
                              if(!(_loc6_ && param2))
                              {
                                 addr55:
                                 §§push(param1);
                                 if(!(_loc7_ || this))
                                 {
                                    while(§§pop() >= §§pop())
                                    {
                                       §§push(_loc4_);
                                       if(!(_loc7_ || param1))
                                       {
                                          break loop8;
                                       }
                                       §§goto(addr48);
                                       §§goto(addr55);
                                    }
                                    addr109:
                                    §§push(_loc4_);
                                    if(!_loc6_)
                                    {
                                       §§push(§§pop() - _loc5_);
                                       if(!(_loc6_ && param2))
                                       {
                                          if(!_loc6_)
                                          {
                                             addr134:
                                             _loc4_ = Number(§§pop());
                                             addr22:
                                             this.§<H§(_loc4_);
                                             addr37:
                                             if(!(_loc6_ && param2))
                                             {
                                                if(!_loc6_)
                                                {
                                                   if(false)
                                                   {
                                                      §§goto(addr37);
                                                   }
                                                   addr210:
                                                   §§push(this.§'!I§());
                                                   break loop8;
                                                }
                                                §§goto(addr109);
                                             }
                                             §§goto(addr22);
                                          }
                                          §§goto(addr207);
                                       }
                                       break loop8;
                                    }
                                    §§goto(addr134);
                                    addr108:
                                 }
                                 if(_loc6_)
                                 {
                                    break loop11;
                                 }
                                 §§push(§§pop() - _loc5_);
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    §§goto(addr222);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc6_ && param2))
                                 {
                                    §§goto(addr221);
                                 }
                              }
                              continue;
                              addr222:
                              §§push(§§pop() + §§pop());
                              if(_loc7_)
                              {
                                 §§push(Number(§§pop()));
                                 if(_loc7_)
                                 {
                                    _loc4_ = §§pop();
                                    §§goto(addr134);
                                 }
                                 addr221:
                                 §§push(Number(§§pop()));
                              }
                              var _loc3_:* = §§pop();
                              if(!_loc6_)
                              {
                                 §§push(Math.round(_loc3_ / 22.5) * 22.5);
                                 if(!_loc6_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 _loc3_ = §§pop();
                              }
                              do
                              {
                                 this.§<H§(_loc3_);
                              }
                              while(_loc6_ && this);
                              
                              return;
                           }
                           §§goto(addr206);
                        }
                        addr209:
                        while(true)
                        {
                           §§goto(addr186);
                        }
                     }
                     §§goto(addr213);
                     §§push(param1);
                  }
                  §§goto(addr202);
               }
            }
            §§goto(addr209);
         }
         §§goto(addr210);
      }
      
      public function §8N§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§"j§(this.§`%§().GetAngle()));
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(param1);
               if(_loc4_ || param1)
               {
                  §§push(360);
                  if(_loc4_ || _loc3_)
                  {
                     addr108:
                     §§push(§§pop() * §§pop());
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(1000);
                     }
                     §§push(§§pop() - §§pop());
                     if(_loc4_)
                     {
                        §§push(Number(§§pop()));
                     }
                     loop1:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        loop2:
                        while(true)
                        {
                           §§push(§?!#§(_loc2_));
                           if(!_loc3_)
                           {
                              §§push(Number(§§pop()));
                           }
                           if(_loc4_)
                           {
                              if(_loc4_)
                              {
                                 _loc2_ = §§pop();
                                 do
                                 {
                                    if(_loc4_ || this)
                                    {
                                       continue;
                                    }
                                    continue loop2;
                                 }
                                 while(this.§`%§().SetAngle(_loc2_), !_loc4_);
                                 
                                 return;
                                 addr40:
                              }
                              break;
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
                  §§push(§§pop() / §§pop());
               }
               §§goto(addr108);
            }
         }
         §§goto(addr40);
      }
      
      public function §!-§(param1:Number, param2:Point) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_)
         {
            this.rotate(param1);
         }
         var _loc3_:b2Vec2 = this.§`%§().GetPosition().Copy();
         §§push(_loc3_.x);
         if(_loc14_)
         {
            §§push(§§pop() - param2.x);
            if(!(_loc15_ && param2))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_.y);
         if(!_loc15_)
         {
            §§push(§§pop() - param2.y);
            if(_loc14_ || param2)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(!_loc15_)
         {
            §§push(_loc4_);
            if(!(_loc15_ && this))
            {
               §§push(0);
               if(!_loc15_)
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc15_ && this))
                  {
                     if(§§pop())
                     {
                        if(_loc14_)
                        {
                           §§goto(addr84);
                        }
                     }
                     §§goto(addr97);
                  }
                  addr84:
                  §§pop();
                  if(_loc14_ || param2)
                  {
                     addr92:
                     §§push(_loc5_);
                     if(_loc14_)
                     {
                        addr97:
                        addr96:
                        if(§§pop() == 0)
                        {
                           if(!_loc15_)
                           {
                              §§goto(addr100);
                           }
                        }
                        addr111:
                        var _loc6_:Number = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                        §§push(_loc4_);
                        if(!(_loc15_ && param1))
                        {
                           §§push(§§pop() / _loc5_);
                           if(!_loc15_)
                           {
                              addr124:
                              §§push(Number(§§pop()));
                           }
                           var _loc7_:* = §§pop();
                           §§push(Math.atan(_loc7_) * 180);
                           if(!(_loc15_ && this))
                           {
                              §§push(§§pop() / Math.PI);
                              if(!(_loc15_ && this))
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc8_:* = §§pop();
                           if(_loc14_ || param2)
                           {
                              §§push(_loc5_);
                              if(_loc14_ || _loc3_)
                              {
                                 §§push(0);
                                 if(!_loc15_)
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       if(!(_loc15_ && param2))
                                       {
                                          §§push(_loc8_);
                                          if(_loc14_)
                                          {
                                             addr190:
                                             _loc8_ = Number(§§pop() + 180);
                                             addr193:
                                             §§push(_loc8_);
                                             if(!_loc15_)
                                             {
                                                §§goto(addr196);
                                             }
                                             §§goto(addr208);
                                          }
                                          addr196:
                                          §§push(param1);
                                          if(_loc14_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc14_ || param2)
                                             {
                                                addr208:
                                                §§push(Number(§§pop()));
                                                §§push(Number(§§pop()));
                                             }
                                             §§goto(addr208);
                                          }
                                          var _loc9_:* = §§pop();
                                          if(!(_loc15_ && param1))
                                          {
                                             §§push(§§pop() * Math.PI);
                                             if(_loc14_ || this)
                                             {
                                                §§push(§§pop() / 180);
                                                if(_loc15_ && param2)
                                                {
                                                }
                                                §§goto(addr237);
                                             }
                                             §§push(Number(§§pop()));
                                          }
                                          addr237:
                                          var _loc10_:* = §§pop();
                                          §§push(Math.sin(_loc10_) * _loc6_);
                                          if(!(_loc15_ && _loc3_))
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc11_:* = §§pop();
                                          §§push(Math.cos(_loc10_) * _loc6_);
                                          if(_loc14_)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc12_:* = §§pop();
                                          var _loc13_:b2Vec2 = new b2Vec2(param2.x + _loc11_,param2.y + _loc12_);
                                          if(_loc14_)
                                          {
                                             this.§`%§().SetPosition(_loc13_);
                                          }
                                          return;
                                       }
                                    }
                                    §§goto(addr193);
                                 }
                                 §§goto(addr190);
                              }
                              §§goto(addr208);
                           }
                           §§goto(addr190);
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr111);
                  }
                  addr100:
                  return;
               }
               §§goto(addr96);
            }
            §§goto(addr97);
         }
         §§goto(addr92);
      }
   }
}
