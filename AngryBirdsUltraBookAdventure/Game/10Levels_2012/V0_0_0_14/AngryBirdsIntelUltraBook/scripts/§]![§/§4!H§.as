package §]![§
{
   import § D§.b2Body;
   import § D§.b2BodyDef;
   import § D§.b2FilterData;
   import § D§.b2Fixture;
   import § D§.b2World;
   import §+&§.§-!7§;
   import §+&§.§;!8§;
   import §0!'§.b2PolygonShape;
   import §1!T§.§6!H§;
   import §3v§.§,n§;
   import §3v§.§6Q§;
   import §6z§.§[g§;
   import §8>§.b2Vec2;
   import §9E§.Sprite;
   import §;u§.b2Settings;
   import §>o§.§"!e§;
   import §>o§.§'y§;
   import §>o§.§+!4§;
   import §>o§.§0!N§;
   import §>o§.§8!4§;
   import flash.geom.Point;
   
   public class §4!H§
   {
      
      public static const §"!q§:uint;
      
      public static const §1!M§:uint;
      
      public static const §<!g§:uint;
      
      public static const §8!;§:uint;
      
      public static const §,!L§:Boolean = true;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(§§findproperty(§"!q§));
            §§push(1);
            if(!(_loc1_ && §4!H§))
            {
               §§push(§§pop() << §§pop());
            }
            §§pop().§"!q§ = §§pop();
            loop0:
            do
            {
               §§push(§§findproperty(§1!M§));
               §§push(1);
               if(!_loc1_)
               {
                  §§push(§§pop() << 2);
               }
               §§pop().§1!M§ = §§pop();
               while(true)
               {
                  §§push(§§findproperty(§<!g§));
                  §§push(1);
                  if(_loc2_)
                  {
                     §§push(§§pop() << 3);
                  }
                  §§pop().§<!g§ = §§pop();
                  while(!_loc1_)
                  {
                     §§push(§§findproperty(§8!;§));
                     §§push(1);
                     if(!_loc1_)
                     {
                        §§push(§§pop() << 4);
                     }
                     §§pop().§8!;§ = §§pop();
                     do
                     {
                        §,!L§ = true;
                     }
                     while(!_loc2_);
                     
                     if(!_loc1_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc1_ && _loc1_);
            
         }
      }
      
      private var §["§:String;
      
      private var §>!t§:int;
      
      private var §]!A§:int;
      
      public var §@!p§:String;
      
      public var § W§:int;
      
      private var §9!>§:§8!4§;
      
      private var §5M§:§[?§;
      
      private var mWorld:b2World;
      
      protected var §`r§:String = "";
      
      protected var §`!b§:int = 1;
      
      private var §]!B§:b2Fixture;
      
      private var §[;§:b2Body;
      
      private var §1!4§:b2Vec2;
      
      public var §%,§:Number;
      
      public var §0K§:Number;
      
      private var § !>§:Number;
      
      private var §2!Y§:Boolean = false;
      
      private var §!Y§:Number;
      
      private var §5`§:Number;
      
      private var §>![§:Number;
      
      private var §%n§:Number;
      
      private var §#!y§:Number;
      
      private var §`I§:Number;
      
      public var §-!9§:Number = 1;
      
      private var §#r§:Boolean = false;
      
      public var §"!s§:Number = 0;
      
      public var §5!2§:Number = 0;
      
      protected var §%m§:Boolean = false;
      
      public var §[!"§:§+s§;
      
      private var §8!9§:Sprite;
      
      private var §;!@§:Number = 0;
      
      private var §3L§:Number = 0;
      
      private var §3!f§:Number = 0;
      
      private var §!+§:Number = 1.0;
      
      private var § >§:Boolean = false;
      
      private var §4e§:Vector.<Vector.<Number>>;
      
      private var §4S§:int = 10;
      
      private var §5b§:Boolean = true;
      
      public function §4!H§(param1:§[?§, param2:Sprite, param3:b2World, param4:§-!7§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc14_:b2PolygonShape = null;
         if(_loc17_ || param2)
         {
            this.§4e§ = new Vector.<Vector.<Number>>();
            while(true)
            {
               super();
               while(true)
               {
                  this.§@!p§ = param6;
                  addr249:
                  while(true)
                  {
                     this.§9!>§ = §+!4§.§ !`§(param6);
                  }
                  loop5:
                  while(_loc17_ || param3)
                  {
                     this.§!+§ = param10;
                     loop6:
                     while(true)
                     {
                        this.§ >§ = param11;
                        loop7:
                        while(true)
                        {
                           this.§>!t§ = param5;
                           addr210:
                           loop8:
                           while(true)
                           {
                              this.§ W§ = this.§9!>§.§ W§;
                              addr198:
                              addr244:
                              while(_loc17_ || param2)
                              {
                                 this.§]!A§ = this.§9!>§.§2g§();
                                 while(true)
                                 {
                                    this.§4e§[0] = new Vector.<Number>();
                                    continue loop6;
                                    addr156:
                                    if(!(_loc17_ || param2))
                                    {
                                       continue;
                                    }
                                    if(!_loc17_)
                                    {
                                       continue loop8;
                                    }
                                    if(_loc17_)
                                    {
                                       this.§4e§[2] = new Vector.<Number>();
                                       while(true)
                                       {
                                          this.§[!"§ = new §+s§(this,param2,param4);
                                          continue loop7;
                                       }
                                       addr144:
                                    }
                                    else
                                    {
                                       §§goto(addr249);
                                    }
                                 }
                              }
                              while(true)
                              {
                                 this.§5M§ = param1;
                                 addr237:
                                 while(true)
                                 {
                                    addr221:
                                    this.§8!9§ = param2;
                                    continue loop5;
                                 }
                                 §§goto(addr198);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr244);
      }
      
      public static function §@,§(param1:int, param2:§'y§, param3:String = "") : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            if(param2 == null)
            {
               if(_loc6_)
               {
                  §§goto(addr24);
               }
            }
            var _loc4_:String;
            §§push(_loc4_ = param2.§"%§[param1]);
            if(_loc6_)
            {
               if(§§pop().length > 0)
               {
                  if(!_loc5_)
                  {
                     §§push(param3);
                     if(!(_loc5_ && param2))
                     {
                        if(§§pop().length <= 0)
                        {
                           if(!(_loc5_ && param2))
                           {
                              §§push(param2.§+C§);
                              if(!(_loc5_ && param3))
                              {
                                 addr86:
                                 §§push(§§pop());
                              }
                              param3 = §§pop();
                              if(_loc5_)
                              {
                              }
                              §§goto(addr94);
                           }
                        }
                     }
                     §§goto(addr86);
                  }
                  §6!H§.§;!M§(_loc4_,param3);
               }
               addr94:
               return;
            }
            §§goto(addr86);
         }
         addr24:
      }
      
      public static function §6L§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(360);
         §§push(param1);
         if(!(_loc3_ && _loc2_))
         {
            §§push(180);
            if(!(_loc3_ && §4!H§))
            {
               §§push(§§pop() * §§pop());
               if(_loc2_ || param1)
               {
                  §§push(§§pop() / Math.PI);
                  if(!(_loc3_ && _loc3_))
                  {
                     addr71:
                     §§push(§§pop() % 360);
                  }
                  §§push(§§pop() - §§pop());
                  if(_loc2_ || §4!H§)
                  {
                     return §§pop() % 360;
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      public static function §@S§(param1:Number) : Number
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
         if(_loc3_ || param1)
         {
            §§push(§§pop() / (180 / Math.PI));
            if(!_loc4_)
            {
               return Number(§§pop());
            }
         }
      }
      
      public function get sprite() : Sprite
      {
         return this.§8!9§;
      }
      
      public function get x() : Number
      {
         return this.§;!@§;
      }
      
      public function get y() : Number
      {
         return this.§3L§;
      }
      
      public function get scale() : Number
      {
         return this.§!+§;
      }
      
      public function get front() : Boolean
      {
         return this.§ >§;
      }
      
      public function get §^K§() : Number
      {
         return this.§[;§.GetPosition().x;
      }
      
      public function get §!!L§() : Number
      {
         return this.§[;§.GetPosition().y;
      }
      
      public function get §&!'§() : §8!4§
      {
         return this.§9!>§;
      }
      
      public function get § !§() : Boolean
      {
         return this.§ !>§ >= 0;
      }
      
      protected function get §>&§() : §[?§
      {
         return this.§5M§;
      }
      
      public function get §#i§() : Boolean
      {
         return this.§5b§;
      }
      
      public function set §#i§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§5b§ = param1;
         }
      }
      
      public function set §"a§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§2!Y§ = param1;
         }
      }
      
      public function set §]s§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§4S§ = param1;
         }
      }
      
      public function get §]s§() : uint
      {
         return this.§4S§;
      }
      
      public function get §15§() : Boolean
      {
         return this.§#r§;
      }
      
      public function set §15§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§#r§ = param1;
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
         return this.§["§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            this.§["§ = param1;
         }
      }
      
      public function §7!s§(param1:b2FilterData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§]!B§);
            if(!(_loc3_ && this))
            {
               if(!§§pop())
               {
               }
               §§goto(addr44);
            }
            §§pop().§]_§(param1);
         }
         addr44:
         if(_loc2_)
         {
            §§push(this.§]!B§);
         }
      }
      
      protected function §5r§(param1:String) : int
      {
         return §6Q§.§5r§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2BodyDef = new b2BodyDef();
         if(_loc4_ || _loc3_)
         {
            §§push(_loc3_.position);
            loop0:
            while(true)
            {
               §§push(param1);
               addr142:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr101);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.mWorld);
            if(_loc1_ || _loc1_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(this.mWorld);
                     addr148:
                     while(true)
                     {
                        §§pop().§3!j§(this.§+$§());
                        addr151:
                        while(true)
                        {
                           this.mWorld = null;
                           addr135:
                           while(true)
                           {
                           }
                        }
                     }
                     addr50:
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     this.§9!>§ = null;
                     addr57:
                     if(!_loc2_)
                     {
                        if(!_loc2_)
                        {
                           if(_loc2_ && _loc1_)
                           {
                              loop9:
                              while(!(_loc2_ && this))
                              {
                                 if(!(_loc2_ && this))
                                 {
                                    addr93:
                                    loop4:
                                    while(true)
                                    {
                                       this.§]!B§ = null;
                                       addr72:
                                       addr130:
                                       while(!_loc2_)
                                       {
                                          this.§1!4§ = null;
                                          loop6:
                                          while(true)
                                          {
                                             if(!(_loc2_ && this))
                                             {
                                                §§goto(addr50);
                                             }
                                             else
                                             {
                                                while(_loc1_ || this)
                                                {
                                                   §§push(this.§8!9§);
                                                   while(true)
                                                   {
                                                      §§pop().dispose();
                                                      break loop9;
                                                   }
                                                   continue loop6;
                                                }
                                                §§goto(addr135);
                                                addr105:
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§push(this.§8!9§);
                                          if(_loc1_ || _loc2_)
                                          {
                                             if(!§§pop())
                                             {
                                                continue loop4;
                                             }
                                             §§goto(addr105);
                                          }
                                          §§goto(addr124);
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr151);
                                 }
                                 §§goto(addr135);
                              }
                              while(true)
                              {
                                 this.§8!9§ = null;
                                 §§goto(addr79);
                              }
                              addr79:
                           }
                           return;
                        }
                        §§goto(addr72);
                     }
                     §§goto(addr43);
                  }
               }
               while(true)
               {
                  this.§[!"§.dispose();
                  §§goto(addr130);
                  §§goto(addr135);
               }
            }
            §§goto(addr148);
         }
         §§goto(addr151);
      }
      
      public function §3!7§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §§push(this.§+$§());
            §§push(360);
            §§push(param1);
            if(!_loc2_)
            {
               §§push(§§pop() % 360);
            }
            §§push(§§pop() - §§pop());
            if(!(_loc2_ && this))
            {
               §§push(§§pop() / (180 / Math.PI));
            }
            §§pop().§ !W§(§§pop());
         }
      }
      
      public function §[!i§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(360);
         §§push(this.§+$§().GetAngle());
         if(_loc2_ || _loc1_)
         {
            §§push(180);
            if(_loc2_ || _loc1_)
            {
               §§push(§§pop() * §§pop());
               if(_loc2_ || _loc2_)
               {
                  §§push(§§pop() / Math.PI);
                  if(_loc2_)
                  {
                     addr69:
                     §§push(§§pop() % 360);
                  }
                  §§push(§§pop() - §§pop());
                  if(_loc2_ || _loc1_)
                  {
                     return §§pop() % 360;
                  }
               }
            }
         }
         §§goto(addr69);
      }
      
      public function §%!=§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            this.§+$§().SetLinearVelocity(param1);
         }
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
                  this.§%O§();
                  addr85:
                  while(true)
                  {
                     continue loop1;
                  }
               }
            }
         }
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§]!B§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param3))
         {
            §§push(this.§+$§());
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
                                       §§push(this.§+$§());
                                       loop8:
                                       for(; !_loc5_; if(_loc5_ && this)
                                       {
                                          continue;
                                       },§§push(§§pop().GetPosition()),if(!_loc5_)
                                       {
                                          §§goto(addr40);
                                       },§§goto(addr97))
                                       {
                                          §§push(§§pop().GetPosition());
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             addr149:
                                             while(_loc6_)
                                             {
                                                §§push(param4);
                                                loop11:
                                                while(true)
                                                {
                                                   if(!(_loc6_ || param3))
                                                   {
                                                      break;
                                                      addr170:
                                                   }
                                                   §§push(§§pop() <= §§pop());
                                                   while(!(_loc5_ && param3))
                                                   {
                                                   }
                                                   continue loop4;
                                                   addr99:
                                                   loop22:
                                                   while(true)
                                                   {
                                                      if(!(_loc5_ && this))
                                                      {
                                                         §§push(§§pop() >= §§pop());
                                                         while(_loc5_ && param3)
                                                         {
                                                            while(true)
                                                            {
                                                               if(_loc5_ && param1)
                                                               {
                                                                  continue loop6;
                                                               }
                                                               §§pop();
                                                               while(true)
                                                               {
                                                                  §§push(this.§+$§());
                                                                  addr96:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().GetPosition());
                                                                     addr97:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().y);
                                                                        addr98:
                                                                        while(true)
                                                                        {
                                                                           continue loop22;
                                                                        }
                                                                     }
                                                                  }
                                                                  continue loop11;
                                                               }
                                                            }
                                                            continue loop7;
                                                         }
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc6_ || param1)
                                                            {
                                                               if(!(_loc6_ || param2))
                                                               {
                                                                  break;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  addr79:
                                                                  return §§pop();
                                                               }
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                                  if(_loc5_ && this)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!_loc6_)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                                  §§push(this.§+$§());
                                                                  if(_loc6_)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  §§goto(addr96);
                                                                  addr67:
                                                                  §§push(§§pop() <= §§pop());
                                                                  if(_loc5_ && param2)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!_loc5_)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        §§goto(addr79);
                                                                     }
                                                                     §§goto(addr170);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr107);
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                                  §§goto(addr180);
                                                                  continue loop16;
                                                               }
                                                               addr179:
                                                            }
                                                            §§goto(addr188);
                                                         }
                                                         addr107:
                                                         continue loop5;
                                                      }
                                                      continue loop11;
                                                   }
                                                }
                                                continue loop3;
                                             }
                                             addr40:
                                             continue loop2;
                                             if(!(_loc6_ || this))
                                             {
                                                continue;
                                             }
                                             if(!_loc6_)
                                             {
                                                continue loop1;
                                             }
                                             §§push(§§pop().y);
                                             if(!(_loc5_ && param3))
                                             {
                                                if(_loc6_ || param1)
                                                {
                                                   §§push(param2);
                                                   if(_loc6_)
                                                   {
                                                      §§goto(addr67);
                                                   }
                                                   §§goto(addr99);
                                                }
                                                else
                                                {
                                                   §§goto(addr149);
                                                }
                                             }
                                             §§goto(addr98);
                                          }
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr179);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr188);
      }
      
      public function §9§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§1!4§ = param1;
         }
      }
      
      public function §"!7§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§1!4§)
            {
               if(_loc1_ || this)
               {
                  this.§%!=§(this.§1!4§,false);
                  do
                  {
                     this.§1!4§ = null;
                  }
                  while(_loc2_ && this);
                  
                  addr60:
               }
               §§goto(addr60);
            }
            return;
         }
         §§goto(addr60);
      }
      
      public function §%O§(param1:b2Vec2 = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!param1)
            {
               if(!_loc2_)
               {
                  §§push(this.§+$§());
                  if(!_loc2_)
                  {
                     param1 = §§pop().GetLinearVelocity();
                     addr30:
                     §§push(param1.x);
                     if(_loc3_)
                     {
                        §§push(0);
                        if(!(_loc2_ && this))
                        {
                           §§push(§§pop() == §§pop());
                           if(!_loc2_)
                           {
                              if(§§pop())
                              {
                                 if(_loc3_ || param1)
                                 {
                                    addr64:
                                    §§pop();
                                    §§goto(addr125);
                                 }
                              }
                              if(!§§pop())
                              {
                                 §§push(this.§+$§());
                                 if(_loc3_ || this)
                                 {
                                    §§goto(addr99);
                                 }
                              }
                              §§goto(addr123);
                           }
                           §§goto(addr64);
                        }
                     }
                     §§goto(addr119);
                  }
                  addr99:
                  §§pop().§09§(Math.atan2(param1.x,param1.y));
                  if(_loc3_)
                  {
                     if(!(_loc3_ || param1))
                     {
                        addr123:
                        this.§+$§().§09§(0);
                     }
                     §§goto(addr125);
                  }
                  addr125:
                  if(!(_loc2_ && param1))
                  {
                     addr119:
                     §§push(param1.y == 0);
                  }
                  return;
               }
               §§goto(addr64);
            }
            §§goto(addr30);
         }
         §§goto(addr123);
      }
      
      public function §?!s§(param1:b2Vec2 = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            if(!param1)
            {
               addr31:
               param1 = this.§+$§().GetLinearVelocity();
            }
            §§push(Math.atan2(-param1.y,param1.x) * (180 / Math.PI));
            if(!_loc3_)
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(_loc4_)
            {
               this.§3!7§(_loc2_);
            }
            return;
         }
         §§goto(addr31);
      }
      
      public function §!$§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§+$§().§09§(param1);
         }
      }
      
      public function §+$§() : b2Body
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§]!B§);
            if(!_loc2_)
            {
               if(§§pop() != null)
               {
                  if(_loc1_ || this)
                  {
                     §§goto(addr48);
                  }
               }
               return null;
            }
            §§goto(addr48);
         }
         addr48:
         return this.§]!B§.GetBody();
      }
      
      public function §&!N§(param1:Number = -9999, param2:Number = -9999) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            if(param1 != -9999)
            {
               loop7:
               while(true)
               {
                  this.§;!@§ = param1;
                  addr121:
                  while(true)
                  {
                     this.§3L§ = param2;
                     continue loop7;
                  }
               }
               addr118:
            }
            while(true)
            {
               §§push(this.§+$§());
               loop1:
               while(true)
               {
                  §§push(§§pop().GetPosition());
                  loop2:
                  while(true)
                  {
                     §§push(this.§;!@§);
                     loop3:
                     while(true)
                     {
                        §§push(§-!7§.§8!r§);
                        loop4:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           loop5:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              while(_loc3_ || param2)
                              {
                                 if(!(_loc4_ && param1))
                                 {
                                    §§push(this.§+$§());
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§push(§§pop().GetPosition());
                                       if(_loc3_)
                                       {
                                          §§push(this.§3L§);
                                          if(_loc3_)
                                          {
                                             if(_loc4_)
                                             {
                                                continue loop5;
                                             }
                                             §§push(§-!7§.§8!r§);
                                             if(_loc4_)
                                             {
                                                continue loop4;
                                             }
                                             §§push(§§pop() * §§pop());
                                          }
                                          if(_loc3_)
                                          {
                                             §§pop().y = §§pop();
                                             if(!_loc4_)
                                             {
                                                return;
                                             }
                                             continue;
                                          }
                                          continue loop3;
                                       }
                                       continue loop2;
                                    }
                                    continue loop1;
                                 }
                                 §§goto(addr121);
                              }
                              §§goto(addr107);
                           }
                        }
                     }
                  }
               }
               §§goto(addr114);
            }
         }
         §§goto(addr118);
      }
      
      public function §4W§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc3_:* = false;
         if(_loc5_)
         {
            §§push(this.§%m§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(true);
                     addr436:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        addr437:
                        while(true)
                        {
                           this.§%m§ = false;
                           addr431:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr435:
               }
               while(true)
               {
                  §§push(this.updateSpecialAnimation(param2));
                  loop6:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        loop10:
                        while(true)
                        {
                           §§push(this.updateFlyingFrameAnimations(param2));
                           loop11:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(true);
                                    addr391:
                                    while(_loc5_ || param2)
                                    {
                                       _loc3_ = §§pop();
                                       while(true)
                                       {
                                       }
                                    }
                                    continue loop0;
                                 }
                                 addr390:
                              }
                              while(true)
                              {
                                 §§push(this.updateScreamingFrameAnimations(param2));
                                 loop16:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop17:
                                       while(!_loc6_)
                                       {
                                          §§push(true);
                                          loop18:
                                          while(true)
                                          {
                                             if(!(_loc6_ && param1))
                                             {
                                                if(_loc6_)
                                                {
                                                   break;
                                                }
                                                _loc3_ = §§pop();
                                                loop19:
                                                while(true)
                                                {
                                                   addr356:
                                                   while(true)
                                                   {
                                                      §§push(this.updateBlinkingFrameAnimations(param2));
                                                      if(_loc5_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(true);
                                                               addr364:
                                                               while(true)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  addr365:
                                                                  while(true)
                                                                  {
                                                                  }
                                                               }
                                                            }
                                                            addr363:
                                                         }
                                                         loop22:
                                                         while(true)
                                                         {
                                                            §§push(_loc3_);
                                                            loop23:
                                                            while(!_loc6_)
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  addr338:
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§[!"§);
                                                                     addr340:
                                                                     while(true)
                                                                     {
                                                                        §§pop().§@F§();
                                                                        addr341:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc5_ || param1))
                                                                           {
                                                                              continue loop17;
                                                                           }
                                                                           addr348:
                                                                           if(!(_loc5_ || param2))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 continue loop10;
                                                                                 §§goto(addr348);
                                                                              }
                                                                              addr426:
                                                                           }
                                                                           else
                                                                           {
                                                                              addr355:
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  addr338:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this.§-!9§);
                                                                  loop25:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() > 1);
                                                                     if(!(_loc6_ && this))
                                                                     {
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(!_loc5_)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              loop45:
                                                                              while(!_loc6_)
                                                                              {
                                                                                 §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc5_)
                                                                                    {
                                                                                       §§push(this.§[!"§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(§§pop().§ !Q§));
                                                                                          addr259:
                                                                                          while(_loc5_)
                                                                                          {
                                                                                          }
                                                                                          continue loop45;
                                                                                       }
                                                                                       addr257:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr363);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop23;
                                                                              addr327:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 loop27:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc6_ && _loc3_))
                                                                                    {
                                                                                       §§push(4);
                                                                                       §§push(this.§[!"§.§ !Q§.blurX - 4);
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          §§push(param2);
                                                                                          if(!(_loc6_ && this))
                                                                                          {
                                                                                             §§push(§§pop() / 20);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc5_)
                                                                                          {
                                                                                             §§push(§§pop() % 28);
                                                                                          }
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       if(_loc6_)
                                                                                       {
                                                                                          continue loop25;
                                                                                       }
                                                                                       _loc4_ = §§pop();
                                                                                       loop28:
                                                                                       while(!(_loc6_ && param2))
                                                                                       {
                                                                                          §§push(this.§[!"§);
                                                                                          loop29:
                                                                                          for(; _loc5_ || param1; while(!(_loc6_ && param2))
                                                                                          {
                                                                                             §§pop().§ !Q§.blurY = _loc4_;
                                                                                             while(_loc5_)
                                                                                             {
                                                                                             }
                                                                                             continue loop27;
                                                                                          })
                                                                                          {
                                                                                             §§pop().§ !Q§.blurX = _loc4_;
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§[!"§);
                                                                                                continue loop29;
                                                                                                addr204:
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(!(_loc5_ || param2))
                                                                                                {
                                                                                                   continue loop22;
                                                                                                }
                                                                                                §§push(§,!L§);
                                                                                                if(_loc5_ || _loc3_)
                                                                                                {
                                                                                                   continue loop18;
                                                                                                }
                                                                                                §§goto(addr259);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr257);
                                                                                          loop37:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc6_ && param2)
                                                                                             {
                                                                                                continue loop28;
                                                                                             }
                                                                                             if(_loc6_ && param2)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                if(!_loc6_)
                                                                                                {
                                                                                                   loop38:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(this.§8!9§);
                                                                                                      loop39:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().x = Math.round(this.§;!@§);
                                                                                                         loop40:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc6_)
                                                                                                            {
                                                                                                               if(_loc5_ || this)
                                                                                                               {
                                                                                                                  if(!_loc5_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(this.§8!9§);
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().y = Math.round(this.§3L§);
                                                                                                                     addr67:
                                                                                                                     addr58:
                                                                                                                     addr92:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc6_ && param1))
                                                                                                                        {
                                                                                                                           continue loop37;
                                                                                                                        }
                                                                                                                        continue loop40;
                                                                                                                     }
                                                                                                                     this.§8!9§;
                                                                                                                     return;
                                                                                                                     if(!_loc5_)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     if(_loc6_)
                                                                                                                     {
                                                                                                                        continue loop39;
                                                                                                                     }
                                                                                                                     §§push(this.§3!f§);
                                                                                                                     if(!_loc6_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() / 180);
                                                                                                                        if(!(_loc6_ && param1))
                                                                                                                        {
                                                                                                                           addr47:
                                                                                                                           §§push(§§pop() * Math.PI);
                                                                                                                        }
                                                                                                                        §§pop().rotation = §§pop();
                                                                                                                        if(_loc6_ && param2)
                                                                                                                        {
                                                                                                                           §§goto(addr67);
                                                                                                                        }
                                                                                                                        §§goto(addr58);
                                                                                                                     }
                                                                                                                     §§goto(addr47);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(_loc5_ || param2)
                                                                                                                  {
                                                                                                                     this.§-k§(param1);
                                                                                                                     continue loop38;
                                                                                                                  }
                                                                                                                  §§goto(addr341);
                                                                                                                  addr177:
                                                                                                               }
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  this.§;!@§ = this.§!Y§;
                                                                                                                  continue loop19;
                                                                                                               }
                                                                                                               addr157:
                                                                                                            }
                                                                                                         }
                                                                                                         addr202:
                                                                                                         while(!_loc6_)
                                                                                                         {
                                                                                                            §§goto(addr204);
                                                                                                         }
                                                                                                         §§goto(addr237);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr431);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      §§push(true);
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   §§goto(addr435);
                                                                                                }
                                                                                                §§goto(addr436);
                                                                                                addr415:
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr390);
                                                                                       }
                                                                                       §§goto(addr437);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr338);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr340);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§[!"§);
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    if(_loc5_ || this)
                                                                                    {
                                                                                       §§pop().§ ![§(param2);
                                                                                       §§goto(addr202);
                                                                                    }
                                                                                    §§goto(addr340);
                                                                                 }
                                                                                 §§goto(addr227);
                                                                              }
                                                                           }
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr327);
                                                                  }
                                                                  §§goto(addr355);
                                                               }
                                                            }
                                                            continue loop16;
                                                         }
                                                      }
                                                      §§goto(addr364);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr391);
                                             }
                                          }
                                          continue loop11;
                                       }
                                       §§goto(addr409);
                                    }
                                    §§goto(addr356);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr415);
                  }
               }
            }
         }
         §§goto(addr338);
      }
      
      public function override() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.§+$§().GetPosition().x);
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(this.§+$§().GetPosition().y);
         if(!(_loc3_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            this.§`I§ = this.§>![§;
            loop0:
            while(true)
            {
               this.§%n§ = this.§!Y§;
               addr141:
               while(true)
               {
                  this.§#!y§ = this.§5`§;
                  addr133:
                  while(!_loc3_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§push(this);
            §§push(this.§+$§().GetAngle());
            if(_loc4_)
            {
               §§push(180);
               if(_loc4_ || _loc1_)
               {
                  addr126:
                  §§push(§§pop() * (§§pop() / Math.PI));
                  if(_loc4_)
                  {
                     §§push(360);
                  }
                  §§pop().§>![§ = §§pop();
                  loop4:
                  while(true)
                  {
                     §§push(this);
                     §§push(_loc1_);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop() / §-!7§.§8!r§);
                     }
                     §§pop().§!Y§ = §§pop();
                     while(true)
                     {
                        if(_loc4_ || this)
                        {
                           if(_loc3_)
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop4;
                     }
                     §§goto(addr141);
                  }
               }
               §§push(§§pop() % §§pop());
            }
            §§goto(addr126);
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
      
      public function §-k§(param1:Number, param2:Number = -1) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
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
                     while(true)
                     {
                        §§push(§[g§);
                        §§push("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = ");
                        if(!(_loc3_ && _loc3_))
                        {
                           §§push(§§pop() + param1);
                           if(_loc4_ || param2)
                           {
                              §§push(§§pop() + " overriding to 0");
                           }
                        }
                        §§pop().log(§§pop());
                        addr975:
                        while(true)
                        {
                        }
                     }
                     addr954:
                  }
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
                              while(true)
                              {
                                 §§push(this.§5M§.§+!X§.mLevelEngine.§"!w§);
                                 if(!_loc3_)
                                 {
                                    §§push(1000);
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       addr948:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    addr947:
                                 }
                                 addr949:
                                 while(true)
                                 {
                                    param2 = §§pop();
                                    addr950:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              addr929:
                           }
                           while(true)
                           {
                              §§push(param1);
                              while(true)
                              {
                                 §§push(-1);
                                 addr914:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr915:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       continue loop5;
                                    }
                                 }
                                 addr582:
                                 if(_loc3_ && param1)
                                 {
                                    continue;
                                 }
                                 §§push(this.§>![§);
                                 loop61:
                                 for(; _loc4_ || param1; if(_loc3_ && this)
                                 {
                                    continue;
                                 },if(_loc3_ && param2)
                                 {
                                    continue loop1;
                                 },§§goto(addr306),§§push(§§pop() - §§pop()))
                                 {
                                    §§push(§§pop() - §§pop());
                                    loop62:
                                    for(; _loc4_ || _loc3_; while(true)
                                    {
                                       if(!(_loc3_ && param1))
                                       {
                                          if(!_loc3_)
                                          {
                                             §§goto(addr461);
                                          }
                                          break;
                                       }
                                       continue loop62;
                                    },§§goto(addr654))
                                    {
                                       §§push(180);
                                       loop63:
                                       while(true)
                                       {
                                          §§push(§§pop() <= §§pop());
                                          loop64:
                                          while(true)
                                          {
                                             if(_loc4_)
                                             {
                                                if(_loc4_)
                                                {
                                                   loop65:
                                                   while(true)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         §§push(this.§`I§);
                                                         loop66:
                                                         while(!_loc3_)
                                                         {
                                                            §§push(this.§>![§);
                                                            loop67:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() > §§pop());
                                                               addr564:
                                                               loop68:
                                                               while(!(_loc3_ && param2))
                                                               {
                                                                  §§push(§§pop());
                                                                  loop69:
                                                                  while(_loc4_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        loop76:
                                                                        while(true)
                                                                        {
                                                                           loop77:
                                                                           while(true)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 §§push(this.§`I§);
                                                                                 loop78:
                                                                                 while(_loc4_)
                                                                                 {
                                                                                    §§push(this.§>![§);
                                                                                    loop79:
                                                                                    while(!_loc3_)
                                                                                    {
                                                                                       §§push(§§pop() < §§pop());
                                                                                       loop80:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             continue loop77;
                                                                                          }
                                                                                          addr390:
                                                                                          if(_loc4_ || param1)
                                                                                          {
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                addr399:
                                                                                                if(_loc4_ || this)
                                                                                                {
                                                                                                   if(_loc4_ || this)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      loop81:
                                                                                                      for(; !_loc3_; §§push(§§pop()),if(!(_loc4_ || param2))
                                                                                                      {
                                                                                                         continue;
                                                                                                      },if(!(_loc3_ && this))
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            §§goto(addr241);
                                                                                                         }
                                                                                                         §§goto(addr108);
                                                                                                      },§§goto(addr826))
                                                                                                      {
                                                                                                         if(!§§pop())
                                                                                                         {
                                                                                                            loop89:
                                                                                                            while(!§§pop())
                                                                                                            {
                                                                                                               §§push(this.§`I§);
                                                                                                               loop90:
                                                                                                               while(_loc4_)
                                                                                                               {
                                                                                                                  §§push(this.§>![§);
                                                                                                                  loop91:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc4_)
                                                                                                                     {
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() < §§pop());
                                                                                                                           loop92:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc4_ || param1))
                                                                                                                              {
                                                                                                                                 while(!_loc3_)
                                                                                                                                 {
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       loop83:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc3_ && this))
                                                                                                                                          {
                                                                                                                                             if(!(_loc3_ && param1))
                                                                                                                                             {
                                                                                                                                                if(!(_loc3_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(this.§>![§);
                                                                                                                                                   while(!_loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§`I§);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc3_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc4_)
                                                                                                                                                            {
                                                                                                                                                               continue loop61;
                                                                                                                                                            }
                                                                                                                                                            continue loop67;
                                                                                                                                                         }
                                                                                                                                                         continue loop79;
                                                                                                                                                      }
                                                                                                                                                      continue loop1;
                                                                                                                                                      addr54:
                                                                                                                                                      if(_loc3_ && param1)
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      if(_loc3_)
                                                                                                                                                      {
                                                                                                                                                         continue loop78;
                                                                                                                                                      }
                                                                                                                                                      if(_loc4_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         addr70:
                                                                                                                                                         if(!(_loc3_ && param2))
                                                                                                                                                         {
                                                                                                                                                            if(_loc4_ || param1)
                                                                                                                                                            {
                                                                                                                                                               addr84:
                                                                                                                                                               §§push(180);
                                                                                                                                                               if(_loc4_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop63;
                                                                                                                                                                  }
                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() > §§pop());
                                                                                                                                                                     if(!_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop92;
                                                                                                                                                                        }
                                                                                                                                                                        addr101:
                                                                                                                                                                        if(_loc4_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           loop95:
                                                                                                                                                                           while(§§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc4_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc4_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                       addr648:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(this);
                                                                                                                                                                                    §§push(this.§>![§);
                                                                                                                                                                                    if(!(_loc3_ && param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(param1);
                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§`I§);
                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() + 360);
                                                                                                                                                                                             if(!(_loc3_ && param2))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() - this.§>![§);
                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr168:
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   if(!(_loc3_ && param2))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr166:
                                                                                                                                                                                                      §§push(§§pop() / param2);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().§3!f§ = §§pop() + §§pop();
                                                                                                                                                                                                   addr169:
                                                                                                                                                                                                   if(!(_loc3_ && param2))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc4_ || param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break loop89;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(_loc4_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc4_ || param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc4_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr812:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§5`§);
                                                                                                                                                                                                                  break loop62;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr890:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         break loop64;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop83;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr539:
                                                                                                                                                                                                   addr244:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc3_ && param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break loop91;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!(_loc3_ && param2))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr272:
                                                                                                                                                                                                               if(!(_loc3_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§>![§);
                                                                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop90;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc4_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr35:
                                                                                                                                                                                                                           if(_loc4_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(this.§`I§);
                                                                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop91;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr46:
                                                                                                                                                                                                                              if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr54);
                                                                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                 addr659:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                    break loop69;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr46);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(!_loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr582);
                                                                                                                                                                                                                              §§goto(addr35);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop5;
                                                                                                                                                                                                                           addr580:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop66;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§>![§);
                                                                                                                                                                                                                        break loop79;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr54);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this);
                                                                                                                                                                                                                  §§push(this.§!Y§);
                                                                                                                                                                                                                  if(_loc4_ || param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() + this.§"!s§);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§pop().§;!@§ = §§pop();
                                                                                                                                                                                                                  addr851:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr812);
                                                                                                                                                                                                                     addr368:
                                                                                                                                                                                                                     if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break loop95;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr272);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr884:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            this.§3!f§ = this.§>![§;
                                                                                                                                                                                                            addr710:
                                                                                                                                                                                                            if(_loc4_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc4_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(param1);
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(0);
                                                                                                                                                                                                                        addr805:
                                                                                                                                                                                                                        addr461:
                                                                                                                                                                                                                        loop38:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                                                                                                                           addr806:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr807:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!§§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this);
                                                                                                                                                                                                                                    §§push(param1);
                                                                                                                                                                                                                                    if(_loc4_ || param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(this.§#!y§);
                                                                                                                                                                                                                                       if(!_loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() - this.§5`§);
                                                                                                                                                                                                                                          if(_loc4_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr792:
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             if(!(_loc3_ && _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(param2);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§pop().§5!2§ = §§pop();
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this);
                                                                                                                                                                                                                                                §§push(this.§5`§);
                                                                                                                                                                                                                                                if(!_loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + this.§5!2§);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§pop().§3L§ = §§pop();
                                                                                                                                                                                                                                                addr760:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr722:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§>![§);
                                                                                                                                                                                                                                                      addr725:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(this.§`I§);
                                                                                                                                                                                                                                                         addr727:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                                            addr728:
                                                                                                                                                                                                                                                            addr907:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc3_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc3_ && this)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!§§pop())
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                                                                           break loop64;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr739:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr704:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        break loop68;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     break loop69;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr825:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                                                                  break loop92;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop());
                                                                                                                                                                                                                                                               addr908:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§pop();
                                                                                                                                                                                                                                                                        addr910:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(param1);
                                                                                                                                                                                                                                                                           addr893:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(0);
                                                                                                                                                                                                                                                                              addr894:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr70);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr909:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr896:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(§§pop())
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              this.§"!s§ = 0;
                                                                                                                                                                                                                                                                              addr900:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 this.§;!@§ = this.§!Y§;
                                                                                                                                                                                                                                                                                 §§goto(addr890);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr897:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(this);
                                                                                                                                                                                                                                                                           §§push(param1);
                                                                                                                                                                                                                                                                           if(_loc4_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(this.§%n§);
                                                                                                                                                                                                                                                                              if(!(_loc3_ && param2))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() - this.§!Y§);
                                                                                                                                                                                                                                                                                 if(!(_loc3_ && param2))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr878:
                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    if(_loc4_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr882:
                                                                                                                                                                                                                                                                                       §§push(§§pop() / param2);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§pop().§"!s§ = §§pop();
                                                                                                                                                                                                                                                                                    §§goto(addr884);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr882);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr878);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr882);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr812);
                                                                                                                                                                                                                                                                        §§goto(addr399);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   break loop80;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr710);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr793:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr792);
                                                                                                                                                                                                                                          §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr792);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr808:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    this.§5!2§ = 0;
                                                                                                                                                                                                                                    addr811:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       this.§3L§ = this.§5`§;
                                                                                                                                                                                                                                       addr799:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!_loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr722);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr954);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr975);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop38;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(!(_loc3_ && this))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(180);
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc4_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc3_ && this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                 continue loop76;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr894);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop6;
                                                                                                                                                                                                                           addr479:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr835:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc3_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break loop95;
                                                                                                                                                                                                                  addr721:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr929);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr793);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr368);
                                                                                                                                                                                                      §§goto(addr851);
                                                                                                                                                                                                      §§goto(addr169);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(_loc4_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc4_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr910);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr799);
                                                                                                                                                                                                   §§goto(addr812);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr166);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr168);
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr447);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr576:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr168);
                                                                                                                                                                           }
                                                                                                                                                                           return;
                                                                                                                                                                           addr108:
                                                                                                                                                                        }
                                                                                                                                                                        loop88:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc3_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop89;
                                                                                                                                                                           }
                                                                                                                                                                           addr575:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§pop();
                                                                                                                                                                              break loop88;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr101);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr576);
                                                                                                                                                                        addr319:
                                                                                                                                                                     }
                                                                                                                                                                     while(_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        §§goto(addr244);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop68;
                                                                                                                                                                     addr241:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr805);
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc4_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr319);
                                                                                                                                                                        §§push(§§pop() <= §§pop());
                                                                                                                                                                     }
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr479);
                                                                                                                                                                  §§goto(addr84);
                                                                                                                                                               }
                                                                                                                                                               while(_loc4_ || this)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr704);
                                                                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr947);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr914);
                                                                                                                                                               addr309:
                                                                                                                                                               addr694:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr949);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr893);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr725);
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§%n§);
                                                                                                                                                      break loop61;
                                                                                                                                                   }
                                                                                                                                                   addr904:
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§goto(addr900);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             addr614:
                                                                                                                                             §§push(this);
                                                                                                                                             §§push(this.§>![§);
                                                                                                                                             if(_loc4_ || param2)
                                                                                                                                             {
                                                                                                                                                §§push(param1);
                                                                                                                                                if(_loc4_)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§`I§);
                                                                                                                                                   if(_loc4_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - this.§>![§);
                                                                                                                                                      if(!_loc3_)
                                                                                                                                                      {
                                                                                                                                                         addr646:
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc4_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push(param2);
                                                                                                                                                         }
                                                                                                                                                         §§pop().§3!f§ = §§pop() + §§pop();
                                                                                                                                                         §§goto(addr648);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr646);
                                                                                                                                                      §§push(§§pop() / §§pop());
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr646);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr950);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§pop();
                                                                                                                                       §§goto(addr835);
                                                                                                                                    }
                                                                                                                                    continue loop92;
                                                                                                                                 }
                                                                                                                                 continue loop64;
                                                                                                                                 addr417:
                                                                                                                              }
                                                                                                                              if(!_loc4_)
                                                                                                                              {
                                                                                                                                 continue loop80;
                                                                                                                              }
                                                                                                                              if(_loc4_ || this)
                                                                                                                              {
                                                                                                                                 continue loop81;
                                                                                                                              }
                                                                                                                              §§goto(addr728);
                                                                                                                           }
                                                                                                                           while(_loc4_ || _loc3_)
                                                                                                                           {
                                                                                                                              if(!§§pop())
                                                                                                                              {
                                                                                                                                 §§goto(addr834);
                                                                                                                              }
                                                                                                                              §§goto(addr806);
                                                                                                                           }
                                                                                                                           §§goto(addr908);
                                                                                                                           addr826:
                                                                                                                        }
                                                                                                                        §§goto(addr727);
                                                                                                                     }
                                                                                                                     §§goto(addr287);
                                                                                                                  }
                                                                                                                  §§push(this);
                                                                                                                  §§push(this.§>![§);
                                                                                                                  if(!(_loc3_ && param2))
                                                                                                                  {
                                                                                                                     §§push(param1);
                                                                                                                     if(_loc4_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(this.§`I§);
                                                                                                                        if(!_loc3_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() - 360);
                                                                                                                           if(_loc4_ || _loc3_)
                                                                                                                           {
                                                                                                                              addr527:
                                                                                                                              §§push(§§pop() - this.§>![§);
                                                                                                                              if(!_loc3_)
                                                                                                                              {
                                                                                                                                 addr538:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!_loc3_)
                                                                                                                                 {
                                                                                                                                    addr536:
                                                                                                                                    §§push(§§pop() / param2);
                                                                                                                                 }
                                                                                                                                 §§pop().§3!f§ = §§pop() + §§pop();
                                                                                                                                 §§goto(addr539);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr536);
                                                                                                                        }
                                                                                                                        §§goto(addr527);
                                                                                                                     }
                                                                                                                     §§goto(addr536);
                                                                                                                  }
                                                                                                                  §§goto(addr538);
                                                                                                               }
                                                                                                               while(_loc4_)
                                                                                                               {
                                                                                                                  §§goto(addr309);
                                                                                                                  §§push(180);
                                                                                                               }
                                                                                                               continue loop62;
                                                                                                            }
                                                                                                            if(_loc4_)
                                                                                                            {
                                                                                                               if(_loc4_)
                                                                                                               {
                                                                                                                  if(_loc4_)
                                                                                                                  {
                                                                                                                     §§push(this);
                                                                                                                     §§push(this.§>![§);
                                                                                                                     if(_loc4_ || param2)
                                                                                                                     {
                                                                                                                        §§push(param1);
                                                                                                                        if(_loc4_)
                                                                                                                        {
                                                                                                                           §§push(this.§`I§);
                                                                                                                           if(!(_loc3_ && param2))
                                                                                                                           {
                                                                                                                              §§push(§§pop() - this.§>![§);
                                                                                                                              if(!(_loc3_ && param2))
                                                                                                                              {
                                                                                                                                 addr366:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc4_)
                                                                                                                                 {
                                                                                                                                    §§push(param2);
                                                                                                                                 }
                                                                                                                                 §§pop().§3!f§ = §§pop() + §§pop();
                                                                                                                                 §§goto(addr368);
                                                                                                                              }
                                                                                                                              §§goto(addr366);
                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr366);
                                                                                                                  }
                                                                                                                  §§goto(addr975);
                                                                                                               }
                                                                                                               §§goto(addr710);
                                                                                                            }
                                                                                                            break loop80;
                                                                                                         }
                                                                                                         §§goto(addr417);
                                                                                                      }
                                                                                                      continue loop69;
                                                                                                   }
                                                                                                   §§goto(addr909);
                                                                                                }
                                                                                                §§goto(addr896);
                                                                                             }
                                                                                             §§goto(addr807);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             break loop80;
                                                                                             §§goto(addr390);
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_ || param2)
                                                                                          {
                                                                                             if(!(_loc3_ && _loc3_))
                                                                                             {
                                                                                                addr683:
                                                                                                if(_loc4_ || param2)
                                                                                                {
                                                                                                   §§goto(addr580);
                                                                                                   §§push(this.§`I§);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr904);
                                                                                                      §§goto(addr683);
                                                                                                   }
                                                                                                   addr924:
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr897);
                                                                                          }
                                                                                          §§goto(addr760);
                                                                                       }
                                                                                       §§goto(addr900);
                                                                                    }
                                                                                    while(_loc4_)
                                                                                    {
                                                                                       §§push(§§pop() - §§pop());
                                                                                       continue loop62;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr825);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§goto(addr694);
                                                                                 }
                                                                                 addr693:
                                                                              }
                                                                              §§goto(addr496);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr575);
                                                                  }
                                                                  while(!(_loc3_ && param2))
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        continue loop65;
                                                                     }
                                                                     §§goto(addr668);
                                                                  }
                                                                  §§goto(addr738);
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     §§push(this.§`I§);
                                                                     while(!_loc3_)
                                                                     {
                                                                        §§goto(addr658);
                                                                        §§push(this.§>![§);
                                                                     }
                                                                     continue loop0;
                                                                     addr654:
                                                                  }
                                                                  §§goto(addr706);
                                                                  §§goto(addr738);
                                                                  §§goto(addr564);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr948);
                                                      }
                                                      §§goto(addr614);
                                                   }
                                                }
                                                §§goto(addr739);
                                             }
                                             §§goto(addr659);
                                          }
                                          while(_loc4_)
                                          {
                                             if(_loc4_ || this)
                                             {
                                                §§goto(addr693);
                                                §§push(param1);
                                             }
                                             §§goto(addr808);
                                          }
                                          §§goto(addr811);
                                       }
                                    }
                                    while(_loc4_ || _loc3_)
                                    {
                                       §§goto(addr824);
                                       §§push(this.§#!y§);
                                    }
                                    §§goto(addr915);
                                 }
                                 while(true)
                                 {
                                    §§goto(addr907);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr721);
      }
      
      public function get §#!D§() : Point
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(!§,!L§)
            {
            }
         }
         return null;
      }
      
      public function §<=§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§ W§);
            if(!(_loc1_ && this))
            {
               §§push(§8!4§.§0!1§);
               if(!_loc1_)
               {
                  §§push(§§pop() == §§pop());
                  if(_loc2_ || this)
                  {
                     if(!§§pop())
                     {
                        if(!_loc1_)
                        {
                           addr64:
                           §§pop();
                           return this.§ W§ == §8!4§.§9!%§;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      public function §'!e§() : Boolean
      {
         return this.§ W§ == §8!4§.§+!§;
      }
      
      public function §3!i§() : Boolean
      {
         return this.§ W§ == §8!4§.§%u§;
      }
      
      public function §=!P§() : Boolean
      {
         return this.§ W§ == §8!4§.§9!%§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§ W§ == §8!4§.§,!?§;
      }
      
      public function isGround() : Boolean
      {
         return this.§ W§ == §8!4§.§`!N§;
      }
      
      public function §'!#§() : Boolean
      {
         return this.§ W§ == §8!4§.§97§;
      }
      
      public function §[!<§() : Boolean
      {
         return this.§ W§ == §8!4§.§+!#§;
      }
      
      public function §=f§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§@!p§);
            loop0:
            while(true)
            {
               §§push("MISC_EXPLOSIVE_TNT");
               addr98:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  addr99:
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 continue;
                              }
                              if(_loc1_)
                              {
                                 §§push(true);
                                 break;
                              }
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                              while(true)
                              {
                                 continue loop6;
                              }
                           }
                           while(true)
                           {
                              if(_loc1_ || _loc2_)
                              {
                                 break loop2;
                              }
                              continue loop2;
                           }
                        }
                        return §§pop();
                        addr79:
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr94);
      }
      
      public function §8s§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.§'!e§());
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
                           addr129:
                           while(true)
                           {
                              §§push(this.§'!#§());
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 addr109:
                                 while(!_loc2_)
                                 {
                                 }
                                 continue loop3;
                                 addr48:
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    if(!_loc2_)
                                    {
                                       §§goto(addr67);
                                    }
                                    continue loop1;
                                 }
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
                                 while(!(_loc2_ && this))
                                 {
                                    while(true)
                                    {
                                       §§push(this.§[!<§());
                                       loop14:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          loop15:
                                          while(true)
                                          {
                                             if(_loc1_)
                                             {
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc2_)
                                                   {
                                                      if(!_loc1_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            if(!(_loc1_ || this))
                                                            {
                                                               continue loop9;
                                                            }
                                                            §§pop();
                                                            if(!_loc1_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(this.§15§);
                                                            if(!(_loc2_ && _loc2_))
                                                            {
                                                               if(_loc2_)
                                                               {
                                                                  continue;
                                                               }
                                                               if(_loc2_)
                                                               {
                                                                  continue loop14;
                                                               }
                                                               if(_loc1_)
                                                               {
                                                                  addr41:
                                                                  §§push(!§§pop());
                                                                  if(_loc2_ && _loc1_)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  §§goto(addr48);
                                                               }
                                                               §§goto(addr109);
                                                            }
                                                            §§goto(addr41);
                                                         }
                                                         continue loop10;
                                                      }
                                                      addr67:
                                                   }
                                                   continue loop8;
                                                   return §§pop();
                                                }
                                                addr77:
                                             }
                                             continue loop0;
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr129);
                              }
                           }
                           §§goto(addr77);
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr122);
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §7!e§() : Number
      {
         return Number(Math.sqrt(this.§+$§().GetLinearVelocity().x * this.§+$§().GetLinearVelocity().x + this.§+$§().GetLinearVelocity().y * this.§+$§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         if(_loc9_)
         {
            §§push(this.§3!i§());
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(this.§5M§);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop().§<!9§());
                        loop3:
                        while(true)
                        {
                           if(§§pop())
                           {
                              loop4:
                              while(true)
                              {
                                 §§push(this.§ !>§);
                                 loop5:
                                 while(true)
                                 {
                                    §§push(0);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§§pop() < §§pop());
                                       if(_loc9_ || this)
                                       {
                                          §§push(§§pop());
                                          loop7:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                loop59:
                                                while(true)
                                                {
                                                   §§pop();
                                                   addr752:
                                                   while(true)
                                                   {
                                                      if(!(_loc9_ || param1))
                                                      {
                                                         return this.§%,§;
                                                      }
                                                      addr772:
                                                      addr774:
                                                      §§push(param6);
                                                      continue loop59;
                                                   }
                                                }
                                                addr751:
                                             }
                                             while(true)
                                             {
                                                loop9:
                                                while(!§§pop())
                                                {
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(param1);
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(this.§ !>§);
                                                         loop12:
                                                         while(true)
                                                         {
                                                            if(§§pop() <= §§pop())
                                                            {
                                                               §§goto(addr632);
                                                            }
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§push(param1);
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§push(this.§ !>§);
                                                                  if(!_loc10_)
                                                                  {
                                                                     if(!(_loc10_ && this))
                                                                     {
                                                                        §§push(§§pop() - §§pop());
                                                                        if(_loc9_ || param3)
                                                                        {
                                                                           if(!_loc10_)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop15:
                                                                              while(true)
                                                                              {
                                                                                 param1 = §§pop();
                                                                                 addr539:
                                                                                 while(!(_loc10_ && param3))
                                                                                 {
                                                                                    §§push(param2);
                                                                                    while(_loc9_ || this)
                                                                                    {
                                                                                       §§push(Boolean(§§pop()));
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop());
                                                                                          continue loop7;
                                                                                       }
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr616:
                                                                                       §§pop();
                                                                                       addr617:
                                                                                       if(!(_loc10_ && param3))
                                                                                       {
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             addr562:
                                                                                             §§push(this.§%,§);
                                                                                             if(_loc9_ || param3)
                                                                                             {
                                                                                                if(_loc9_ || this)
                                                                                                {
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      §§push(this.§0K§);
                                                                                                      break loop14;
                                                                                                   }
                                                                                                   continue loop5;
                                                                                                }
                                                                                                addr691:
                                                                                                §§push(12);
                                                                                                if(!(_loc9_ || param3))
                                                                                                {
                                                                                                   continue loop6;
                                                                                                }
                                                                                                if(§§pop() > §§pop())
                                                                                                {
                                                                                                   addr700:
                                                                                                   this.§;k§(§'y§.§9V§);
                                                                                                   addr643:
                                                                                                   §§push(this.§%,§);
                                                                                                   if(_loc10_ && param2)
                                                                                                   {
                                                                                                      addr719:
                                                                                                      addr718:
                                                                                                      if(§§pop() > 30)
                                                                                                      {
                                                                                                         addr720:
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            this.§;k§(§'y§.§+i§);
                                                                                                            §§goto(addr643);
                                                                                                            addr726:
                                                                                                         }
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      §§goto(addr691);
                                                                                                      §§push(param1);
                                                                                                   }
                                                                                                   return §§pop();
                                                                                                   addr704:
                                                                                                }
                                                                                                §§push(param1);
                                                                                                if(_loc9_ || param1)
                                                                                                {
                                                                                                   addr667:
                                                                                                   §§push(3);
                                                                                                   if(!(_loc10_ && param3))
                                                                                                   {
                                                                                                      if(§§pop() > §§pop())
                                                                                                      {
                                                                                                         addr675:
                                                                                                         this.§;k§(§'y§.§%!;§);
                                                                                                         addr679:
                                                                                                         if(_loc9_ || param2)
                                                                                                         {
                                                                                                         }
                                                                                                         break loop9;
                                                                                                      }
                                                                                                      §§goto(addr643);
                                                                                                   }
                                                                                                   §§goto(addr719);
                                                                                                }
                                                                                                §§goto(addr774);
                                                                                             }
                                                                                             §§goto(addr643);
                                                                                          }
                                                                                          §§goto(addr767);
                                                                                       }
                                                                                       §§goto(addr720);
                                                                                    }
                                                                                    if(§§pop())
                                                                                    {
                                                                                       addr597:
                                                                                       §§push(this);
                                                                                       §§push(this.§0K§);
                                                                                       if(!(_loc10_ && param1))
                                                                                       {
                                                                                          §§push(§§pop() - 1);
                                                                                       }
                                                                                       §§pop().§%,§ = §§pop();
                                                                                    }
                                                                                    §§goto(addr550);
                                                                                    §§push(this.§%,§);
                                                                                 }
                                                                                 continue loop13;
                                                                                 loop37:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc10_ && param1))
                                                                                    {
                                                                                       if(_loc9_ || param3)
                                                                                       {
                                                                                          §§push(1);
                                                                                          loop38:
                                                                                          for(; !_loc10_; §§push(1),if(!(_loc9_ || param2))
                                                                                          {
                                                                                             continue;
                                                                                          },if(!(_loc10_ && param1))
                                                                                          {
                                                                                             if(§§pop() < §§pop())
                                                                                             {
                                                                                                §§goto(addr168);
                                                                                             }
                                                                                             this.§;k§(§'y§.§9V§);
                                                                                             §§goto(addr91);
                                                                                          },§§goto(addr667))
                                                                                          {
                                                                                             §§push(§§pop() < §§pop());
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   if(!_loc10_)
                                                                                                   {
                                                                                                      if(!_loc10_)
                                                                                                      {
                                                                                                         §§push(§§pop());
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     loop53:
                                                                                                                     while(!(_loc10_ && param1))
                                                                                                                     {
                                                                                                                        §§pop();
                                                                                                                        while(_loc9_)
                                                                                                                        {
                                                                                                                           §§push(this.§2!Y§);
                                                                                                                           loop55:
                                                                                                                           while(!(_loc10_ && this))
                                                                                                                           {
                                                                                                                              §§push(Boolean(§§pop()));
                                                                                                                              while(_loc9_ || param2)
                                                                                                                              {
                                                                                                                                 loop34:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop())
                                                                                                                                    {
                                                                                                                                       addr290:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                       }
                                                                                                                                       addr290:
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(this);
                                                                                                                                       §§push(this.§%,§);
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() - param1);
                                                                                                                                       }
                                                                                                                                       §§pop().§%,§ = §§pop();
                                                                                                                                       while(!_loc10_)
                                                                                                                                       {
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             if(!(_loc10_ && this))
                                                                                                                                             {
                                                                                                                                                if(_loc10_)
                                                                                                                                                {
                                                                                                                                                   addr632:
                                                                                                                                                   §§push(param1);
                                                                                                                                                   do
                                                                                                                                                   {
                                                                                                                                                      return this.§ !>§;
                                                                                                                                                   }
                                                                                                                                                   while(!(_loc9_ || param2));
                                                                                                                                                   
                                                                                                                                                   return §§pop();
                                                                                                                                                }
                                                                                                                                                if(!_loc10_)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      continue loop37;
                                                                                                                                                      §§goto(addr290);
                                                                                                                                                   }
                                                                                                                                                   addr215:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr679);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr597);
                                                                                                                                       }
                                                                                                                                       loop26:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§-!7§.§>!%§.getValue());
                                                                                                                                          if(_loc9_)
                                                                                                                                          {
                                                                                                                                             addr436:
                                                                                                                                             if(_loc9_ || param3)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * _loc7_);
                                                                                                                                                loop27:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc9_ || param1)
                                                                                                                                                   {
                                                                                                                                                      if(_loc9_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            §§push(int(§§pop()));
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc8_ = §§pop();
                                                                                                                                                               loop29:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§5M§);
                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(§§pop().§+!X§);
                                                                                                                                                                  §§push(_loc8_);
                                                                                                                                                                  §§push(§;!8§.§>X§);
                                                                                                                                                                  if(!(_loc10_ && param3))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§%,§ > param1);
                                                                                                                                                                     if(_loc9_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        if(§§pop())
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc10_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              §§pop();
                                                                                                                                                                              addr398:
                                                                                                                                                                              §§push(param3);
                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr401:
                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr401);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().addScore(§§pop(),§§pop(),§§pop(),this.§+$§().GetPosition().x,this.§+$§().GetPosition().y,§6Q§.§>k§(this.§@!p§));
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc10_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc10_ && param1)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop1;
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(param5);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc9_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc10_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Boolean(§§pop()));
                                                                                                                                                                                          if(_loc10_ && param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop53;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                          while(!_loc10_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop53;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop34;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr486);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr615);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       while(_loc9_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          while(!(_loc10_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§8s§());
                                                                                                                                                                                                break loop55;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr204:
                                                                                                                                                                                             if(_loc10_ && param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             this.§%,§ = 1;
                                                                                                                                                                                             loop43:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr142:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(this.§%,§);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc9_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop38;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(this.§%,§);
                                                                                                                                                                                                      addr60:
                                                                                                                                                                                                      continue loop11;
                                                                                                                                                                                                      if(_loc9_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc9_ || param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc9_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               return §§pop();
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop27;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop37;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr667);
                                                                                                                                                                                                   continue loop43;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr617);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr616);
                                                                                                                                                                                       addr503:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr616);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop9;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           break;
                                                                                                                                                                           if(!(_loc9_ || param2))
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           if(!_loc9_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop29;
                                                                                                                                                                           }
                                                                                                                                                                           if(_loc9_ || param3)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc9_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc9_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc9_ || param3)
                                                                                                                                                                                    {
                                                                                                                                                                                       this.addDamageParticles(this.§5M§.§+!X§.particles,param1);
                                                                                                                                                                                       §§goto(addr69);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr675);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop10;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr539);
                                                                                                                                                                           }
                                                                                                                                                                           while(!_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(int(Math.min(this.§%,§,int(param1))));
                                                                                                                                                                              break loop26;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr726);
                                                                                                                                                                        }
                                                                                                                                                                        addr638:
                                                                                                                                                                        this.§;k§(§'y§.§%!;§);
                                                                                                                                                                        §§goto(addr642);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr401);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr398);
                                                                                                                                                               }
                                                                                                                                                               continue loop2;
                                                                                                                                                            }
                                                                                                                                                            addr457:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr767);
                                                                                                                                                      }
                                                                                                                                                      break;
                                                                                                                                                   }
                                                                                                                                                   continue loop14;
                                                                                                                                                }
                                                                                                                                                §§goto(addr550);
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§goto(addr457);
                                                                                                                                       }
                                                                                                                                       addr299:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc7_ = §§pop();
                                                                                                                                          §§goto(addr483);
                                                                                                                                          §§goto(addr436);
                                                                                                                                       }
                                                                                                                                       addr483:
                                                                                                                                    }
                                                                                                                                    §§goto(addr215);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    §§goto(addr472);
                                                                                                                                 }
                                                                                                                                 §§goto(addr315);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc9_ || param2)
                                                                                                                              {
                                                                                                                                 addr469:
                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§goto(addr471);
                                                                                                                                    §§goto(addr469);
                                                                                                                                 }
                                                                                                                                 addr470:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr707);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr752);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                                  continue loop3;
                                                                                                               }
                                                                                                               §§goto(addr614);
                                                                                                               §§push(Boolean(§§pop()));
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr195);
                                                                                                            }
                                                                                                            §§goto(addr719);
                                                                                                         }
                                                                                                         §§goto(addr337);
                                                                                                      }
                                                                                                      break;
                                                                                                   }
                                                                                                   §§goto(addr494);
                                                                                                }
                                                                                                §§goto(addr273);
                                                                                             }
                                                                                             §§goto(addr596);
                                                                                          }
                                                                                          §§goto(addr691);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    continue loop15;
                                                                                 }
                                                                                 §§goto(addr659);
                                                                              }
                                                                              addr538:
                                                                           }
                                                                           §§goto(addr562);
                                                                        }
                                                                        §§goto(addr538);
                                                                     }
                                                                     addr635:
                                                                     §§push(§§pop() / 2);
                                                                     while(true)
                                                                     {
                                                                        if(§§pop() >= §§pop())
                                                                        {
                                                                           §§goto(addr638);
                                                                        }
                                                                        §§goto(addr610);
                                                                        break loop14;
                                                                     }
                                                                     §§goto(addr595);
                                                                     addr637:
                                                                  }
                                                                  break;
                                                               }
                                                               if(!(_loc10_ && this))
                                                               {
                                                                  if(!(_loc9_ || param2))
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  §§goto(addr615);
                                                                  §§push(§§pop() == §§pop());
                                                               }
                                                               §§goto(addr637);
                                                            }
                                                            §§goto(addr635);
                                                         }
                                                      }
                                                   }
                                                }
                                                §§goto(addr718);
                                             }
                                          }
                                       }
                                       §§goto(addr751);
                                    }
                                 }
                              }
                           }
                           addr767:
                           return this.§%,§;
                        }
                     }
                  }
               }
               §§goto(addr772);
            }
         }
         §§goto(addr513);
      }
      
      public function §;k§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §4!H§.§@,§(param1,this.§9!>§.§8!p§);
         }
      }
      
      public function §,!H§(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§9!>§.material.§]!7§(param1));
         if(_loc3_)
         {
            return §§pop() * this.§-!9§;
         }
      }
      
      public function §-![§(param1:String) : Number
      {
         return this.§9!>§.material.§`!s§(param1);
      }
      
      public function §^!S§() : String
      {
         return this.§9!>§.material.mName;
      }
      
      public function §[%§() : Number
      {
         return this.§9!>§.§`!Q§();
      }
      
      public function §@E§() : int
      {
         return this.§9!>§.§0n§();
      }
      
      public function §^!"§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 30;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§+$§().IsAwake());
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
                              §§push(this.§<=§());
                              if(_loc2_)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop6:
                                 while(_loc2_ || this)
                                 {
                                    if(§§pop())
                                    {
                                       loop7:
                                       while(!_loc3_)
                                       {
                                          §§pop();
                                          loop8:
                                          while(true)
                                          {
                                             §§push(this.§%,§ == this.§0K§);
                                             loop13:
                                             while(true)
                                             {
                                                if(!(_loc2_ || _loc3_))
                                                {
                                                   continue loop8;
                                                }
                                                if(!_loc2_)
                                                {
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§push(Math.abs(this.§+$§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                   loop14:
                                                   while(true)
                                                   {
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop16:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§pop();
                                                                     while(true)
                                                                     {
                                                                        if(!_loc2_)
                                                                        {
                                                                           break loop17;
                                                                        }
                                                                        §§push(Math.abs(this.§+$§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                                        if(_loc2_ || this)
                                                                        {
                                                                           if(_loc3_ && _loc2_)
                                                                           {
                                                                              break;
                                                                              addr80:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(_loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              if(_loc3_)
                                                                              {
                                                                                 while(_loc2_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       continue loop14;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       break loop17;
                                                                                    }
                                                                                 }
                                                                                 continue loop6;
                                                                                 addr146:
                                                                              }
                                                                              if(§§pop())
                                                                              {
                                                                                 §§goto(addr50);
                                                                              }
                                                                           }
                                                                           continue loop16;
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           if(_loc2_ || _loc1_)
                                                                           {
                                                                              continue loop15;
                                                                           }
                                                                           §§push(Math.abs(this.§+$§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * _loc1_);
                                                                           addr116:
                                                                           continue loop17;
                                                                           if(!_loc2_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           addr39:
                                                                           if(!(_loc3_ && this))
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 continue loop7;
                                                                              }
                                                                              if(_loc3_)
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              §§goto(addr50);
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§goto(addr146);
                                                                                 §§goto(addr39);
                                                                              }
                                                                              addr145:
                                                                           }
                                                                        }
                                                                        continue loop15;
                                                                     }
                                                                     continue loop3;
                                                                     addr135:
                                                                  }
                                                                  §§goto(addr149);
                                                               }
                                                               continue loop13;
                                                            }
                                                            §§goto(addr80);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop4;
                                          }
                                       }
                                       continue loop1;
                                    }
                                    while(true)
                                    {
                                       §§goto(addr145);
                                    }
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                     addr50:
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr169);
      }
      
      public function §;!3§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§+$§().IsAwake());
            if(!(_loc1_ && _loc2_))
            {
               if(!§§pop())
               {
                  if(!(_loc1_ && this))
                  {
                     §§push(true);
                     if(_loc2_ || _loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr66:
                     §§push(this.isMoving());
                     if(_loc2_)
                     {
                        addr70:
                        return !§§pop();
                     }
                  }
                  return §§pop();
               }
               §§goto(addr66);
            }
            §§goto(addr70);
         }
         §§goto(addr66);
      }
      
      protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§`!_§();
         }
         var _loc1_:int = 5;
         if(!(_loc3_ && this))
         {
            §§push(Math.abs(this.§!j§(this.§4e§[0])) < b2Settings.b2_linearSleepTolerance * _loc1_);
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr149:
                        while(true)
                        {
                           §§push(Math.abs(this.§!j§(this.§4e§[1])) < b2Settings.b2_linearSleepTolerance * _loc1_);
                        }
                     }
                     addr148:
                  }
                  while(true)
                  {
                     loop5:
                     do
                     {
                        §§push(§§pop());
                        if(!(_loc2_ || _loc1_))
                        {
                           continue loop1;
                        }
                        if(§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              if(!_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    continue loop0;
                                 }
                                 §§pop();
                                 loop9:
                                 while(true)
                                 {
                                    §§push(Math.abs(this.§!j§(this.§4e§[2])) < b2Settings.b2_angularSleepTolerance * _loc1_);
                                    if(!_loc3_)
                                    {
                                       while(true)
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc3_)
                                             {
                                                addr73:
                                                §§push(false);
                                                while(_loc3_)
                                                {
                                                   continue loop6;
                                                }
                                                continue loop5;
                                                addr73:
                                             }
                                             else
                                             {
                                                if(!(_loc2_ || _loc2_))
                                                {
                                                   continue loop9;
                                                }
                                                if(!_loc2_)
                                                {
                                                   break loop6;
                                                }
                                             }
                                             §§goto(addr73);
                                          }
                                          §§push(true);
                                          if(_loc2_ || this)
                                          {
                                             break;
                                          }
                                          continue loop9;
                                       }
                                       return §§pop();
                                       addr58:
                                    }
                                    §§goto(addr73);
                                 }
                              }
                              else
                              {
                                 §§goto(addr148);
                              }
                           }
                           §§goto(addr149);
                        }
                        §§goto(addr58);
                     }
                     while(!(_loc2_ || this));
                     
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr132);
      }
      
      private function §!j§(param1:Vector.<Number>) : Number
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = Number(0);
         var _loc3_:int = 0;
         loop0:
         while(true)
         {
            if(_loc3_ >= param1.length)
            {
               if(_loc5_ || _loc2_)
               {
                  §§push(_loc2_);
                  if(_loc5_ || param1)
                  {
                     if(_loc5_)
                     {
                        addr68:
                        §§push(§§pop() / param1.length);
                        if(_loc5_ || this)
                        {
                           break;
                        }
                        addr86:
                        §§push(Number(§§pop() + param1[_loc3_]));
                     }
                     _loc2_ = §§pop();
                     loop1:
                     while(true)
                     {
                        _loc3_++;
                        addr80:
                        while(!_loc5_)
                        {
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr68);
               }
               §§goto(addr80);
            }
            else
            {
               §§push(_loc2_);
            }
            §§goto(addr86);
         }
         return §§pop();
      }
      
      private function §`!_§() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc1_))
         {
            this.§4e§[0].push(this.§+$§().GetLinearVelocity().x);
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               this.§4e§[1].push(this.§+$§().GetLinearVelocity().y);
               while(_loc2_)
               {
                  this.§4e§[2].push(this.§+$§().GetAngularVelocity());
                  if(_loc2_ || _loc2_)
                  {
                     if(true)
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
               }
               continue loop0;
            }
            var _loc1_:* = uint(0);
            while(true)
            {
               §§push(_loc1_);
               if(_loc2_ || _loc1_)
               {
                  if(§§pop() >= 3)
                  {
                     if(_loc3_)
                     {
                        continue;
                     }
                     if(!(_loc3_ && _loc3_))
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        addr137:
                        this.§4e§[_loc1_].shift();
                     }
                  }
                  else if(this.§4e§[_loc1_].length > this.§4S§)
                  {
                     §§goto(addr137);
                  }
                  §§push(_loc1_);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(uint(§§pop() + 1));
                  }
               }
               _loc1_ = §§pop();
            }
            return;
         }
      }
      
      public function §6!Z§(param1:Number = 3) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§-!9§ = param1;
            do
            {
               if(this.§-!9§ <= 1)
               {
                  §§push(this.§[!"§);
                  if(!_loc2_)
                  {
                     §§pop().§ !Q§ = null;
                     if(_loc2_ && _loc2_)
                     {
                        continue;
                     }
                     if(!_loc2_)
                     {
                        §§goto(addr20);
                     }
                     addr68:
                     §§push(this.§[!"§);
                  }
                  §§pop().§;F§();
                  continue;
               }
               §§goto(addr68);
            }
            while(_loc2_ && param1);
            
         }
         addr20:
      }
      
      public function §=U§(param1:Boolean) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         if(_loc4_ || param1)
         {
            §§push(this.§9!>§.§"5§());
            loop0:
            while(true)
            {
               if(§§pop() == §"!e§.§[v§)
               {
                  if(_loc4_)
                  {
                     §§push(this.§[!"§.mW);
                     loop1:
                     while(true)
                     {
                        §§push(this.§[!"§.mH);
                        if(!_loc3_)
                        {
                           §§push(§§pop() * §§pop());
                           while(true)
                           {
                              §§push(§-!7§.§8!r§);
                              addr224:
                              while(true)
                              {
                                 §§push(§-!7§.§8!r§);
                                 addr226:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                 }
                              }
                              addr65:
                              if(_loc3_ && this)
                              {
                                 continue;
                              }
                              §§push(this.§!+§);
                              if(_loc4_)
                              {
                                 if(_loc4_ || this)
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(this.§!+§);
                                       if(_loc4_ || _loc3_)
                                       {
                                          addr95:
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc3_ && this))
                                          {
                                             §§push(§§pop() / §§pop());
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                addr120:
                                                §§push(Number(§§pop()));
                                             }
                                             loop14:
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      if(!_loc4_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      _loc2_ = §§pop();
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         continue;
                                                      }
                                                      loop15:
                                                      while(true)
                                                      {
                                                         addr47:
                                                         addr186:
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            if(_loc4_ || this)
                                                            {
                                                               if(!_loc3_)
                                                               {
                                                                  addr58:
                                                                  if(!(_loc3_ && this))
                                                                  {
                                                                     §§goto(addr65);
                                                                  }
                                                                  break;
                                                               }
                                                               addr162:
                                                               _loc2_ = §§pop();
                                                               continue loop15;
                                                            }
                                                            §§goto(addr120);
                                                            continue loop15;
                                                         }
                                                         while(true)
                                                         {
                                                            _loc2_ = §§pop();
                                                            loop11:
                                                            while(!(_loc3_ && param1))
                                                            {
                                                               if(param1)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                                  if(!_loc4_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§push(_loc2_);
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc3_ && param1))
                                                                     {
                                                                        §§push(this.§+o§());
                                                                        while(true)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              break;
                                                                           }
                                                                           addr227:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                           }
                                                                        }
                                                                        addr161:
                                                                        §§goto(addr162);
                                                                        §§push(Number(§§pop()));
                                                                        addr158:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        addr229:
                                                                        while(true)
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           break loop11;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr47);
                                                               }
                                                               §§goto(addr162);
                                                            }
                                                            addr230:
                                                            while(true)
                                                            {
                                                               continue loop14;
                                                            }
                                                            §§goto(addr58);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr149);
                                                }
                                                §§goto(addr161);
                                             }
                                             addr37:
                                             if(_loc3_ && param1)
                                             {
                                                while(_loc4_)
                                                {
                                                   §§push(this.§]!B§.§"P§());
                                                   while(true)
                                                   {
                                                      §§push(§§pop() / §§pop());
                                                      if(_loc4_ || _loc2_)
                                                      {
                                                         if(_loc4_)
                                                         {
                                                            §§goto(addr186);
                                                            §§push(Number(§§pop()));
                                                         }
                                                         §§goto(addr229);
                                                      }
                                                      §§goto(addr186);
                                                   }
                                                   §§goto(addr37);
                                                }
                                                continue loop0;
                                                addr170:
                                             }
                                             §§goto(addr44);
                                          }
                                          §§goto(addr224);
                                       }
                                       §§goto(addr226);
                                    }
                                    §§goto(addr175);
                                 }
                                 §§goto(addr158);
                              }
                              §§goto(addr95);
                           }
                        }
                        §§goto(addr227);
                     }
                  }
                  §§goto(addr230);
               }
               else
               {
                  §§push(this.§+$§().GetMass());
               }
               §§goto(addr170);
            }
         }
         §§goto(addr230);
      }
      
      public function §+o§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Number(1);
         if(_loc3_)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push(_loc1_);
               if(_loc3_ || this)
               {
                  §§push(2);
                  if(!_loc2_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc2_)
                     {
                     }
                     §§goto(addr76);
                  }
                  §§push(§§pop() / §§pop());
               }
               addr76:
               §§push(§§pop() * Math.min(10,this.§[!"§.§[!f§ - 1));
               if(!(_loc2_ && _loc2_))
               {
                  §§push(10);
               }
               §§push(§§pop() - §§pop());
               if(!(_loc2_ && _loc1_))
               {
                  addr84:
                  §§push(Number(§§pop()));
                  if(!_loc2_)
                  {
                     _loc1_ = §§pop();
                     addr88:
                     return _loc1_;
                  }
               }
            }
            §§goto(addr84);
         }
         §§goto(addr88);
      }
      
      public function §&!Y§(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.§+$§().GetLinearVelocity().x);
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§+$§().GetLinearVelocity().y);
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         §§push(1);
         §§push(param1);
         if(!(_loc6_ && param1))
         {
            §§push(§§pop() / _loc4_);
         }
         §§push(§§pop() + §§pop());
         if(!_loc6_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!(_loc6_ && param1))
         {
            §§push(_loc2_);
            if(_loc7_ || param1)
            {
               §§push(_loc5_);
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  addr137:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                  }
                  addr99:
                  §§push(_loc5_);
                  if(!_loc7_)
                  {
                     continue;
                  }
                  §§push(§§pop() * §§pop());
                  if(_loc7_ || this)
                  {
                     if(_loc7_)
                     {
                        if(!_loc6_)
                        {
                           addr125:
                           _loc3_ = Number(§§pop());
                           do
                           {
                              this.§+$§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
                           }
                           while(_loc6_);
                           
                           if(!_loc7_)
                           {
                              while(true)
                              {
                                 §§push(_loc3_);
                                 if(!_loc6_)
                                 {
                                    §§goto(addr99);
                                 }
                                 §§goto(addr125);
                              }
                              §§goto(addr137);
                              addr139:
                           }
                           return;
                           addr94:
                        }
                        §§goto(addr137);
                     }
                     while(true)
                     {
                        _loc2_ = §§pop();
                        §§goto(addr139);
                     }
                     addr138:
                  }
                  §§goto(addr125);
               }
            }
            §§goto(addr138);
         }
         §§goto(addr94);
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§[?§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§,n§) : void
      {
      }
      
      public function addDamageParticles(param1:§,n§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §,!T§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2Vec2 = this.§+$§().GetPosition();
         §§push(_loc4_);
         §§push(_loc4_.x);
         if(!_loc5_)
         {
            §§push(param2.x * param1);
            if(_loc6_)
            {
               §§push(§§pop() * param3);
            }
            §§push(§§pop() + §§pop());
         }
         §§pop().x = §§pop();
         if(_loc6_)
         {
            §§push(_loc4_);
            §§push(_loc4_.y);
            if(_loc6_)
            {
               §§push(param2.y * param1);
               if(!(_loc5_ && param1))
               {
                  §§push(§§pop() * param3);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().y = §§pop();
         }
         do
         {
            this.§+$§().§=!F§(_loc4_);
         }
         while(!(_loc6_ || param2));
         
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc6_ || param1)
         {
            if(param2)
            {
               loop0:
               while(true)
               {
                  §§push(this.§[!i§());
                  if(_loc6_)
                  {
                     §§push(Number(§§pop()));
                     loop1:
                     while(true)
                     {
                        §§push(§§pop());
                        while(true)
                        {
                           _loc4_ = §§pop();
                           if(!_loc7_)
                           {
                              §§push(360);
                              if(_loc6_ || _loc3_)
                              {
                                 §§push(§§pop() + §§pop());
                                 while(true)
                                 {
                                    §§push(360);
                                    while(_loc6_ || param1)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc6_ || param1)
                                       {
                                          _loc4_ = §§pop();
                                          while(true)
                                          {
                                             §§push(Number(0));
                                             while(true)
                                             {
                                                _loc5_ = §§pop();
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   loop11:
                                                   while(true)
                                                   {
                                                      §§push(0);
                                                      if(!(_loc6_ || _loc3_))
                                                      {
                                                         break;
                                                      }
                                                      if(§§pop() != §§pop())
                                                      {
                                                         continue loop0;
                                                      }
                                                      addr122:
                                                      while(true)
                                                      {
                                                         §§push(_loc5_);
                                                         continue loop11;
                                                      }
                                                   }
                                                   addr282:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() % §§pop());
                                                      if(!_loc6_)
                                                      {
                                                         break;
                                                      }
                                                      §§goto(addr286);
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                while(!(_loc7_ && _loc3_))
                                                {
                                                   §§goto(addr222);
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr292);
                                       while(_loc6_ || param2)
                                       {
                                          continue loop1;
                                       }
                                    }
                                 }
                              }
                              §§goto(addr282);
                           }
                           break;
                        }
                        §§goto(addr302);
                     }
                  }
                  §§goto(addr286);
               }
            }
            §§goto(addr288);
         }
         §§goto(addr148);
      }
      
      public function §>p§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§6L§(this.§+$§().GetAngle()));
         if(_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && this))
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               §§push(param1);
               if(!(_loc3_ && _loc3_))
               {
                  §§push(360);
                  if(_loc4_)
                  {
                     addr118:
                     §§push(§§pop() * §§pop());
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(1000);
                     }
                     §§push(§§pop() - §§pop());
                     if(_loc4_ || _loc3_)
                     {
                        addr126:
                        §§push(Number(§§pop()));
                     }
                     loop0:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        loop1:
                        while(true)
                        {
                           §§push(§@S§(_loc2_));
                           if(!_loc4_)
                           {
                              _loc2_ = §§pop();
                              while(true)
                              {
                                 this.§+$§().§ !W§(_loc2_);
                                 if(_loc4_ || this)
                                 {
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       break;
                                    }
                                    continue loop1;
                                 }
                              }
                           }
                           else
                           {
                              addr82:
                              addr83:
                           }
                           continue loop0;
                           return;
                        }
                     }
                  }
                  §§push(§§pop() / §§pop());
               }
               §§goto(addr118);
            }
            §§goto(addr126);
         }
         §§goto(addr83);
      }
      
      public function §5;§(param1:Number, param2:Point) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(_loc14_)
         {
            this.rotate(param1);
         }
         var _loc3_:b2Vec2 = this.§+$§().GetPosition().Copy();
         §§push(_loc3_.x);
         if(_loc14_)
         {
            §§push(§§pop() - param2.x);
            if(_loc14_)
            {
               addr36:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(_loc3_.y);
            if(!(_loc15_ && param2))
            {
               §§push(§§pop() - param2.y);
               if(_loc14_ || param1)
               {
                  addr57:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(_loc14_ || _loc3_)
               {
                  §§push(_loc4_);
                  if(!(_loc15_ && this))
                  {
                     §§push(0);
                     if(_loc14_ || param1)
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc14_ || this)
                        {
                           if(§§pop())
                           {
                              if(!_loc15_)
                              {
                                 §§goto(addr94);
                              }
                           }
                           §§goto(addr107);
                        }
                        addr94:
                        §§pop();
                        if(_loc14_ || param2)
                        {
                           addr102:
                           §§push(_loc5_);
                           if(_loc14_)
                           {
                              addr107:
                              addr106:
                              addr105:
                              if(§§pop() == 0)
                              {
                                 if(_loc14_ || param1)
                                 {
                                    §§goto(addr115);
                                 }
                              }
                              §§push(Number(Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)));
                           }
                           var _loc6_:* = §§pop();
                           §§push(_loc4_);
                           if(!_loc15_)
                           {
                              §§push(§§pop() / _loc5_);
                              if(!_loc15_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc7_:* = §§pop();
                           §§push(Math.atan(_loc7_) * 180);
                           if(!(_loc15_ && _loc3_))
                           {
                              §§push(§§pop() / Math.PI);
                              if(!_loc15_)
                              {
                                 addr163:
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              if(!_loc15_)
                              {
                                 §§push(_loc5_);
                                 if(_loc14_)
                                 {
                                    §§push(0);
                                    if(!(_loc15_ && this))
                                    {
                                       if(§§pop() < §§pop())
                                       {
                                          if(!_loc15_)
                                          {
                                             addr181:
                                             §§push(_loc8_);
                                             if(_loc14_ || _loc3_)
                                             {
                                                addr190:
                                                §§push(§§pop() + 180);
                                                if(!(_loc15_ && param2))
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!(_loc15_ && param1))
                                                   {
                                                      _loc8_ = §§pop();
                                                      addr207:
                                                      §§push(_loc8_);
                                                      if(!_loc15_)
                                                      {
                                                         §§push(param1);
                                                         if(_loc14_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc15_ && param2))
                                                            {
                                                               addr222:
                                                               §§push(Number(§§pop()));
                                                               §§push(Number(§§pop()));
                                                            }
                                                            §§goto(addr222);
                                                         }
                                                         var _loc9_:* = §§pop();
                                                         if(_loc14_)
                                                         {
                                                            §§push(§§pop() * Math.PI);
                                                            if(!_loc15_)
                                                            {
                                                               §§push(§§pop() / 180);
                                                               if(_loc14_)
                                                               {
                                                                  addr235:
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc10_:* = §§pop();
                                                               §§push(Math.sin(_loc10_) * _loc6_);
                                                               if(!_loc15_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc11_:* = §§pop();
                                                               §§push(Math.cos(_loc10_) * _loc6_);
                                                               if(_loc14_ || param1)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc12_:* = §§pop();
                                                               var _loc13_:b2Vec2 = new b2Vec2(param2.x + _loc11_,param2.y + _loc12_);
                                                               if(!_loc15_)
                                                               {
                                                                  this.§+$§().§=!F§(_loc13_);
                                                               }
                                                               return;
                                                            }
                                                         }
                                                         §§goto(addr235);
                                                      }
                                                      §§goto(addr222);
                                                   }
                                                }
                                             }
                                             §§goto(addr222);
                                          }
                                       }
                                       §§goto(addr207);
                                    }
                                    §§goto(addr190);
                                 }
                                 §§goto(addr222);
                              }
                              §§goto(addr181);
                           }
                           §§goto(addr163);
                        }
                        addr115:
                        return;
                     }
                     §§goto(addr106);
                  }
                  §§goto(addr105);
               }
               §§goto(addr102);
            }
            §§goto(addr57);
         }
         §§goto(addr36);
      }
   }
}
