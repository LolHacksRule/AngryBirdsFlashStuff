package §9"%§
{
   import §#]§.b2Vec2;
   import §%Q§.§4u§;
   import §%Q§.§6G§;
   import §%Q§.§9!n§;
   import §%Q§.§;!y§;
   import §%Q§.§@d§;
   import §1!$§.Sprite;
   import §4!!§.b2Settings;
   import §48§.b2Body;
   import §48§.b2BodyDef;
   import §48§.b2FilterData;
   import §48§.b2Fixture;
   import §48§.b2World;
   import §6!B§.§>!E§;
   import §6o§.§+!k§;
   import §9"!§.§9"3§;
   import §9"!§.§?E§;
   import §<!`§.b2PolygonShape;
   import §]!4§.§'G§;
   import §]!4§.§^!f§;
   import flash.geom.Point;
   
   public class §&!r§
   {
      
      public static const §3!=§:uint;
      
      public static const §&!!§:uint;
      
      public static const §@!_§:uint;
      
      public static const §+!,§:uint;
      
      public static const §"Y§:Boolean = true;
      
      public static const §>!e§:Number = 5;
      
      public static const §;7§:Number = 10;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(§§findproperty(§3!=§));
            §§push(1);
            if(_loc2_ || _loc1_)
            {
               §§push(§§pop() << §§pop());
            }
            §§pop().§3!=§ = §§pop();
            loop0:
            while(true)
            {
               §§push(§§findproperty(§&!!§));
               §§push(1);
               if(_loc2_)
               {
                  §§push(§§pop() << 2);
               }
               §§pop().§&!!§ = §§pop();
               while(true)
               {
                  §§push(§§findproperty(§@!_§));
                  §§push(1);
                  if(!_loc1_)
                  {
                     §§push(§§pop() << 3);
                  }
                  §§pop().§@!_§ = §§pop();
                  while(true)
                  {
                     §§push(§§findproperty(§+!,§));
                     §§push(1);
                     if(!(_loc1_ && _loc2_))
                     {
                        §§push(§§pop() << 4);
                     }
                     §§pop().§+!,§ = §§pop();
                     continue loop0;
                     addr44:
                     if(_loc2_ || _loc2_)
                     {
                        return;
                        addr51:
                     }
                  }
                  addr71:
                  loop4:
                  while(!(_loc1_ && §&!r§))
                  {
                     §>!e§ = 5;
                     while(true)
                     {
                        §;7§ = 10;
                        if(_loc1_)
                        {
                           continue;
                        }
                        if(_loc1_ && _loc2_)
                        {
                           continue loop4;
                        }
                        if(!(_loc2_ || _loc1_))
                        {
                           continue loop0;
                        }
                        §§goto(addr44);
                     }
                     §§goto(addr51);
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      private var §7"5§:String;
      
      private var §+!I§:int;
      
      private var §<!i§:int;
      
      public var §2!>§:String;
      
      public var §7[§:int;
      
      protected var §=a§:§4u§;
      
      private var §=!a§:§]a§;
      
      private var mWorld:b2World;
      
      protected var § R§:String = "";
      
      protected var §9"B§:int = 1;
      
      private var §?H§:b2Fixture;
      
      private var §&!#§:b2Body;
      
      private var §5_§:b2Vec2;
      
      public var §[" §:Number;
      
      public var §@!h§:Number;
      
      private var §2!G§:Number;
      
      private var §]I§:Boolean = false;
      
      private var §`j§:Number;
      
      private var §#"+§:Number;
      
      private var §?e§:Number;
      
      private var §?"7§:Number;
      
      private var §<D§:Number;
      
      private var §1!q§:Number;
      
      public var §'2§:Number = 1;
      
      private var §&p§:Boolean = false;
      
      public var §>!A§:Number = 0;
      
      public var § !1§:Number = 0;
      
      protected var §'!Z§:Boolean = false;
      
      public var §"!&§:§#!D§;
      
      private var §3^§:Sprite;
      
      private var §,!k§:Number = 0;
      
      private var §!Q§:Number = 0;
      
      private var §@P§:Number = 0;
      
      private var §[!q§:Number = 1.0;
      
      private var §'4§:Boolean = false;
      
      protected var §],§:§^">§;
      
      private var §%!]§:Boolean = true;
      
      public function §&!r§(param1:§]a§, param2:Sprite, param3:b2World, param4:§9"3§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc14_:b2PolygonShape = null;
         if(_loc16_ || param2)
         {
            super();
         }
         while(true)
         {
            this.§2!>§ = param6;
            while(true)
            {
               this.§=a§ = §6G§.§1!P§(param6);
               while(true)
               {
                  this.§=!a§ = param1;
                  while(!_loc17_)
                  {
                     this.§3^§ = param2;
                     loop4:
                     while(true)
                     {
                        this.§[!q§ = param10;
                        addr196:
                        while(true)
                        {
                           this.§'4§ = param11;
                           addr191:
                           while(true)
                           {
                              this.§+!I§ = param5;
                              continue loop4;
                           }
                        }
                     }
                  }
               }
               if(!(_loc16_ || param2))
               {
                  continue;
               }
               this.§],§ = new §^">§(§>!e§,§;7§);
               §§goto(addr149);
            }
         }
      }
      
      public static function §#"§(param1:int, param2:§;!y§, param3:String = "") : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            if(param2 == null)
            {
               if(_loc5_ || §&!r§)
               {
                  §§goto(addr33);
               }
            }
            var _loc4_:String;
            §§push(_loc4_ = param2.§1!u§[param1]);
            if(_loc5_)
            {
               if(§§pop().length > 0)
               {
                  if(!_loc6_)
                  {
                     §§push(param3);
                     if(_loc5_ || param1)
                     {
                        if(§§pop().length <= 0)
                        {
                           if(_loc5_)
                           {
                              §§push(param2.§7!u§);
                              if(_loc5_ || param1)
                              {
                              }
                              §§goto(addr91);
                           }
                        }
                        §>!E§.§@"8§(_loc4_,param3);
                     }
                     §§goto(addr91);
                  }
               }
               addr91:
               param3 = §§pop();
               §§goto(addr90);
            }
            addr90:
            if(_loc6_)
            {
            }
            return;
         }
         addr33:
      }
      
      public static function §!6§(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(360);
         §§push(param1);
         if(!(_loc2_ && _loc2_))
         {
            §§push(180);
            if(!(_loc2_ && §&!r§))
            {
               §§push(§§pop() * §§pop());
               if(_loc3_ || param1)
               {
                  §§push(§§pop() / Math.PI);
                  if(_loc3_)
                  {
                     addr67:
                     §§push(§§pop() % 360);
                  }
                  §§push(§§pop() - §§pop());
                  if(!(_loc2_ && §&!r§))
                  {
                     return §§pop() % 360;
                  }
               }
            }
         }
         §§goto(addr67);
      }
      
      public static function §<2§(param1:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(360);
         §§push(param1);
         if(_loc3_)
         {
            §§push(§§pop() % 360);
         }
         §§push(§§pop() - §§pop());
         if(_loc3_ || _loc3_)
         {
            §§push(§§pop() / (180 / Math.PI));
            if(_loc3_)
            {
               return Number(§§pop());
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§3^§;
      }
      
      public function get x() : Number
      {
         return this.§,!k§;
      }
      
      public function get y() : Number
      {
         return this.§!Q§;
      }
      
      public function get scale() : Number
      {
         return this.§[!q§;
      }
      
      public function get front() : Boolean
      {
         return this.§'4§;
      }
      
      public function get §`!n§() : Number
      {
         return this.§&!#§.GetPosition().x;
      }
      
      public function get §5e§() : Number
      {
         return this.§&!#§.GetPosition().y;
      }
      
      public function get §3!4§() : §4u§
      {
         return this.§=a§;
      }
      
      public function get §##§() : Boolean
      {
         return this.§2!G§ >= 0;
      }
      
      public function get §%4§() : §]a§
      {
         return this.§=!a§;
      }
      
      public function get §!!o§() : Boolean
      {
         return this.§%!]§;
      }
      
      public function set §!!o§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§%!]§ = param1;
         }
      }
      
      public function set §>"!§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§]I§ = param1;
         }
      }
      
      public function set §@!U§(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§],§.§@!U§ = param1;
         }
      }
      
      public function get §@!U§() : uint
      {
         return this.§],§.§@!U§;
      }
      
      public function get §]i§() : Boolean
      {
         return this.§&p§;
      }
      
      public function set §]i§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            this.§&p§ = param1;
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
         return this.§7"5§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§7"5§ = param1;
         }
      }
      
      public function §;!#§(param1:b2FilterData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§?H§);
            if(!(_loc3_ && param1))
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr42:
                     this.§?H§.§0!l§(param1);
                  }
               }
               return;
            }
         }
         §§goto(addr42);
      }
      
      protected function §,">§(param1:String) : int
      {
         return §'G§.§,">§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2BodyDef = new b2BodyDef();
         if(_loc5_)
         {
            §§push(_loc3_.position);
            loop0:
            while(true)
            {
               §§push(param1);
               addr138:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
               }
            }
         }
         while(true)
         {
            _loc3_.§<_§ = true;
            §§goto(addr83);
         }
         §§goto(addr64);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.mWorld);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.mWorld);
                     addr123:
                     while(true)
                     {
                        §§pop().§""=§(this.§=!y§());
                        addr126:
                        while(true)
                        {
                           this.mWorld = null;
                           addr110:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr121:
               }
               loop1:
               while(true)
               {
                  this.§"!&§.dispose();
                  loop2:
                  while(_loc1_)
                  {
                     §§push(this.§3^§);
                     if(!_loc2_)
                     {
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              §§push(this.§3^§);
                              addr80:
                              while(true)
                              {
                                 §§pop().dispose();
                                 addr81:
                                 while(_loc1_ || this)
                                 {
                                    this.§3^§ = null;
                                    while(_loc2_)
                                    {
                                       continue loop3;
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        while(true)
                        {
                           this.§?H§ = null;
                           do
                           {
                              this.§5_§ = null;
                              do
                              {
                                 this.§=a§ = null;
                              }
                              while(!(_loc1_ || _loc2_));
                              
                           }
                           while(_loc2_);
                           
                           if(_loc1_)
                           {
                              if(_loc1_)
                              {
                                 break;
                              }
                              §§goto(addr81);
                           }
                           §§goto(addr69);
                           §§goto(addr69);
                        }
                        if(!_loc1_)
                        {
                           continue loop1;
                        }
                        if(_loc1_)
                        {
                           return;
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr80);
                  }
                  §§goto(addr126);
               }
            }
            §§goto(addr123);
         }
         §§goto(addr126);
      }
      
      public function §3!a§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§=!y§());
            §§push(360);
            §§push(param1);
            if(!_loc2_)
            {
               §§push(§§pop() % 360);
            }
            §§push(§§pop() - §§pop());
            if(_loc3_ || this)
            {
               §§push(§§pop() / (180 / Math.PI));
            }
            §§pop().§>"4§(§§pop());
         }
      }
      
      public function §,!G§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(360);
         §§push(this.§=!y§().GetAngle());
         if(_loc2_ || _loc1_)
         {
            §§push(180);
            if(!(_loc1_ && this))
            {
               §§push(§§pop() * §§pop());
               if(_loc2_)
               {
                  §§push(§§pop() / Math.PI);
                  if(!_loc1_)
                  {
                     addr65:
                     §§push(§§pop() % 360);
                  }
               }
               §§push(§§pop() - §§pop());
               if(_loc2_)
               {
                  return §§pop() % 360;
               }
            }
         }
         §§goto(addr65);
      }
      
      public function §^!u§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§=!y§().SetLinearVelocity(param1);
            loop0:
            while(true)
            {
               §§push(param2);
               while(true)
               {
                  if(!§§pop())
                  {
                     continue;
                  }
                  while(true)
                  {
                     this.§'! §();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr55);
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§?H§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            §§push(this.§=!y§());
            loop0:
            while(true)
            {
               §§push(§§pop().GetPosition());
               addr191:
               while(true)
               {
                  §§push(§§pop().x);
                  addr192:
                  while(true)
                  {
                     §§push(param3);
                     loop3:
                     while(true)
                     {
                        §§push(§§pop() >= §§pop());
                        loop4:
                        while(true)
                        {
                           §§push(§§pop());
                           loop5:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 loop6:
                                 while(true)
                                 {
                                    §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       §§push(this.§=!y§());
                                       while(true)
                                       {
                                          §§push(§§pop().GetPosition());
                                          addr173:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             addr174:
                                             while(true)
                                             {
                                                §§push(param4);
                                                addr175:
                                                while(true)
                                                {
                                                   §§push(§§pop() <= §§pop());
                                                }
                                             }
                                          }
                                          loop17:
                                          for(; !(_loc6_ && this); while(true)
                                          {
                                             §§push(this.§=!y§());
                                             if(_loc5_)
                                             {
                                                continue loop0;
                                             }
                                             continue loop17;
                                          })
                                          {
                                             §§push(§§pop().GetPosition());
                                             while(true)
                                             {
                                                §§push(§§pop().y);
                                                addr118:
                                                while(_loc5_)
                                                {
                                                   §§push(param1);
                                                   while(!_loc6_)
                                                   {
                                                      §§push(§§pop() >= §§pop());
                                                      if(_loc5_)
                                                      {
                                                         if(!(_loc5_ || param1))
                                                         {
                                                            continue loop6;
                                                         }
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc6_ && param3)
                                                            {
                                                               break;
                                                            }
                                                            if(!(_loc5_ || param1))
                                                            {
                                                               continue loop5;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               §§goto(addr102);
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                               }
                                                               addr179:
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr133);
                                                            }
                                                            addr180:
                                                            while(_loc5_ || param2)
                                                            {
                                                               §§push(this.§=!y§());
                                                               continue loop17;
                                                            }
                                                            continue loop7;
                                                         }
                                                         addr133:
                                                         addr178:
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         if(!(_loc5_ || param1))
                                                         {
                                                            break;
                                                         }
                                                         §§push(§§pop() <= §§pop());
                                                         addr68:
                                                         continue loop17;
                                                         if(_loc6_ && this)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc5_ || param3)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               if(!(_loc5_ || param3))
                                                               {
                                                                  continue loop4;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§goto(addr178);
                                                               }
                                                               addr177:
                                                            }
                                                            addr102:
                                                            return §§pop();
                                                         }
                                                         §§goto(addr179);
                                                      }
                                                      §§goto(addr180);
                                                      §§push(param2);
                                                      if(_loc6_ && param3)
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc6_ && param3)
                                                      {
                                                         continue loop3;
                                                      }
                                                      §§goto(addr68);
                                                   }
                                                   §§goto(addr175);
                                                }
                                                §§goto(addr174);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr177);
                              }
                           }
                        }
                     }
                  }
               }
               if(_loc6_ && param1)
               {
                  continue;
               }
               §§push(§§pop().GetPosition());
               if(!_loc6_)
               {
                  if(_loc5_)
                  {
                     if(_loc5_)
                     {
                        §§push(§§pop().y);
                        if(_loc5_)
                        {
                           if(_loc5_ || this)
                           {
                              §§goto(addr53);
                           }
                           §§goto(addr192);
                        }
                        §§goto(addr118);
                     }
                     §§goto(addr191);
                  }
                  §§goto(addr173);
               }
               §§goto(addr117);
            }
         }
         §§goto(addr168);
      }
      
      public function §#!k§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§5_§ = param1;
         }
      }
      
      public function §[!§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§5_§)
            {
               do
               {
                  this.§^!u§(this.§5_§,false);
                  do
                  {
                     this.§5_§ = null;
                  }
                  while(_loc2_);
                  
               }
               while(!_loc1_);
               
               addr45:
            }
            return;
         }
         §§goto(addr45);
      }
      
      public function §'! §(param1:b2Vec2 = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!param1)
            {
               if(!(_loc3_ && this))
               {
                  §§push(this.§=!y§());
                  if(_loc2_ || this)
                  {
                     param1 = §§pop().GetLinearVelocity();
                     addr39:
                     §§push(param1.x);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(0);
                        if(!_loc3_)
                        {
                           §§push(§§pop() == §§pop());
                           if(!_loc3_)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc3_ && this))
                                 {
                                    §§pop();
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr122:
                                       addr121:
                                       addr120:
                                       if(param1.y != 0)
                                       {
                                          §§push(this.§=!y§());
                                          if(_loc2_)
                                          {
                                             §§pop().§=!Q§(Math.atan2(param1.x,param1.y));
                                             addr93:
                                             if(_loc3_ && param1)
                                             {
                                             }
                                          }
                                       }
                                       §§goto(addr134);
                                    }
                                    addr134:
                                    if(!(_loc3_ && this))
                                    {
                                       addr130:
                                       §§push(this.§=!y§());
                                    }
                                    return;
                                 }
                              }
                           }
                           §§goto(addr122);
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr120);
                  }
                  §§goto(addr93);
               }
               §§goto(addr130);
            }
            §§goto(addr39);
         }
         §§goto(addr130);
      }
      
      public function §0m§(param1:b2Vec2 = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            if(!param1)
            {
               param1 = this.§=!y§().GetLinearVelocity();
               addr36:
            }
            §§push(Math.atan2(-param1.y,param1.x) * (180 / Math.PI));
            if(_loc4_ || param1)
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(!_loc3_)
            {
               this.§3!a§(_loc2_);
            }
            return;
         }
         §§goto(addr36);
      }
      
      public function §3!N§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§=!y§().§=!Q§(param1);
         }
      }
      
      public function §=!y§() : b2Body
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§?H§);
            if(_loc1_ || _loc1_)
            {
               if(§§pop() != null)
               {
                  if(_loc1_ || _loc2_)
                  {
                     §§goto(addr48);
                  }
               }
               return null;
            }
            §§goto(addr48);
         }
         addr48:
         return this.§?H§.GetBody();
      }
      
      public function §<"0§(param1:Number = -9999, param2:Number = -9999) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(param1 != -9999)
            {
               while(true)
               {
                  this.§,!k§ = param1;
                  while(true)
                  {
                     this.§!Q§ = param2;
                     addr108:
                     while(_loc4_)
                     {
                        while(true)
                        {
                        }
                     }
                  }
               }
               addr114:
            }
            while(true)
            {
               §§push(this.§=!y§());
               loop4:
               while(true)
               {
                  §§push(§§pop().GetPosition());
                  addr90:
                  while(true)
                  {
                     §§push(this.§,!k§);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§9"3§.§'"F§);
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           addr41:
                           §§push(§9"3§.§'"F§);
                           if(_loc3_ && this)
                           {
                              continue;
                           }
                           §§push(§§pop() * §§pop());
                           if(_loc4_)
                           {
                              §§pop().y = §§pop();
                              if(_loc3_ && param1)
                              {
                                 continue loop4;
                              }
                              if(_loc4_)
                              {
                                 if(!_loc3_)
                                 {
                                    return;
                                 }
                                 §§goto(addr114);
                              }
                              §§goto(addr108);
                           }
                           else
                           {
                              addr102:
                              while(true)
                              {
                                 §§pop().x = §§pop();
                                 continue loop4;
                              }
                              addr102:
                           }
                        }
                        addr101:
                     }
                     §§goto(addr102);
                  }
               }
            }
         }
         §§goto(addr110);
      }
      
      public function §="'§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc3_:* = false;
         if(_loc6_)
         {
            §§push(this.§'!Z§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(true);
                     addr467:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        addr468:
                        while(true)
                        {
                           this.§'!Z§ = false;
                           addr462:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr466:
               }
               while(true)
               {
                  §§push(this.updateSpecialAnimation(param2));
                  if(!_loc5_)
                  {
                     if(_loc6_ || this)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§push(true);
                              addr456:
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 addr457:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           addr455:
                        }
                        loop7:
                        while(true)
                        {
                           §§push(this.updateFlyingFrameAnimations(param2));
                           loop8:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(true);
                                    addr427:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       addr438:
                                       while(!_loc5_)
                                       {
                                       }
                                       §§goto(addr468);
                                    }
                                 }
                                 addr426:
                              }
                              while(true)
                              {
                                 §§push(this.updateScreamingFrameAnimations(param2));
                                 loop13:
                                 for(; !(_loc5_ && this); while(_loc6_ || param2)
                                 {
                                    _loc3_ = §§pop();
                                    §§goto(addr394);
                                 })
                                 {
                                    if(§§pop())
                                    {
                                       loop14:
                                       while(_loc6_)
                                       {
                                          §§push(true);
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             addr420:
                                             while(true)
                                             {
                                             }
                                             loop30:
                                             for(; _loc6_ || _loc3_; while(true)
                                             {
                                                if(_loc6_ || param2)
                                                {
                                                   if(!(_loc5_ && param1))
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         §§goto(addr283);
                                                      }
                                                      §§goto(addr456);
                                                   }
                                                   break;
                                                }
                                                continue loop30;
                                                §§goto(addr236);
                                             },§§goto(addr337))
                                             {
                                                §§pop();
                                                loop31:
                                                while(true)
                                                {
                                                   §§push(this.§"!&§);
                                                   addr263:
                                                   while(_loc6_)
                                                   {
                                                      §§push(Boolean(§§pop().§[y§));
                                                      continue loop30;
                                                   }
                                                   loop25:
                                                   while(true)
                                                   {
                                                      §§pop().§[!k§();
                                                      while(true)
                                                      {
                                                         loop27:
                                                         while(true)
                                                         {
                                                            §§push(this.§'2§);
                                                            loop28:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() > 1);
                                                               addr337:
                                                               while(_loc6_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     continue loop30;
                                                                  }
                                                                  addr283:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop35:
                                                                        while(true)
                                                                        {
                                                                           §§push(4);
                                                                           §§push(this.§"!&§.§[y§.blurX - 4);
                                                                           if(_loc6_ || param2)
                                                                           {
                                                                              §§push(param2);
                                                                              if(_loc6_ || this)
                                                                              {
                                                                                 §§push(§§pop() / 20);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc5_ && param1))
                                                                              {
                                                                                 addr317:
                                                                                 §§push(§§pop() % 28);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc5_)
                                                                              {
                                                                                 continue loop28;
                                                                              }
                                                                              addr330:
                                                                              _loc4_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§"!&§);
                                                                                 loop37:
                                                                                 for(; _loc6_; if(!(_loc6_ || param2))
                                                                                 {
                                                                                    continue;
                                                                                 },§§pop().§#"E§(param2),§§goto(addr232))
                                                                                 {
                                                                                    §§pop().§[y§.blurX = _loc4_;
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§"!&§);
                                                                                       loop53:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().§[y§.blurY = _loc4_;
                                                                                          loop54:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc5_ && _loc3_))
                                                                                             {
                                                                                                addr250:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§"!&§);
                                                                                                   if(_loc6_)
                                                                                                   {
                                                                                                      continue loop37;
                                                                                                   }
                                                                                                   continue loop53;
                                                                                                   §§goto(addr250);
                                                                                                }
                                                                                                addr208:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                loop21:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!(_loc5_ && param2))
                                                                                                   {
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc3_);
                                                                                                            loop23:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc5_ && _loc3_)
                                                                                                               {
                                                                                                                  continue loop13;
                                                                                                               }
                                                                                                               if(_loc5_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               if(!§§pop())
                                                                                                               {
                                                                                                                  continue loop27;
                                                                                                               }
                                                                                                               while(!(_loc5_ && _loc3_))
                                                                                                               {
                                                                                                                  §§push(this.§"!&§);
                                                                                                                  continue loop25;
                                                                                                                  addr173:
                                                                                                                  if(_loc6_ || param2)
                                                                                                                  {
                                                                                                                     this.§,!k§ = this.§`j§;
                                                                                                                     loop41:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc5_ && this))
                                                                                                                        {
                                                                                                                           if(!_loc5_)
                                                                                                                           {
                                                                                                                              this.§!Q§ = this.§#"+§;
                                                                                                                              loop42:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 loop43:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(this.§3^§);
                                                                                                                                    loop44:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop().x = Math.round(this.§,!k§);
                                                                                                                                       loop45:
                                                                                                                                       while(!(_loc5_ && param2))
                                                                                                                                       {
                                                                                                                                          §§push(this.§3^§);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§pop().y = Math.round(this.§!Q§);
                                                                                                                                             addr96:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!(_loc5_ && param1))
                                                                                                                                                {
                                                                                                                                                   continue loop42;
                                                                                                                                                }
                                                                                                                                                continue loop45;
                                                                                                                                             }
                                                                                                                                             addr119:
                                                                                                                                             §§push(this.§3^§);
                                                                                                                                             continue loop54;
                                                                                                                                             if(_loc5_ && _loc3_)
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             }
                                                                                                                                             if(_loc5_ && _loc3_)
                                                                                                                                             {
                                                                                                                                                continue loop44;
                                                                                                                                             }
                                                                                                                                             §§push(this.§@P§);
                                                                                                                                             if(_loc6_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() / 180);
                                                                                                                                                if(!(_loc5_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * Math.PI);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§pop().rotation = §§pop();
                                                                                                                                             if(_loc6_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                if(_loc5_)
                                                                                                                                                {
                                                                                                                                                   continue loop41;
                                                                                                                                                }
                                                                                                                                                if(!_loc6_)
                                                                                                                                                {
                                                                                                                                                   while(_loc6_)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc5_)
                                                                                                                                                      {
                                                                                                                                                         this.§9P§(param1);
                                                                                                                                                         break loop45;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr426);
                                                                                                                                                   }
                                                                                                                                                   continue loop31;
                                                                                                                                                   addr198:
                                                                                                                                                }
                                                                                                                                                if(!(_loc6_ || this))
                                                                                                                                                {
                                                                                                                                                   continue loop54;
                                                                                                                                                }
                                                                                                                                                if(!(_loc5_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   return;
                                                                                                                                                }
                                                                                                                                                §§goto(addr466);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr96);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(!_loc5_)
                                                                                                                                       {
                                                                                                                                          continue loop43;
                                                                                                                                       }
                                                                                                                                       addr232:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc6_)
                                                                                                                                          {
                                                                                                                                             if(!_loc5_)
                                                                                                                                             {
                                                                                                                                                §§push(§"Y§);
                                                                                                                                                if(!(_loc5_ && this))
                                                                                                                                                {
                                                                                                                                                   continue loop23;
                                                                                                                                                }
                                                                                                                                                continue loop30;
                                                                                                                                                addr236:
                                                                                                                                             }
                                                                                                                                             continue loop14;
                                                                                                                                          }
                                                                                                                                          continue loop35;
                                                                                                                                       }
                                                                                                                                       continue loop23;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr462);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(true);
                                                                                                                              continue loop13;
                                                                                                                           }
                                                                                                                           addr385:
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop21;
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr438);
                                                                                                            }
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         addr350:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr455);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr420);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr456);
                                                                                                addr394:
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr263);
                                                                              }
                                                                           }
                                                                           §§goto(addr317);
                                                                        }
                                                                        continue loop28;
                                                                     }
                                                                     §§goto(addr208);
                                                                  }
                                                               }
                                                               §§goto(addr427);
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       continue loop7;
                                    }
                                    while(true)
                                    {
                                       §§push(this.updateBlinkingFrameAnimations(param2));
                                       continue loop0;
                                       §§goto(addr420);
                                    }
                                 }
                                 continue loop8;
                              }
                           }
                        }
                     }
                     else
                     {
                        §§goto(addr467);
                     }
                     §§goto(addr468);
                  }
                  §§goto(addr456);
               }
            }
         }
         §§goto(addr259);
      }
      
      public function §2e§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§=!y§().GetPosition().x);
         if(!(_loc3_ && _loc1_))
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(this.§=!y§().GetPosition().y);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            this.§1!q§ = this.§?e§;
            while(true)
            {
               this.§?"7§ = this.§`j§;
               loop1:
               while(true)
               {
                  this.§<D§ = this.§#"+§;
                  loop2:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.§=!y§().GetAngle());
                     if(!_loc3_)
                     {
                        §§push(180);
                        if(!_loc3_)
                        {
                           §§push(§§pop() * (§§pop() / Math.PI));
                           if(!(_loc3_ && _loc1_))
                           {
                              addr158:
                              §§push(§§pop() % 360);
                           }
                           §§pop().§?e§ = §§pop();
                           while(!_loc3_)
                           {
                              §§push(this);
                              §§push(_loc1_);
                              if(!_loc3_)
                              {
                                 §§push(§§pop() / §9"3§.§'"F§);
                              }
                              §§pop().§`j§ = §§pop();
                              while(true)
                              {
                                 §§push(this);
                                 §§push(_loc2_);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() / §9"3§.§'"F§);
                                 }
                                 §§pop().§#"+§ = §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this.§],§);
                                    while(true)
                                    {
                                       §§pop().§'§();
                                       continue loop5;
                                       §§goto(addr105);
                                    }
                                 }
                              }
                              if(!(_loc3_ && _loc3_))
                              {
                                 continue loop2;
                              }
                           }
                           continue loop1;
                        }
                     }
                     §§goto(addr158);
                  }
               }
               if(_loc3_ && _loc1_)
               {
                  continue;
               }
               §§goto(addr105);
            }
         }
         addr105:
         while(true)
         {
            §§push(this.§],§);
            if(!_loc3_)
            {
               §§pop().§^"#§(this.§=!y§());
               if(!(_loc3_ && _loc1_))
               {
                  break;
               }
               continue loop5;
            }
            continue loop6;
         }
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
      
      public function §9P§(param1:Number, param2:Number = -1) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
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
                     loop2:
                     while(true)
                     {
                        §§push(§+!k§);
                        §§push("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = ");
                        if(_loc4_)
                        {
                           §§push(§§pop() + param1);
                           if(!(_loc3_ && param1))
                           {
                              addr982:
                              §§push(§§pop() + " overriding to 0");
                           }
                           §§pop().log(§§pop());
                           loop3:
                           while(true)
                           {
                              addr940:
                              while(true)
                              {
                                 §§push(param2);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(0);
                                    loop6:
                                    while(true)
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             §§push(this.§=!a§.§@O§.mLevelEngine.§0F§);
                                             loop8:
                                             while(true)
                                             {
                                                §§push(1000);
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      loop11:
                                                      while(_loc4_)
                                                      {
                                                         param2 = §§pop();
                                                         while(true)
                                                         {
                                                            addr167:
                                                            if(_loc3_ && this)
                                                            {
                                                               continue;
                                                            }
                                                            §§push(this);
                                                            §§push(this.§?e§);
                                                            if(_loc4_)
                                                            {
                                                               §§push(param1);
                                                               if(!(_loc3_ && param2))
                                                               {
                                                                  §§push(this.§1!q§);
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(§§pop() + 360);
                                                                     if(_loc4_)
                                                                     {
                                                                        §§push(§§pop() - this.§?e§);
                                                                        if(_loc4_)
                                                                        {
                                                                           addr210:
                                                                           addr211:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              §§push(param2);
                                                                           }
                                                                           §§pop().§@P§ = §§pop() + §§pop();
                                                                           addr212:
                                                                           if(!_loc3_)
                                                                           {
                                                                              if(_loc4_ || param2)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr589:
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       §§push(this);
                                                                                       §§push(this.§?e§);
                                                                                       if(!(_loc3_ && param2))
                                                                                       {
                                                                                          §§push(param1);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             §§push(this.§1!q§);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                §§push(§§pop() - this.§?e§);
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   addr623:
                                                                                                   addr613:
                                                                                                   addr624:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc4_ || param1)
                                                                                                   {
                                                                                                      §§push(param2);
                                                                                                   }
                                                                                                   §§pop().§@P§ = §§pop() + §§pop();
                                                                                                   addr625:
                                                                                                   if(_loc3_ && param2)
                                                                                                   {
                                                                                                      loop30:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         loop31:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§#"+§);
                                                                                                            loop32:
                                                                                                            while(_loc4_ || param2)
                                                                                                            {
                                                                                                               §§push(this.§<D§);
                                                                                                               loop33:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() == §§pop());
                                                                                                                  loop34:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop());
                                                                                                                     loop35:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!§§pop())
                                                                                                                        {
                                                                                                                           loop36:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              loop37:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    §§push(param1);
                                                                                                                                    loop38:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc3_)
                                                                                                                                       {
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             continue loop10;
                                                                                                                                          }
                                                                                                                                          if(_loc3_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§push(0);
                                                                                                                                          loop39:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() == §§pop());
                                                                                                                                             addr819:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      loop97:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         this.§ !1§ = 0;
                                                                                                                                                         addr824:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            this.§!Q§ = this.§#"+§;
                                                                                                                                                            loop99:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc4_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc3_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§?e§);
                                                                                                                                                                        loop45:
                                                                                                                                                                        while(_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§1!q§);
                                                                                                                                                                           loop46:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() == §§pop());
                                                                                                                                                                              loop47:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 loop48:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       loop49:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          loop50:
                                                                                                                                                                                          while(!_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(param1);
                                                                                                                                                                                             loop51:
                                                                                                                                                                                             while(_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                loop52:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop9;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc3_ && this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop() == §§pop());
                                                                                                                                                                                                   loop53:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      loop54:
                                                                                                                                                                                                      while(!§§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§1!q§);
                                                                                                                                                                                                         loop55:
                                                                                                                                                                                                         for(; !_loc3_; if(!(_loc4_ || this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         },if(!_loc4_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop38;
                                                                                                                                                                                                         },if(!_loc3_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr332);
                                                                                                                                                                                                            §§push(180);
                                                                                                                                                                                                         },§§goto(addr937))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§?e§);
                                                                                                                                                                                                            loop56:
                                                                                                                                                                                                            while(!_loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() > §§pop());
                                                                                                                                                                                                               loop57:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc4_ || param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop49;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                                                                     loop58:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           loop59:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop47;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(_loc3_ && param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop36;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(_loc4_ || param2)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                 loop60:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§1!q§);
                                                                                                                                                                                                                                    loop61:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this.§?e§);
                                                                                                                                                                                                                                       loop62:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                          loop63:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc4_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                break loop37;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(180);
                                                                                                                                                                                                                                             loop64:
                                                                                                                                                                                                                                             while(!_loc3_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   loop66:
                                                                                                                                                                                                                                                   while(!§§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§1!q§);
                                                                                                                                                                                                                                                      loop67:
                                                                                                                                                                                                                                                      while(_loc4_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(this.§?e§);
                                                                                                                                                                                                                                                         while(_loc4_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                            loop69:
                                                                                                                                                                                                                                                            for(; _loc4_; while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc3_ && param2))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop54;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop69;
                                                                                                                                                                                                                                                               §§goto(addr333);
                                                                                                                                                                                                                                                            },continue loop54)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                                                                               while(!_loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr566:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     loop78:
                                                                                                                                                                                                                                                                     while(!§§pop())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(this.§1!q§);
                                                                                                                                                                                                                                                                        loop79:
                                                                                                                                                                                                                                                                        while(_loc4_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(this.§?e§);
                                                                                                                                                                                                                                                                           loop80:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop56;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(!(_loc4_ || param2))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                              loop81:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc3_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                                                                    while(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop69;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr342:
                                                                                                                                                                                                                                                                                       loop90:
                                                                                                                                                                                                                                                                                       while(!§§pop())
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(this.§1!q§);
                                                                                                                                                                                                                                                                                          while(!(_loc3_ && param1))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(this.§?e§);
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                                addr239:
                                                                                                                                                                                                                                                                                                addr930:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc3_ && param2))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc3_ && param2)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop66;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                                                                                                                      if(_loc4_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr256);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr434);
                                                                                                                                                                                                                                                                                                      continue loop66;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr333:
                                                                                                                                                                                                                                                                                                   addr333:
                                                                                                                                                                                                                                                                                                   while(!(_loc3_ && this))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop90;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop69;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                                                                                                                         addr932:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(param1);
                                                                                                                                                                                                                                                                                                            break loop45;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr931:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr910:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      break loop69;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(!(_loc3_ && this))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(this.§1!q§);
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(this.§?e§);
                                                                                                                                                                                                                                                                                                   addr463:
                                                                                                                                                                                                                                                                                                   while(!_loc3_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop33;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop62;
                                                                                                                                                                                                                                                                                                   addr66:
                                                                                                                                                                                                                                                                                                   if(_loc4_ || this)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc3_ && this)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop67;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§push(180);
                                                                                                                                                                                                                                                                                                      if(!_loc3_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc4_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop39;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr486);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr333);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr332:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr912);
                                                                                                                                                                                                                                                                                                      continue loop67;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop2;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc4_ || _loc3_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop55;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop79;
                                                                                                                                                                                                                                                                                             §§goto(addr229);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                             break loop32;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop79;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(_loc3_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          break loop78;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(_loc3_ && param1)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          break loop54;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(_loc3_ && this)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop97;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(this);
                                                                                                                                                                                                                                                                                          §§push(this.§?e§);
                                                                                                                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(param1);
                                                                                                                                                                                                                                                                                             if(!(_loc3_ && param1))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(this.§1!q§);
                                                                                                                                                                                                                                                                                                if(_loc4_ || this)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() - this.§?e§);
                                                                                                                                                                                                                                                                                                   if(_loc4_ || _loc3_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr400:
                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                      if(!(_loc3_ && param2))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(param2);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§pop().§@P§ = §§pop() + §§pop();
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc4_ || this)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!_loc3_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§goto(addr25);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr695:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc4_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  break loop53;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               break loop57;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§goto(addr567);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr402:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr400);
                                                                                                                                                                                                                                                                                                   §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr400);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop48;
                                                                                                                                                                                                                                                                                    addr434:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop59;
                                                                                                                                                                                                                                                                                 addr273:
                                                                                                                                                                                                                                                                                 loop94:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc3_ && param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop81;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(_loc3_ && param2)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(!_loc3_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§pop();
                                                                                                                                                                                                                                                                                       addr301:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(this.§?e§);
                                                                                                                                                                                                                                                                                             if(!_loc3_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc4_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr36:
                                                                                                                                                                                                                                                                                                   if(_loc3_ && _loc3_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(_loc3_ && param2)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop51;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(this.§1!q§);
                                                                                                                                                                                                                                                                                                   if(!_loc3_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr54);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr238);
                                                                                                                                                                                                                                                                                                   continue loop51;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr229);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr66);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr342);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(_loc4_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(this.§1!q§);
                                                                                                                                                                                                                                                                                          continue loop80;
                                                                                                                                                                                                                                                                                          §§goto(addr36);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(!_loc3_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(180);
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc4_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc4_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                                   break loop94;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop64;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr910);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop61;
                                                                                                                                                                                                                                                                                       addr290:
                                                                                                                                                                                                                                                                                       addr301:
                                                                                                                                                                                                                                                                                       addr483:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr566);
                                                                                                                                                                                                                                                                                    §§goto(addr567);
                                                                                                                                                                                                                                                                                    addr99:
                                                                                                                                                                                                                                                                                    §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                                                    if(_loc3_ && _loc3_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(!(_loc3_ && this))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc3_ && param2)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop34;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(§§pop())
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc4_ || this)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc4_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc4_ || _loc3_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc4_ || param1)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop60;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop30;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr290);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr402);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§goto(addr212);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr25);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr239);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop57;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop1;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop63;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr502:
                                                                                                                                                                                                                                                                     if(!(_loc3_ && param2))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(this);
                                                                                                                                                                                                                                                                        §§push(this.§?e§);
                                                                                                                                                                                                                                                                        if(_loc4_ || param1)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(param1);
                                                                                                                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(this.§1!q§);
                                                                                                                                                                                                                                                                              if(!_loc3_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() - 360);
                                                                                                                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() - this.§?e§);
                                                                                                                                                                                                                                                                                    if(_loc4_ || param2)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr546:
                                                                                                                                                                                                                                                                                    §§pop().§@P§ = §§pop() + §§pop() / §§pop();
                                                                                                                                                                                                                                                                                    addr545:
                                                                                                                                                                                                                                                                                    addr25:
                                                                                                                                                                                                                                                                                    return;
                                                                                                                                                                                                                                                                                    addr545:
                                                                                                                                                                                                                                                                                    addr544:
                                                                                                                                                                                                                                                                                    addr547:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                 if(_loc4_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(param2);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr545);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr544);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr545);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr546);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr781:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc4_ || this)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(this);
                                                                                                                                                                                                                                                                              §§push(this.§#"+§);
                                                                                                                                                                                                                                                                              if(!(_loc3_ && param1))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() + this.§ !1§);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§pop().§!Q§ = §§pop();
                                                                                                                                                                                                                                                                              loop43:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc4_ || _loc3_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc4_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop3;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr915:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       this.§,!k§ = this.§`j§;
                                                                                                                                                                                                                                                                                       break loop43;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                                 addr153:
                                                                                                                                                                                                                                                                                 if(!(_loc4_ || this))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(!(_loc4_ || this))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop99;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr167);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop31;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr932);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr912:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              this.§>!A§ = 0;
                                                                                                                                                                                                                                                                              §§goto(addr915);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr502);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr781:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr500:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr567);
                                                                                                                                                                                                                                                                  if(_loc3_ && param2)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop35;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(_loc4_ || param1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(§§pop())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr273);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr121);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr930);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr910);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop58;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr912);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(this);
                                                                                                                                                                                                                                                                  §§push(param1);
                                                                                                                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(this.§?"7§);
                                                                                                                                                                                                                                                                     if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() - this.§`j§);
                                                                                                                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr881:
                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                           if(!(_loc3_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr890:
                                                                                                                                                                                                                                                                              §§push(§§pop() / param2);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§pop().§>!A§ = §§pop();
                                                                                                                                                                                                                                                                           break loop50;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr890);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr881);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr890);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop46;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop45;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr589);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop52;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr929:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr930);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop37;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr587);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr931);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop50;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr929);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(!(_loc3_ && param2))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr928);
                                                                                                                                                                                                            §§push(this.§?"7§);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop11;
                                                                                                                                                                                                         if(!(_loc4_ || this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr301);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      this.§@P§ = this.§?e§;
                                                                                                                                                                                                      §§goto(addr695);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr25);
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop6;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop32;
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this);
                                                                                                                                                                                             §§push(this.§`j§);
                                                                                                                                                                                             if(_loc4_ || this)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + this.§>!A§);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§pop().§,!k§ = §§pop();
                                                                                                                                                                                             continue loop30;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr689);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr909);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr808);
                                                                                                                                                                     }
                                                                                                                                                                     addr808:
                                                                                                                                                                     addr698:
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               continue loop37;
                                                                                                                                                            }
                                                                                                                                                            addr939:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr919);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§push(this);
                                                                                                                                                      §§push(param1);
                                                                                                                                                      if(_loc4_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§<D§);
                                                                                                                                                         if(_loc4_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - this.§#"+§);
                                                                                                                                                            if(!_loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr770:
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(!(_loc3_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  addr779:
                                                                                                                                                                  §§push(§§pop() / param2);
                                                                                                                                                               }
                                                                                                                                                               §§pop().§ !1§ = §§pop();
                                                                                                                                                               §§goto(addr781);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr779);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr770);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr779);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr781);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(-1);
                                                                                                                                          }
                                                                                                                                          addr935:
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr937);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop5;
                                                                                                                                 }
                                                                                                                                 continue loop7;
                                                                                                                              }
                                                                                                                              continue loop8;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr819);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               param1 = §§pop();
                                                                                                               §§goto(addr939);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr25);
                                                                                                }
                                                                                                §§goto(addr623);
                                                                                                §§push(§§pop() / §§pop());
                                                                                             }
                                                                                             §§goto(addr613);
                                                                                          }
                                                                                          §§goto(addr623);
                                                                                       }
                                                                                       §§goto(addr624);
                                                                                    }
                                                                                    §§goto(addr824);
                                                                                 }
                                                                                 §§goto(addr25);
                                                                              }
                                                                              §§goto(addr547);
                                                                           }
                                                                           §§goto(addr457);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§push(§§pop() / §§pop());
                                                               }
                                                               §§goto(addr210);
                                                            }
                                                            §§goto(addr211);
                                                         }
                                                      }
                                                      continue loop0;
                                                   }
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr935);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr982);
                     }
                  }
                  §§goto(addr940);
               }
            }
         }
         §§goto(addr358);
      }
      
      public function get §`! §() : Point
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(!§"Y§)
            {
            }
         }
         return null;
      }
      
      public function § !c§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§7[§);
            if(!(_loc1_ && _loc1_))
            {
               §§push(§4u§.§,"8§);
               if(_loc2_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc2_)
                  {
                     if(!§§pop())
                     {
                        if(_loc2_)
                        {
                           §§pop();
                           addr54:
                           return this.§7[§ == §4u§.§0!o§;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      public function §^6§() : Boolean
      {
         return this.§7[§ == §4u§.§0!q§;
      }
      
      public function §9"7§() : Boolean
      {
         return this.§7[§ == §4u§.§%!l§;
      }
      
      public function §[`§() : Boolean
      {
         return this.§7[§ == §4u§.§0!o§;
      }
      
      public function shouldUpdate() : Boolean
      {
         return false;
      }
      
      public function isTexture() : Boolean
      {
         return this.§7[§ == §4u§.§%"D§;
      }
      
      public function isGround() : Boolean
      {
         return this.§7[§ == §4u§.§1!B§;
      }
      
      public function §<!r§() : Boolean
      {
         return this.§7[§ == §4u§.§[!`§;
      }
      
      public function §@!8§() : Boolean
      {
         return this.§7[§ == §4u§.§<!q§;
      }
      
      public function §5!P§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§2!>§);
            while(true)
            {
               §§push("MISC_EXPLOSIVE_TNT");
               addr99:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  §§goto(addr100);
               }
            }
            addr98:
         }
         while(true)
         {
            §§push(this.§2!>§);
            if(!_loc1_)
            {
               §§push("POWERUP_BOMB");
               if(!(_loc1_ && _loc1_))
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc1_ && this))
                  {
                     §§goto(addr58);
                  }
                  §§goto(addr85);
               }
               else
               {
                  §§goto(addr99);
               }
               return §§pop();
            }
            §§goto(addr98);
            §§goto(addr99);
         }
      }
      
      public function §<! §() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§^6§());
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
                     if(!§§pop())
                     {
                        loop3:
                        while(true)
                        {
                           §§pop();
                           addr124:
                           while(true)
                           {
                              §§push(this.§<!r§());
                              addr98:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr99:
                                 while(!(_loc2_ && _loc1_))
                                 {
                                    if(_loc2_ && _loc1_)
                                    {
                                       continue loop1;
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                     while(true)
                     {
                        §§push(§§pop());
                        loop8:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              loop9:
                              while(true)
                              {
                                 §§pop();
                                 loop10:
                                 while(true)
                                 {
                                    §§push(this.§@!8§());
                                    while(!_loc2_)
                                    {
                                       §§push(Boolean(§§pop()));
                                       if(_loc1_)
                                       {
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             if(!_loc2_)
                                             {
                                                if(_loc2_)
                                                {
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      if(_loc2_ && _loc2_)
                                                      {
                                                         break;
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(this.§]i§);
                                                            if(!_loc2_)
                                                            {
                                                               continue loop12;
                                                            }
                                                            addr34:
                                                            if(!(_loc1_ || _loc1_))
                                                            {
                                                               continue loop9;
                                                            }
                                                            if(_loc1_)
                                                            {
                                                               if(!_loc2_)
                                                               {
                                                                  §§goto(addr45);
                                                               }
                                                               continue loop0;
                                                            }
                                                            §§goto(addr98);
                                                         }
                                                         addr94:
                                                      }
                                                      §§goto(addr124);
                                                   }
                                                   continue loop10;
                                                   addr74:
                                                }
                                                addr45:
                                             }
                                             continue loop8;
                                             return §§pop();
                                          }
                                          continue loop2;
                                          addr67:
                                       }
                                       §§goto(addr74);
                                    }
                                    §§goto(addr99);
                                 }
                              }
                           }
                           §§goto(addr67);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr94);
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §#%§() : Number
      {
         return Number(Math.sqrt(this.§=!y§().GetLinearVelocity().x * this.§=!y§().GetLinearVelocity().x + this.§=!y§().GetLinearVelocity().y * this.§=!y§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         if(!(_loc10_ && param1))
         {
            §§push(this.§9"7§());
            loop0:
            while(!§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(this.§=!a§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().§0!?§());
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop4:
                           while(true)
                           {
                              §§push(this.§2!G§);
                              loop5:
                              while(true)
                              {
                                 §§push(0);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop() < §§pop());
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop8:
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                addr796:
                                                while(true)
                                                {
                                                   §§push(param6);
                                                   addr760:
                                                   while(true)
                                                   {
                                                      §§push(!§§pop());
                                                   }
                                                }
                                             }
                                             addr795:
                                          }
                                          while(true)
                                          {
                                             loop13:
                                             for(; !§§pop(); while(_loc9_ || param2)
                                             {
                                                §§goto(addr383);
                                                §§push(§§pop());
                                             })
                                             {
                                                loop14:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(this.§2!G§);
                                                      if(!(_loc10_ && param3))
                                                      {
                                                         if(§§pop() <= §§pop())
                                                         {
                                                            addr693:
                                                            if(!_loc10_)
                                                            {
                                                               addr698:
                                                               if(param1 >= this.§2!G§ / 2)
                                                               {
                                                                  addr701:
                                                                  this.§&x§(§;!y§.§]W§);
                                                                  addr705:
                                                                  if(_loc9_ || this)
                                                                  {
                                                                     addr666:
                                                                     addr669:
                                                                     addr671:
                                                                     addr670:
                                                                     §§push(Boolean(this.§ !c§()));
                                                                     if(Boolean(this.§ !c§()))
                                                                     {
                                                                        addr672:
                                                                        if(_loc10_ && param1)
                                                                        {
                                                                           continue loop7;
                                                                        }
                                                                        §§pop();
                                                                        addr634:
                                                                        addr636:
                                                                        §§push(this.§[" §);
                                                                        §§push(this.§@!h§);
                                                                        if(_loc10_ && param2)
                                                                        {
                                                                           §§goto(addr698);
                                                                        }
                                                                        §§push(§§pop() == §§pop());
                                                                        addr680:
                                                                     }
                                                                     addr645:
                                                                     if(§§pop())
                                                                     {
                                                                        addr646:
                                                                        if(!(_loc9_ || this))
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        §§push(this);
                                                                        §§push(this.§@!h§);
                                                                        if(_loc9_ || param3)
                                                                        {
                                                                           §§push(§§pop() - 1);
                                                                        }
                                                                        §§pop().§[" § = §§pop();
                                                                        addr665:
                                                                     }
                                                                     §§push(this.§[" §);
                                                                     if(!_loc10_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  addr783:
                                                                  this.§&x§(§;!y§.§@v§);
                                                                  return this.§[" §;
                                                                  addr713:
                                                                  addr787:
                                                               }
                                                               §§goto(addr666);
                                                            }
                                                            else
                                                            {
                                                               addr732:
                                                            }
                                                            §§goto(addr713);
                                                         }
                                                         else
                                                         {
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(param1);
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§push(this.§2!G§);
                                                                     if(_loc9_)
                                                                     {
                                                                        if(_loc9_ || this)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop19:
                                                                              while(!_loc10_)
                                                                              {
                                                                                 param1 = §§pop();
                                                                                 loop20:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param2);
                                                                                    loop21:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       loop22:
                                                                                       while(!(_loc10_ && param3))
                                                                                       {
                                                                                          if(!(_loc10_ && this))
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             loop23:
                                                                                             while(true)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   loop24:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop();
                                                                                                      loop25:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§<! §());
                                                                                                         loop26:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Boolean(§§pop()));
                                                                                                            addr543:
                                                                                                            while(_loc9_ || this)
                                                                                                            {
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  §§goto(addr760);
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop22;
                                                                                                            addr239:
                                                                                                            if(_loc10_ && param3)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               loop54:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     loop55:
                                                                                                                     while(!(_loc10_ && param3))
                                                                                                                     {
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              continue loop1;
                                                                                                                           }
                                                                                                                           this.§[" § = 1;
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              addr156:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(this.§[" §);
                                                                                                                                 loop58:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc10_ && this))
                                                                                                                                    {
                                                                                                                                       if(!(_loc10_ && param3))
                                                                                                                                       {
                                                                                                                                          §§push(1);
                                                                                                                                          if(_loc9_ || param2)
                                                                                                                                          {
                                                                                                                                             if(_loc9_)
                                                                                                                                             {
                                                                                                                                                if(§§pop() >= §§pop())
                                                                                                                                                {
                                                                                                                                                   this.§&x§(§;!y§.§#!w§);
                                                                                                                                                   loop59:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc9_ || param1)
                                                                                                                                                      {
                                                                                                                                                         this.addDamageParticles(this.§=!a§.§@O§.particles,param1);
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      loop60:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc10_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc10_)
                                                                                                                                                            {
                                                                                                                                                               addr125:
                                                                                                                                                               if(_loc9_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc9_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc10_ && param2))
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc10_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              loop61:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 this.§"!&§.setDamagedFrame();
                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop58;
                                                                                                                                                                                    }
                                                                                                                                                                                    loop33:
                                                                                                                                                                                    while(_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(param5);
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(§§pop())
                                                                                                                                                                                          {
                                                                                                                                                                                             loop35:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc8_);
                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc9_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §9"3§.§[!+§);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc9_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc10_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(int(§§pop()));
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc8_ = §§pop();
                                                                                                                                                                                                               addr495:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc10_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc9_ || param2))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                        addr423:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§=!a§);
                                                                                                                                                                                                                        if(_loc10_ && param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(§§pop().§@O§);
                                                                                                                                                                                                                        §§push(_loc8_);
                                                                                                                                                                                                                        §§push(§?E§.§!j§);
                                                                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(this.§[" § > param1);
                                                                                                                                                                                                                           if(!(_loc10_ && param3))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc9_ || param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§pop();
                                                                                                                                                                                                                                    addr460:
                                                                                                                                                                                                                                    §§push(param3);
                                                                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr463:
                                                                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr463);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§pop().addScore(§§pop(),§§pop(),§§pop(),this.§=!y§().GetPosition().x,this.§=!y§().GetPosition().y,§'G§.§>!&§(this.§2!>§));
                                                                                                                                                                                                                              loop40:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr372:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(param5);
                                                                                                                                                                                                                                    addr374:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                       continue loop13;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop40;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr477:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr463);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr460);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop2;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr572:
                                                                                                                                                                                                                  addr572:
                                                                                                                                                                                                                  while(!(_loc10_ && this))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§9"3§.§0!Q§.getValue());
                                                                                                                                                                                                                     if(!(_loc9_ || param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break loop35;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(§§pop() * _loc7_);
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc9_ || param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc10_ && param3))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(int(§§pop()));
                                                                                                                                                                                                                              break loop35;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop19;
                                                                                                                                                                                                                        addr40:
                                                                                                                                                                                                                        if(_loc9_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop18;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop17;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr705);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr665);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr666);
                                                                                                                                                                                                         addr33:
                                                                                                                                                                                                         if(_loc10_ && param3)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr40);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      loop71:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(12);
                                                                                                                                                                                                         addr738:
                                                                                                                                                                                                         loop72:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc10_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc9_ || param3)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(§§pop() > §§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr753:
                                                                                                                                                                                                                     this.§&x§(§;!y§.§#!w§);
                                                                                                                                                                                                                     break loop61;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(param1);
                                                                                                                                                                                                                  break loop19;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop6;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr782:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop() <= §§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(param1);
                                                                                                                                                                                                                  continue loop71;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr783);
                                                                                                                                                                                                               continue loop72;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr705);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr494);
                                                                                                                                                                                             }
                                                                                                                                                                                             while(_loc9_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc8_ = §§pop();
                                                                                                                                                                                                continue loop33;
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc7_ = §§pop();
                                                                                                                                                                                                §§goto(addr572);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr481:
                                                                                                                                                                                             addr571:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr423);
                                                                                                                                                                                          loop45:
                                                                                                                                                                                          while(_loc9_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc10_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop();
                                                                                                                                                                                                break loop55;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop0;
                                                                                                                                                                                             loop47:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc9_ || param3))
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop45;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!_loc9_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(Boolean(§§pop()));
                                                                                                                                                                                                loop48:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc9_ || param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc10_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc9_ || param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            loop49:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc10_ && param2)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break loop61;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc10_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr802:
                                                                                                                                                                                                                        §§push(this.§[" §);
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr804:
                                                                                                                                                                                                                  return §§pop();
                                                                                                                                                                                                                  addr348:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr371:
                                                                                                                                                                                                               §§push(this);
                                                                                                                                                                                                               §§push(this.§[" §);
                                                                                                                                                                                                               if(_loc9_ || param3)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() - param1);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§pop().§[" § = §§pop();
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr125);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§[" §);
                                                                                                                                                                                                                  addr268:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(1);
                                                                                                                                                                                                                     addr269:
                                                                                                                                                                                                                     addr727:
                                                                                                                                                                                                                     while(!(_loc10_ && param3))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() < §§pop());
                                                                                                                                                                                                                        if(!(_loc10_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop24;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc10_ && param2)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop3;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr293:
                                                                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                                                                           if(!(_loc9_ || param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(_loc9_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(§§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop45;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop49;
                                                                                                                                                                                                                                 §§goto(addr293);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop8;
                                                                                                                                                                                                                              addr383:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop23;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc9_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!§§pop())
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop54;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              loop65:
                                                                                                                                                                                                                              while(_loc9_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§pop();
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc10_ && param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break loop59;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(this.§ !c§());
                                                                                                                                                                                                                                    if(_loc9_ || this)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc10_ && param3)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop65;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(_loc10_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop47;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!_loc10_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc10_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr239);
                                                                                                                                                                                                                                             §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr669);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr374);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop65;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr239);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop26;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop48;
                                                                                                                                                                                                                              addr306:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr671);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr306);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(§§pop() > §§pop())
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr728:
                                                                                                                                                                                                                        this.§&x§(§;!y§.§]W§);
                                                                                                                                                                                                                        §§goto(addr732);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr705);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop21;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop13;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr670);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr543);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop25;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop59;
                                                                                                                                                                                 addr96:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr705);
                                                                                                                                                                              addr757:
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr796);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr693);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr705);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr680);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr646);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr371);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               addr764:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc10_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc9_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        this.§[" § = 0;
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop55;
                                                                                                                                                                           }
                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc9_ || param3)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc10_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop60;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break loop13;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop16;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr481);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr477);
                                                                                                                                                                        }
                                                                                                                                                                        addr201:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr787);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr309);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc9_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr782);
                                                                                                                                                                     §§push(30);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr804);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr184:
                                                                                                                                                               addr764:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr309);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr201);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr701);
                                                                                                                                                }
                                                                                                                                                §§goto(addr184);
                                                                                                                                             }
                                                                                                                                             §§goto(addr738);
                                                                                                                                          }
                                                                                                                                          §§goto(addr269);
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§goto(addr268);
                                                                                                                                 }
                                                                                                                                 §§goto(addr701);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr495);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           continue loop20;
                                                                                                                        }
                                                                                                                        if(_loc10_ && param1)
                                                                                                                        {
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              break loop0;
                                                                                                                           }
                                                                                                                           continue loop14;
                                                                                                                        }
                                                                                                                        if(_loc9_ || param2)
                                                                                                                        {
                                                                                                                           §§goto(addr320);
                                                                                                                           §§push(this.§]I§);
                                                                                                                        }
                                                                                                                        §§goto(addr728);
                                                                                                                        §§goto(addr250);
                                                                                                                     }
                                                                                                                     addr250:
                                                                                                                     §§goto(addr811);
                                                                                                                  }
                                                                                                                  §§goto(addr156);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr795);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         if(_loc9_ || param3)
                                                                                                         {
                                                                                                            §§goto(addr571);
                                                                                                            §§push(int(Math.min(this.§[" §,int(param1))));
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr572);
                                                                                                   }
                                                                                                   §§goto(addr372);
                                                                                                }
                                                                                                §§goto(addr753);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr672);
                                                                                       }
                                                                                       §§goto(addr645);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              if(_loc9_)
                                                                              {
                                                                                 §§goto(addr727);
                                                                                 §§push(3);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr811);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr698);
                                                                     }
                                                                     break;
                                                                  }
                                                                  continue loop15;
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr636);
                                                      }
                                                      §§goto(addr698);
                                                   }
                                                }
                                             }
                                             addr763:
                                             while(true)
                                             {
                                                §§goto(addr764);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr802);
                     }
                  }
               }
            }
            addr811:
            return §§pop();
            §§push(this.§[" §);
         }
         §§goto(addr763);
      }
      
      public function §&x§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §&!r§.§#"§(param1,this.§=a§.§2+§);
         }
      }
      
      public function §;"1§(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§=a§.material.§>!s§(param1));
         if(_loc3_ || this)
         {
            return §§pop() * this.§'2§;
         }
      }
      
      public function §5!S§(param1:String) : Number
      {
         return this.§=a§.material.§]!%§(param1);
      }
      
      public function §0!'§() : String
      {
         return this.§=a§.material.mName;
      }
      
      public function §2!K§() : Number
      {
         return this.§=a§.§[",§();
      }
      
      public function §7s§() : int
      {
         return this.§=a§.§!!k§();
      }
      
      public function §,l§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 30;
         if(!_loc2_)
         {
            §§push(this.§=!y§().IsAwake());
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
                              §§push(this.§ !c§());
                              loop5:
                              for(; !_loc2_; if(_loc2_ && _loc1_)
                              {
                                 continue;
                              },§§goto(addr127))
                              {
                                 §§push(Boolean(§§pop()));
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop7:
                                    while(_loc3_)
                                    {
                                       if(§§pop())
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             §§pop();
                                             loop9:
                                             while(true)
                                             {
                                                §§push(this.§[" § == this.§@!h§);
                                                if(!(_loc2_ && _loc1_))
                                                {
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop20:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop18:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc3_)
                                                                           {
                                                                              if(_loc3_ || _loc3_)
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 loop17:
                                                                                 for(; !_loc2_; while(true)
                                                                                 {
                                                                                    §§push(Math.abs(this.§=!y§().§0!I§()) > b2Settings.b2_angularSleepTolerance * _loc1_);
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       continue loop17;
                                                                                    }
                                                                                    §§goto(addr35);
                                                                                 })
                                                                                 {
                                                                                    addr78:
                                                                                    §§pop();
                                                                                    if(_loc3_ || _loc1_)
                                                                                    {
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          if(_loc3_ || this)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          continue loop9;
                                                                                       }
                                                                                       addr175:
                                                                                       while(_loc3_)
                                                                                       {
                                                                                          §§push(Math.abs(this.§=!y§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc3_)
                                                                                             {
                                                                                                continue loop5;
                                                                                             }
                                                                                             continue loop8;
                                                                                             addr35:
                                                                                             if(_loc3_ || _loc1_)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   break loop18;
                                                                                                }
                                                                                                break loop13;
                                                                                             }
                                                                                          }
                                                                                          continue loop5;
                                                                                       }
                                                                                       continue loop4;
                                                                                    }
                                                                                    addr145:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Math.abs(this.§=!y§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          if(_loc2_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          continue loop18;
                                                                                       }
                                                                                       continue loop17;
                                                                                       §§goto(addr78);
                                                                                    }
                                                                                    continue loop6;
                                                                                 }
                                                                                 continue loop1;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                        return §§pop();
                                                                     }
                                                                     addr44:
                                                                     continue loop6;
                                                                  }
                                                                  continue loop20;
                                                               }
                                                               continue loop20;
                                                            }
                                                            addr127:
                                                         }
                                                      }
                                                   }
                                                   addr169:
                                                }
                                                while(_loc3_)
                                                {
                                                   §§pop();
                                                   §§goto(addr175);
                                                }
                                                continue loop0;
                                             }
                                          }
                                       }
                                       §§goto(addr169);
                                    }
                                    continue loop2;
                                 }
                              }
                              continue loop3;
                           }
                        }
                     }
                     §§goto(addr44);
                  }
               }
            }
         }
         §§goto(addr105);
      }
      
      public function §>"?§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§=!y§().IsAwake());
            if(!(_loc1_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && this))
                  {
                     addr47:
                     §§push(true);
                     if(_loc2_)
                     {
                        §§goto(addr50);
                     }
                     else
                     {
                        addr55:
                        return !§§pop();
                     }
                  }
                  else
                  {
                     addr51:
                     §§push(this.§]!o§());
                     if(!_loc1_)
                     {
                        §§goto(addr55);
                     }
                  }
                  return §§pop();
               }
               §§goto(addr51);
            }
            addr50:
            return §§pop();
         }
         §§goto(addr47);
      }
      
      protected function §]!o§() : Boolean
      {
         return this.§],§.§]!o§();
      }
      
      public function §-!#§(param1:Number = 3) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§'2§ = param1;
            for(; this.§'2§ <= 1; if(!(_loc3_ || this))
            {
               continue;
            },§§goto(addr20))
            {
               §§push(this.§"!&§);
               if(_loc3_ || _loc2_)
               {
                  §§pop().§[y§ = null;
                  if(_loc3_)
                  {
                     if(_loc2_)
                     {
                        break;
                     }
                     continue;
                  }
                  addr20:
                  return;
                  addr78:
               }
               §§pop().§!!&§();
               §§goto(addr78);
            }
            §§goto(addr77);
            §§push(this.§"!&§);
         }
         §§goto(addr20);
      }
      
      public function §;!"§(param1:Boolean) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         if(!(_loc3_ && param1))
         {
            §§push(this.§=a§.§^"9§());
            loop0:
            while(true)
            {
               if(§§pop() != §9!n§.§'f§)
               {
                  §§push(this.§=!y§().GetMass());
                  loop1:
                  while(true)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        §§push(this.§?H§.§`""§());
                        loop2:
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           loop3:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    if(!(_loc3_ && this))
                                    {
                                       if(param1)
                                       {
                                          if(_loc4_)
                                          {
                                             §§push(_loc2_);
                                             if(!(_loc3_ && this))
                                             {
                                                if(_loc3_ && _loc2_)
                                                {
                                                   break;
                                                }
                                                if(_loc4_)
                                                {
                                                   §§push(this.§-!-§());
                                                   loop6:
                                                   while(true)
                                                   {
                                                      if(!(_loc3_ && this))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc4_)
                                                         {
                                                            if(!_loc4_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(Number(§§pop()));
                                                            loop14:
                                                            for(; !_loc3_; if(_loc3_ && _loc3_)
                                                            {
                                                               continue;
                                                            },if(!(_loc3_ && this))
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  continue loop0;
                                                               }
                                                               §§push(this.§[!q§);
                                                               if(_loc4_)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(this.§[!q§);
                                                                     if(_loc4_ || _loc2_)
                                                                     {
                                                                        addr88:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc3_)
                                                                        {
                                                                           continue loop6;
                                                                        }
                                                                        if(_loc3_)
                                                                        {
                                                                           continue loop2;
                                                                        }
                                                                        if(_loc4_ || param1)
                                                                        {
                                                                           §§push(§§pop() / §§pop());
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           §§goto(addr113);
                                                                        }
                                                                        §§goto(addr222);
                                                                     }
                                                                     §§goto(addr221);
                                                                  }
                                                                  §§goto(addr219);
                                                               }
                                                               §§goto(addr88);
                                                            },§§goto(addr223))
                                                            {
                                                               _loc2_ = §§pop();
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  addr47:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        continue loop14;
                                                                     }
                                                                     addr113:
                                                                     while(true)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        if(_loc3_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(!(_loc4_ || _loc2_))
                                                                        {
                                                                           continue loop5;
                                                                        }
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        addr210:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§"!&§.mW);
                                                                           addr213:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§"!&§.mH);
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop15;
                                                                  }
                                                                  continue loop0;
                                                               }
                                                            }
                                                            continue loop1;
                                                            addr163:
                                                         }
                                                         §§goto(addr163);
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr217);
                                                         §§goto(addr213);
                                                      }
                                                   }
                                                   continue loop3;
                                                }
                                                §§goto(addr224);
                                             }
                                             §§goto(addr163);
                                          }
                                          §§goto(addr166);
                                       }
                                       §§goto(addr47);
                                    }
                                    §§goto(addr225);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr213);
                  }
               }
               §§goto(addr210);
            }
         }
         §§goto(addr225);
      }
      
      public function §-!-§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = Number(1);
         if(_loc2_ || _loc2_)
         {
            §§push(_loc1_);
            if(_loc2_ || this)
            {
               §§push(_loc1_);
               if(_loc2_)
               {
                  §§push(2);
                  if(_loc2_ || _loc3_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc3_ && this)
                     {
                     }
                     §§goto(addr90);
                  }
                  §§push(§§pop() / §§pop());
               }
               addr90:
               §§push(§§pop() * Math.min(10,this.§"!&§.§%`§ - 1));
               if(_loc2_ || _loc3_)
               {
                  §§push(10);
               }
               §§push(§§pop() - §§pop());
               if(!(_loc3_ && this))
               {
                  §§push(Number(§§pop()));
                  if(!(_loc3_ && _loc2_))
                  {
                     _loc1_ = §§pop();
                  }
               }
            }
            §§goto(addr108);
         }
         addr108:
         return _loc1_;
      }
      
      public function §!!6§(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.§=!y§().GetLinearVelocity().x);
         if(!(_loc6_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§=!y§().GetLinearVelocity().y);
         if(_loc7_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         §§push(1);
         §§push(param1);
         if(_loc7_)
         {
            §§push(§§pop() / _loc4_);
         }
         §§push(§§pop() + §§pop());
         if(!(_loc6_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!(_loc6_ && _loc2_))
         {
            §§push(_loc2_);
            if(!(_loc6_ && _loc3_))
            {
               §§push(_loc5_);
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  addr157:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               addr156:
            }
            while(true)
            {
               _loc2_ = §§pop();
            }
            addr158:
         }
         while(true)
         {
            §§push(_loc3_);
            if(!_loc6_)
            {
               §§push(_loc5_);
               if(_loc7_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc6_ && this))
                  {
                     addr133:
                     if(!_loc6_)
                     {
                        addr136:
                        §§push(Number(§§pop()));
                        if(!_loc6_)
                        {
                           _loc3_ = §§pop();
                           while(_loc7_ || this)
                           {
                              this.§=!y§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
                              if(!(_loc6_ && _loc2_))
                              {
                                 return;
                              }
                           }
                           continue;
                        }
                        §§goto(addr157);
                     }
                     §§goto(addr158);
                  }
                  §§goto(addr136);
               }
               else
               {
                  §§goto(addr156);
               }
            }
            §§goto(addr133);
         }
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§]a§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§^!f§) : void
      {
      }
      
      public function addDamageParticles(param1:§^!f§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §^!M§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2Vec2 = this.§=!y§().GetPosition();
         §§push(_loc4_);
         §§push(_loc4_.x);
         if(!(_loc6_ && this))
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
            if(!_loc6_)
            {
               §§push(param2.y * param1);
               if(_loc5_ || this)
               {
                  §§push(§§pop() * param3);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().y = §§pop();
            do
            {
               this.§=!y§().SetPosition(_loc4_);
            }
            while(!(_loc5_ || this));
            
         }
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc6_)
         {
            if(param2)
            {
               if(!(_loc7_ && param2))
               {
                  §§push(this.§,!G§());
                  loop0:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     if(!(_loc7_ && param2))
                     {
                        §§push(§§pop());
                        loop1:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           loop2:
                           while(true)
                           {
                              §§push(360);
                              if(_loc6_ || param2)
                              {
                                 §§push(§§pop() + §§pop());
                                 while(true)
                                 {
                                    §§push(360);
                                    loop14:
                                    while(_loc6_ || param1)
                                    {
                                       if(!(_loc6_ || _loc3_))
                                       {
                                          continue loop2;
                                       }
                                       §§push(param1);
                                       while(true)
                                       {
                                          §§push(§§pop() % §§pop());
                                          addr217:
                                          addr68:
                                          loop22:
                                          while(true)
                                          {
                                             if(_loc6_)
                                             {
                                                if(_loc6_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc6_ || _loc3_)
                                                   {
                                                      _loc5_ = §§pop();
                                                      loop16:
                                                      while(true)
                                                      {
                                                         addr111:
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§push(_loc5_);
                                                            if(!_loc7_)
                                                            {
                                                               continue loop0;
                                                            }
                                                            addr147:
                                                            if(!_loc6_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(§§pop() - _loc5_);
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  continue loop14;
                                                               }
                                                               _loc4_ = Number(§§pop());
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  loop20:
                                                                  while(true)
                                                                  {
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        this.§3!a§(_loc4_);
                                                                        if(_loc6_ || param2)
                                                                        {
                                                                           if(!(_loc7_ && param2))
                                                                           {
                                                                              if(true)
                                                                              {
                                                                                 §§push(this.§,!G§());
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    addr297:
                                                                                    §§push(§§pop() + param1);
                                                                                    if(_loc6_ || _loc3_)
                                                                                    {
                                                                                       addr306:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 var _loc3_:* = §§pop();
                                                                                 if(_loc6_ || param2)
                                                                                 {
                                                                                    §§push(Math.round(_loc3_ / 22.5) * 22.5);
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    _loc3_ = §§pop();
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr307:
                                                                                 addr293:
                                                                              }
                                                                              continue loop20;
                                                                              do
                                                                              {
                                                                                 this.§3!a§(_loc3_);
                                                                              }
                                                                              while(!(_loc6_ || this));
                                                                              
                                                                              return;
                                                                           }
                                                                           break;
                                                                        }
                                                                        addr103:
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_ || param2)
                                                                           {
                                                                              continue loop19;
                                                                           }
                                                                           continue loop21;
                                                                        }
                                                                     }
                                                                     continue loop17;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         loop8:
                                                         while(true)
                                                         {
                                                            _loc4_ = §§pop();
                                                            loop9:
                                                            while(true)
                                                            {
                                                               §§push(Number(0));
                                                               loop10:
                                                               while(true)
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  addr235:
                                                                  addr292:
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc7_ && param1))
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(param1);
                                                                              if(!(_loc6_ || this))
                                                                              {
                                                                                 continue loop22;
                                                                              }
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              §§push(0);
                                                                              if(_loc6_ || _loc3_)
                                                                              {
                                                                                 if(§§pop() != §§pop())
                                                                                 {
                                                                                    if(_loc6_ || param2)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       continue loop14;
                                                                                    }
                                                                                    continue loop16;
                                                                                 }
                                                                                 §§goto(addr111);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() % §§pop());
                                                                                    addr290:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       addr291:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc4_ = §§pop();
                                                                                          break loop11;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr289:
                                                                              }
                                                                           }
                                                                           addr244:
                                                                        }
                                                                        break;
                                                                     }
                                                                     continue loop9;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(Math.round(_loc4_ / 22.5) * 22.5);
                                                                     if(!_loc6_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     §§push(Number(§§pop()));
                                                                     continue loop8;
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr306);
                                                }
                                                §§goto(addr290);
                                             }
                                             §§goto(addr291);
                                          }
                                          if(!(_loc6_ || _loc3_))
                                          {
                                             continue;
                                          }
                                          if(_loc7_)
                                          {
                                             continue loop1;
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(_loc6_ || this)
                                          {
                                             §§push(Number(§§pop()));
                                             if(_loc6_)
                                             {
                                                if(_loc6_ || param1)
                                                {
                                                   if(!(_loc7_ && param2))
                                                   {
                                                      _loc4_ = §§pop();
                                                      §§goto(addr103);
                                                   }
                                                   §§goto(addr217);
                                                }
                                                §§goto(addr161);
                                             }
                                             §§goto(addr306);
                                          }
                                          §§goto(addr297);
                                       }
                                    }
                                 }
                              }
                              §§goto(addr289);
                           }
                        }
                     }
                     §§goto(addr291);
                  }
               }
               §§goto(addr292);
            }
            §§goto(addr293);
         }
         §§goto(addr244);
      }
      
      public function §<!!§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§!6§(this.§=!y§().GetAngle()));
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(param1);
               if(_loc3_ || param1)
               {
                  §§push(360);
                  if(_loc3_ || param1)
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc3_)
                     {
                        addr103:
                        §§push(§§pop() / 1000);
                     }
                     §§push(§§pop() - §§pop());
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
                              §§push(§<2§(_loc2_));
                              if(!_loc4_)
                              {
                                 if(!_loc3_)
                                 {
                                    continue loop1;
                                 }
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 §§push(Number(§§pop()));
                              }
                              if(!_loc4_)
                              {
                                 _loc2_ = §§pop();
                                 do
                                 {
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       continue;
                                    }
                                    continue loop3;
                                 }
                                 while(this.§=!y§().§>"4§(_loc2_), !_loc3_);
                                 
                                 return;
                                 addr39:
                              }
                              continue loop2;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               §§goto(addr103);
            }
         }
         §§goto(addr39);
      }
      
      public function §9!L§(param1:Number, param2:Point) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_)
         {
            this.rotate(param1);
         }
         var _loc3_:b2Vec2 = this.§=!y§().GetPosition().Copy();
         §§push(_loc3_.x);
         if(_loc14_)
         {
            §§push(§§pop() - param2.x);
            if(!(_loc15_ && param1))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_.y);
         if(_loc14_)
         {
            §§push(§§pop() - param2.y);
            if(_loc14_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         if(_loc14_)
         {
            §§push(_loc4_);
            if(_loc14_)
            {
               §§push(0);
               if(!(_loc15_ && param1))
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc15_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc15_ && param2))
                        {
                           addr84:
                           §§pop();
                           if(!_loc15_)
                           {
                              addr87:
                              §§push(_loc5_);
                              if(_loc14_ || param1)
                              {
                                 addr97:
                                 if(§§pop() == 0)
                                 {
                                    if(_loc14_ || param1)
                                    {
                                       return;
                                    }
                                    addr106:
                                    §§push(Number(Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)));
                                 }
                                 §§goto(addr106);
                              }
                              var _loc6_:* = §§pop();
                              §§push(_loc4_);
                              if(_loc14_ || _loc3_)
                              {
                                 §§push(§§pop() / _loc5_);
                                 if(_loc14_)
                                 {
                                    addr129:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc7_:* = §§pop();
                                 §§push(Math.atan(_loc7_) * 180);
                                 if(!(_loc15_ && this))
                                 {
                                    §§push(§§pop() / Math.PI);
                                    if(!(_loc15_ && this))
                                    {
                                       addr163:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc8_:* = §§pop();
                                    if(!(_loc15_ && this))
                                    {
                                       §§push(_loc5_);
                                       if(!(_loc15_ && this))
                                       {
                                          §§push(0);
                                          if(_loc14_ || param1)
                                          {
                                             if(§§pop() < §§pop())
                                             {
                                                if(_loc14_)
                                                {
                                                   §§push(_loc8_);
                                                   if(_loc14_)
                                                   {
                                                      addr195:
                                                      §§push(§§pop() + 180);
                                                      if(_loc14_ || param1)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc14_ || param1)
                                                         {
                                                            addr211:
                                                            _loc8_ = §§pop();
                                                            addr212:
                                                            §§push(_loc8_);
                                                            if(_loc15_)
                                                            {
                                                            }
                                                            addr226:
                                                            var _loc9_:Number;
                                                            §§push(_loc9_ = §§pop());
                                                            if(!_loc15_)
                                                            {
                                                               §§push(§§pop() * Math.PI);
                                                               if(!_loc15_)
                                                               {
                                                                  addr236:
                                                                  §§push(§§pop() / 180);
                                                                  if(!(_loc15_ && param2))
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc10_:* = §§pop();
                                                               §§push(Math.sin(_loc10_) * _loc6_);
                                                               if(!(_loc15_ && param2))
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc11_:* = §§pop();
                                                               §§push(Math.cos(_loc10_) * _loc6_);
                                                               if(!(_loc15_ && param1))
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc12_:* = §§pop();
                                                               var _loc13_:b2Vec2 = new b2Vec2(param2.x + _loc11_,param2.y + _loc12_);
                                                               if(!_loc15_)
                                                               {
                                                                  this.§=!y§().SetPosition(_loc13_);
                                                               }
                                                               return;
                                                            }
                                                            §§goto(addr236);
                                                         }
                                                         §§push(param1);
                                                         if(!_loc15_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc15_ && param2)
                                                            {
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr226);
                                                   }
                                                   §§goto(addr211);
                                                }
                                                §§goto(addr212);
                                             }
                                             §§goto(addr211);
                                          }
                                          §§goto(addr195);
                                       }
                                    }
                                    §§goto(addr211);
                                 }
                                 §§goto(addr163);
                              }
                              §§goto(addr129);
                           }
                           §§goto(addr106);
                        }
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr84);
               }
            }
            §§goto(addr97);
         }
         §§goto(addr87);
      }
   }
}
