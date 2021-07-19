package §+!o§
{
   import § "?§.§&!>§;
   import § "?§.§-5§;
   import §"!9§.b2PolygonShape;
   import §+S§.b2Body;
   import §+S§.b2BodyDef;
   import §+S§.b2FilterData;
   import §+S§.b2Fixture;
   import §+S§.b2World;
   import §,a§.§+!Z§;
   import §,a§.§+"&§;
   import §,a§.§<!m§;
   import §,a§.§]!>§;
   import §,a§.§^7§;
   import §-!n§.§5!U§;
   import §2"=§.b2Vec2;
   import §5!V§.§!w§;
   import §5!V§.§]"%§;
   import §=!M§.§9!P§;
   import §=o§.b2Settings;
   import §default§.Sprite;
   import flash.geom.Point;
   
   public class §]"5§
   {
      
      public static const § E§:uint;
      
      public static const §8T§:uint;
      
      public static const §9!x§:uint;
      
      public static const §&!!§:uint;
      
      public static const §94§:Boolean = true;
      
      public static const §="?§:Number = 5;
      
      public static const §5"9§:Number = 10;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(§§findproperty(§ E§));
            §§push(1);
            if(!(_loc1_ && _loc1_))
            {
               §§push(§§pop() << §§pop());
            }
            §§pop().§ E§ = §§pop();
            loop0:
            while(true)
            {
               §§push(§§findproperty(§8T§));
               §§push(1);
               if(!_loc1_)
               {
                  §§push(§§pop() << 2);
               }
               §§pop().§8T§ = §§pop();
               while(true)
               {
                  §§push(§§findproperty(§9!x§));
                  §§push(1);
                  if(_loc2_ || _loc1_)
                  {
                     §§push(§§pop() << 3);
                  }
                  §§pop().§9!x§ = §§pop();
                  addr101:
                  while(_loc2_ || _loc1_)
                  {
                     §§push(§§findproperty(§&!!§));
                     §§push(1);
                     if(!(_loc1_ && _loc2_))
                     {
                        §§push(§§pop() << 4);
                     }
                     §§pop().§&!!§ = §§pop();
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr35);
      }
      
      private var §!!b§:String;
      
      private var §]O§:int;
      
      private var §0!,§:int;
      
      public var §!F§:String;
      
      public var §,!E§:int;
      
      protected var §6"'§:§]!>§;
      
      private var §+!e§:§?"-§;
      
      private var §?"$§:b2World;
      
      protected var §'K§:String = "";
      
      protected var §0V§:int = 1;
      
      private var §?"8§:b2Fixture;
      
      private var §`K§:b2Body;
      
      private var §]!T§:b2Vec2;
      
      public var §@!P§:Number;
      
      public var §'">§:Number;
      
      private var §'!,§:Number;
      
      private var §6B§:Boolean = false;
      
      private var §]f§:Number;
      
      private var §'z§:Number;
      
      private var §"!r§:Number;
      
      private var §4!k§:Number;
      
      private var §-=§:Number;
      
      private var §9y§:Number;
      
      public var § !R§:Number = 1;
      
      private var §break§:Boolean = false;
      
      public var §<"1§:Number = 0;
      
      public var §7"9§:Number = 0;
      
      protected var §46§:Boolean = false;
      
      public var §[!g§:§<Y§;
      
      private var §!&§:Sprite;
      
      private var mX:Number = 0;
      
      private var mY:Number = 0;
      
      private var §]$§:Number = 0;
      
      private var §?a§:Number = 1.0;
      
      private var §#">§:Boolean = false;
      
      protected var §`"'§:§<P§;
      
      private var §7T§:Boolean = true;
      
      public function §]"5§(param1:§?"-§, param2:Sprite, param3:b2World, param4:§!w§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc16_:Boolean = true;
         var _loc17_:Boolean = false;
         var _loc14_:b2PolygonShape = null;
         if(_loc16_)
         {
            super();
            loop0:
            while(true)
            {
               this.§!F§ = param6;
               while(true)
               {
                  this.§6"'§ = §<!m§.§"!F§(param6);
                  addr205:
                  while(true)
                  {
                     this.§+!e§ = param1;
                  }
                  loop7:
                  while(!(_loc17_ && param3))
                  {
                     this.§,!E§ = this.§6"'§.§,!E§;
                     while(true)
                     {
                        if(_loc16_ || param2)
                        {
                           addr155:
                           if(!(_loc16_ || param1))
                           {
                              break;
                              addr132:
                           }
                           this.§0!,§ = this.§6"'§.§9!§();
                           while(_loc16_)
                           {
                              continue loop0;
                           }
                           continue;
                        }
                        continue loop7;
                     }
                     loop4:
                     for(; _loc16_; §§goto(addr155))
                     {
                        this.§?a§ = param10;
                        while(true)
                        {
                           this.§#">§ = param11;
                           addr179:
                           while(true)
                           {
                              if(!_loc17_)
                              {
                                 this.§]O§ = param5;
                                 continue loop7;
                              }
                              addr198:
                              while(true)
                              {
                                 this.§!&§ = param2;
                                 continue loop4;
                              }
                           }
                        }
                     }
                     §§goto(addr205);
                  }
               }
            }
         }
         §§goto(addr198);
      }
      
      public static function §1!%§(param1:int, param2:§+"&§, param3:String = "") : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            if(param2 == null)
            {
               if(!(_loc6_ && param2))
               {
                  return;
               }
            }
         }
         var _loc4_:String;
         §§push(_loc4_ = param2.§^!l§[param1]);
         if(!_loc6_)
         {
            if(§§pop().length > 0)
            {
               if(!(_loc6_ && param2))
               {
                  §§push(param3);
                  if(_loc5_)
                  {
                     addr66:
                     if(§§pop().length <= 0)
                     {
                     }
                     §§goto(addr94);
                  }
                  param3 = §§pop();
                  if(_loc5_ || §]"5§)
                  {
                  }
               }
               §§goto(addr94);
            }
            addr94:
            if(_loc5_)
            {
               §§push(param2.§;!r§);
               if(!_loc6_)
               {
                  §§push(§§pop());
               }
            }
            §5!U§.§7!e§(_loc4_,param3);
            return;
         }
         §§goto(addr66);
      }
      
      public static function §1",§(param1:Number) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(360);
         §§push(param1);
         if(!_loc2_)
         {
            §§push(180);
            if(!(_loc2_ && _loc3_))
            {
               §§push(§§pop() * §§pop());
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop() / Math.PI);
                  if(!_loc2_)
                  {
                     addr52:
                     §§push(§§pop() % 360);
                  }
                  §§push(§§pop() - §§pop());
                  if(!(_loc2_ && §]"5§))
                  {
                     return §§pop() % 360;
                  }
               }
            }
         }
         §§goto(addr52);
      }
      
      public static function §#!V§(param1:Number) : Number
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
         if(!(_loc3_ && §]"5§))
         {
            §§push(§§pop() / (180 / Math.PI));
            if(_loc4_)
            {
               addr58:
               return Number(§§pop());
            }
         }
         §§goto(addr58);
      }
      
      public function get sprite() : Sprite
      {
         return this.§!&§;
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
         return this.§?a§;
      }
      
      public function get front() : Boolean
      {
         return this.§#">§;
      }
      
      public function get §?k§() : Number
      {
         return this.§`K§.GetPosition().x;
      }
      
      public function get §2!V§() : Number
      {
         return this.§`K§.GetPosition().y;
      }
      
      public function get §+!y§() : §]!>§
      {
         return this.§6"'§;
      }
      
      public function get §4" §() : Boolean
      {
         return this.§'!,§ >= 0;
      }
      
      public function get container() : §?"-§
      {
         return this.§+!e§;
      }
      
      public function get §>a§() : Boolean
      {
         return this.§7T§;
      }
      
      public function set §>a§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§7T§ = param1;
         }
      }
      
      public function set §1!h§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§6B§ = param1;
         }
      }
      
      public function set §?8§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§`"'§.§?8§ = param1;
         }
      }
      
      public function get §?8§() : uint
      {
         return this.§`"'§.§?8§;
      }
      
      public function get §-"<§() : Boolean
      {
         return this.§break§;
      }
      
      public function set §-"<§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§break§ = param1;
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
         return this.§!!b§;
      }
      
      public function set uniqueID(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§!!b§ = param1;
         }
      }
      
      public function §9!g§(param1:b2FilterData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §§push(this.§?"8§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  if(!(_loc2_ && _loc3_))
                  {
                     addr63:
                     this.§?"8§.§"!G§(param1);
                  }
               }
               return;
            }
         }
         §§goto(addr63);
      }
      
      protected function §6H§(param1:String) : int
      {
         return §&!>§.§6H§(param1);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2BodyDef = new b2BodyDef();
         if(!(_loc5_ && param2))
         {
            §§push(_loc3_.position);
            loop0:
            while(true)
            {
               §§push(param1);
               addr147:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
               }
            }
         }
         while(true)
         {
            _loc3_.§54§ = true;
            §§goto(addr87);
         }
         §§goto(addr60);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§?"$§);
            if(!(_loc2_ && _loc1_))
            {
               if(§§pop())
               {
                  if(!_loc2_)
                  {
                     addr128:
                     this.§?"$§.§0!k§(this.getBody());
                  }
                  loop0:
                  while(true)
                  {
                     this.§?"$§ = null;
                     addr103:
                     loop1:
                     while(true)
                     {
                        addr86:
                        addr74:
                        loop8:
                        while(true)
                        {
                           if(!(_loc1_ || _loc1_))
                           {
                              continue loop1;
                           }
                           this.§!&§ = null;
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 break loop8;
                              }
                              addr83:
                              while(true)
                              {
                                 §§push(this.§!&§);
                                 addr85:
                                 while(true)
                                 {
                                    §§pop().dispose();
                                    continue loop8;
                                 }
                              }
                           }
                        }
                        if(_loc1_)
                        {
                           while(true)
                           {
                              this.§?"8§ = null;
                              while(_loc1_ || this)
                              {
                                 if(!(_loc2_ && _loc1_))
                                 {
                                    this.§]!T§ = null;
                                    do
                                    {
                                       this.§6"'§ = null;
                                    }
                                    while(!_loc1_);
                                    
                                    if(!_loc2_)
                                    {
                                       if(!_loc2_)
                                       {
                                          return;
                                          addr33:
                                       }
                                       continue loop0;
                                    }
                                    continue;
                                 }
                                 §§goto(addr86);
                              }
                              §§goto(addr72);
                              §§goto(addr74);
                           }
                           addr39:
                        }
                        addr98:
                        while(true)
                        {
                           §§push(this.§!&§);
                           if(!_loc2_)
                           {
                              if(§§pop())
                              {
                                 §§goto(addr83);
                              }
                              §§goto(addr39);
                           }
                           §§goto(addr85);
                        }
                     }
                  }
               }
               while(true)
               {
                  this.§[!g§.dispose();
                  §§goto(addr98);
                  §§goto(addr103);
               }
            }
            §§goto(addr128);
         }
         §§goto(addr33);
      }
      
      public function §-^§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(this.getBody());
            §§push(360);
            §§push(param1);
            if(_loc2_ || this)
            {
               §§push(§§pop() % 360);
            }
            §§push(§§pop() - §§pop());
            if(_loc2_ || _loc3_)
            {
               §§push(§§pop() / (180 / Math.PI));
            }
            §§pop().§-!7§(§§pop());
         }
      }
      
      public function §+!1§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(360);
         §§push(this.getBody().GetAngle());
         if(!(_loc1_ && _loc2_))
         {
            §§push(180);
            if(!_loc1_)
            {
               §§push(§§pop() * §§pop());
               if(_loc2_)
               {
                  §§goto(addr44);
               }
            }
            §§goto(addr49);
         }
         addr44:
         §§push(§§pop() / Math.PI);
         if(_loc2_)
         {
            addr49:
            §§push(§§pop() % 360);
         }
         §§push(§§pop() - §§pop());
         if(_loc2_ || _loc2_)
         {
            return §§pop() % 360;
         }
      }
      
      public function § !K§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            this.getBody().SetLinearVelocity(param1);
            loop0:
            while(true)
            {
               §§push(param2);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc5_)
                     {
                        continue loop0;
                     }
                     addr75:
                     while(true)
                     {
                     }
                     addr75:
                  }
                  loop3:
                  while(true)
                  {
                     §§push(param3);
                     if(!_loc4_)
                     {
                        if(§§pop())
                        {
                           if(!(_loc4_ && param2))
                           {
                              while(true)
                              {
                                 this.§;I§();
                              }
                              addr46:
                           }
                           while(true)
                           {
                              if(_loc5_)
                              {
                                 break loop3;
                              }
                              §§goto(addr75);
                           }
                        }
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr46);
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§?"8§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            §§push(this.getBody());
            loop0:
            while(true)
            {
               §§push(§§pop().GetPosition());
               while(true)
               {
                  §§push(§§pop().x);
                  while(true)
                  {
                     §§push(param3);
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
                                 while(true)
                                 {
                                    §§pop();
                                    loop7:
                                    while(true)
                                    {
                                       §§push(this.getBody());
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§§pop().GetPosition());
                                          addr159:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             addr160:
                                             while(true)
                                             {
                                                §§push(param4);
                                                addr161:
                                                while(true)
                                                {
                                                   §§push(§§pop() <= §§pop());
                                                   if(_loc5_ || param2)
                                                   {
                                                      if(_loc6_ && this)
                                                      {
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop22:
                                                         while(true)
                                                         {
                                                            if(!(_loc5_ || param3))
                                                            {
                                                               continue loop5;
                                                            }
                                                            if(!§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop22;
                                                               }
                                                               if(!§§pop())
                                                               {
                                                                  addr117:
                                                                  return §§pop();
                                                               }
                                                               while(true)
                                                               {
                                                                  if(_loc5_)
                                                                  {
                                                                     §§pop();
                                                                     if(_loc6_ && param1)
                                                                     {
                                                                        break;
                                                                     }
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(this.getBody());
                                                                        if(!(_loc6_ && param2))
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        continue loop0;
                                                                     }
                                                                  }
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(this.getBody());
                                                                  continue loop0;
                                                               }
                                                               addr137:
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      §§goto(addr187);
                                                   }
                                                }
                                                continue loop4;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr176);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr154);
      }
      
      public function §@!a§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            this.§]!T§ = param1;
         }
      }
      
      public function §^!6§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§]!T§)
            {
               do
               {
                  this.§ !K§(this.§]!T§,false);
                  do
                  {
                     this.§]!T§ = null;
                  }
                  while(_loc2_);
                  
               }
               while(_loc2_);
               
               addr41:
            }
            return;
         }
         §§goto(addr41);
      }
      
      public function §8!X§(param1:b2Vec2 = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!param1)
            {
               if(!(_loc2_ && _loc2_))
               {
                  §§push(this.getBody());
                  if(!_loc2_)
                  {
                     param1 = §§pop().GetLinearVelocity();
                     addr35:
                     §§push(param1.x);
                     if(!_loc2_)
                     {
                        §§push(0);
                        if(!(_loc2_ && _loc2_))
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc3_ || this)
                           {
                              if(§§pop())
                              {
                                 if(_loc3_ || this)
                                 {
                                    addr74:
                                    §§pop();
                                    §§goto(addr131);
                                 }
                              }
                              if(§§pop())
                              {
                                 if(_loc3_ || param1)
                                 {
                                 }
                              }
                              else
                              {
                                 §§push(this.getBody());
                                 if(!_loc2_)
                                 {
                                    addr94:
                                    §§pop().§`!`§(Math.atan2(param1.x,param1.y));
                                    if(_loc3_ || param1)
                                    {
                                    }
                                 }
                              }
                              §§goto(addr131);
                              this.getBody().§`!`§(0);
                              return;
                           }
                           §§goto(addr74);
                        }
                     }
                     §§goto(addr112);
                  }
                  §§goto(addr94);
               }
               §§goto(addr74);
            }
            §§goto(addr35);
         }
         §§goto(addr74);
      }
      
      public function §;I§(param1:b2Vec2 = null) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            if(!param1)
            {
               addr26:
               param1 = this.getBody().GetLinearVelocity();
            }
            §§push(Math.atan2(-param1.y,param1.x) * (180 / Math.PI));
            if(!(_loc3_ && _loc2_))
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(!(_loc3_ && param1))
            {
               this.§-^§(_loc2_);
            }
            return;
         }
         §§goto(addr26);
      }
      
      public function §;g§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.getBody().§`!`§(param1);
         }
      }
      
      public function getBody() : b2Body
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§?"8§);
            if(!_loc2_)
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
         return this.§?"8§.GetBody();
      }
      
      public function §?!g§(param1:Number = -9999, param2:Number = -9999) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(param1 != -9999)
            {
               if(!(_loc4_ && param2))
               {
                  this.mX = param1;
               }
               while(true)
               {
                  this.mY = param2;
                  addr90:
                  while(_loc3_)
                  {
                  }
               }
            }
            while(true)
            {
               §§push(this.getBody());
               loop3:
               while(true)
               {
                  §§push(§§pop().GetPosition());
                  addr77:
                  while(true)
                  {
                     §§push(this.mX);
                     addr79:
                     while(true)
                     {
                        §§push(§!w§.§4!-§);
                        addr81:
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                           addr82:
                           while(true)
                           {
                              §§pop().x = §§pop();
                              addr83:
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    continue loop3;
                                 }
                                 §§goto(addr90);
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      public function §?!%§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc3_:* = false;
         if(_loc6_ || this)
         {
            §§push(this.§46§);
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§push(true);
                     addr462:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        addr463:
                        while(true)
                        {
                           this.§46§ = false;
                           addr457:
                           while(true)
                           {
                           }
                        }
                     }
                  }
                  addr461:
               }
               while(true)
               {
                  §§push(this.updateSpecialAnimation(param2));
                  loop6:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§push(true);
                           addr434:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr435:
                              while(true)
                              {
                                 if(_loc5_ && param1)
                                 {
                                    §§goto(addr461);
                                 }
                              }
                              §§goto(addr462);
                           }
                        }
                        addr433:
                     }
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
                                 addr426:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    addr427:
                                    while(true)
                                    {
                                    }
                                 }
                              }
                              addr425:
                           }
                           while(true)
                           {
                              §§push(this.updateScreamingFrameAnimations(param2));
                              loop16:
                              while(true)
                              {
                                 if(§§pop())
                                 {
                                    while(true)
                                    {
                                       if(!_loc5_)
                                       {
                                          §§push(true);
                                          while(true)
                                          {
                                             if(_loc6_ || param1)
                                             {
                                                _loc3_ = §§pop();
                                                while(true)
                                                {
                                                }
                                                addr419:
                                             }
                                             else
                                             {
                                                §§goto(addr462);
                                             }
                                             addr285:
                                             if(_loc6_ || _loc3_)
                                             {
                                                if(_loc6_)
                                                {
                                                   continue loop11;
                                                }
                                                continue loop16;
                                             }
                                          }
                                       }
                                       else
                                       {
                                          §§goto(addr425);
                                       }
                                    }
                                    §§goto(addr426);
                                    addr408:
                                 }
                                 while(true)
                                 {
                                    §§push(this.updateBlinkingFrameAnimations(param2));
                                    loop21:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(true);
                                             addr401:
                                             while(true)
                                             {
                                                _loc3_ = §§pop();
                                                addr402:
                                                while(true)
                                                {
                                                }
                                             }
                                          }
                                          addr400:
                                       }
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                          while(true)
                                          {
                                             if(!_loc5_)
                                             {
                                                continue loop6;
                                             }
                                             §§goto(addr426);
                                             loop33:
                                             while(_loc6_ || _loc3_)
                                             {
                                                §§pop();
                                                loop34:
                                                while(true)
                                                {
                                                   §§push(this.§[!g§);
                                                   while(!(_loc5_ && this))
                                                   {
                                                      §§push(Boolean(§§pop().§6Y§));
                                                      loop36:
                                                      while(true)
                                                      {
                                                         if(!_loc6_)
                                                         {
                                                            continue loop33;
                                                         }
                                                         if(!_loc6_)
                                                         {
                                                            loop32:
                                                            while(_loc6_)
                                                            {
                                                               if(!(_loc5_ && this))
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     continue loop33;
                                                                  }
                                                                  addr301:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        loop38:
                                                                        while(true)
                                                                        {
                                                                           §§push(4);
                                                                           §§push(this.§[!g§.§6Y§.blurX - 4);
                                                                           if(!(_loc5_ && param1))
                                                                           {
                                                                              addr332:
                                                                              §§push(param2);
                                                                              if(!_loc5_)
                                                                              {
                                                                                 §§push(§§pop() / 20);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!(_loc5_ && param1))
                                                                              {
                                                                                 addr330:
                                                                                 §§push(§§pop() % 28);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc6_ || param2)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              if(_loc5_ && _loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              _loc4_ = §§pop();
                                                                              while(true)
                                                                              {
                                                                                 §§push(this.§[!g§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().§6Y§.blurX = _loc4_;
                                                                                    loop41:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§[!g§);
                                                                                       loop42:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().§6Y§.blurY = _loc4_;
                                                                                          addr247:
                                                                                          while(!(_loc5_ && param2))
                                                                                          {
                                                                                             continue loop42;
                                                                                          }
                                                                                          continue loop41;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr330);
                                                                           addr126:
                                                                           if(_loc5_ && _loc3_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!(_loc5_ && param1))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§!&§);
                                                                                    loop49:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().x = Math.round(this.mX);
                                                                                       addr102:
                                                                                       addr236:
                                                                                       while(_loc6_ || param1)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             §§push(this.§!&§);
                                                                                             continue loop49;
                                                                                          }
                                                                                          §§goto(addr349);
                                                                                       }
                                                                                       addr390:
                                                                                       while(!_loc5_)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             continue loop36;
                                                                                          }
                                                                                          §§goto(addr419);
                                                                                          §§goto(addr102);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc5_)
                                                                                          {
                                                                                             if(!_loc6_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§ !R§);
                                                                                                break loop38;
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr408);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr427);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr140:
                                                                           }
                                                                           §§goto(addr400);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           continue loop32;
                                                                           §§goto(addr332);
                                                                        }
                                                                     }
                                                                     §§goto(addr210);
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr434);
                                                               }
                                                            }
                                                            continue loop21;
                                                         }
                                                         if(!(_loc5_ && param1))
                                                         {
                                                            §§goto(addr285);
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr401);
                                                         }
                                                      }
                                                      continue loop16;
                                                      if(!_loc6_)
                                                      {
                                                         continue;
                                                      }
                                                      §§pop().§?!0§(param2);
                                                      §§goto(addr236);
                                                   }
                                                   while(true)
                                                   {
                                                      §§pop().§>y§();
                                                      §§goto(addr390);
                                                   }
                                                   while(true)
                                                   {
                                                      if(!(_loc6_ || param1))
                                                      {
                                                         continue loop34;
                                                      }
                                                      if(_loc6_ || param2)
                                                      {
                                                         if(_loc6_ || param2)
                                                         {
                                                            this.mY = this.§'z§;
                                                            §§goto(addr117);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr402);
                                                      §§goto(addr82);
                                                   }
                                                   §§goto(addr435);
                                                }
                                             }
                                          }
                                          continue loop6;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(_loc5_ && this)
               {
                  continue;
               }
               if(§§pop())
               {
                  §§goto(addr202);
               }
               this.§]$§ = this.§"!r§;
               §§goto(addr175);
            }
         }
         §§goto(addr140);
      }
      
      public function §=O§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(this.getBody().GetPosition().x);
         if(!_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(this.getBody().GetPosition().y);
         if(_loc4_ || _loc1_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_ || _loc2_)
         {
            this.§9y§ = this.§"!r§;
            loop0:
            while(true)
            {
               this.§4!k§ = this.§]f§;
               addr174:
               while(true)
               {
                  this.§-=§ = this.§'z§;
                  addr158:
                  while(true)
                  {
                     §§push(this);
                     §§push(this.getBody().GetAngle());
                     if(!_loc3_)
                     {
                        §§push(180);
                        if(!_loc3_)
                        {
                           §§push(§§pop() * (§§pop() / Math.PI));
                           if(!(_loc3_ && _loc1_))
                           {
                              addr143:
                              §§push(§§pop() % 360);
                           }
                           §§pop().§"!r§ = §§pop();
                           continue loop0;
                        }
                     }
                     §§goto(addr143);
                  }
               }
            }
         }
         loop4:
         while(true)
         {
            §§push(this);
            §§push(_loc2_);
            if(_loc4_)
            {
               §§push(§§pop() / §!w§.§4!-§);
            }
            §§pop().§'z§ = §§pop();
            while(true)
            {
               §§push(this.§`"'§);
               loop6:
               while(true)
               {
                  §§pop().§>Q§();
                  addr98:
                  while(_loc4_)
                  {
                     continue loop6;
                  }
                  §§goto(addr158);
               }
               if(!(_loc4_ || this))
               {
                  continue;
               }
               if(_loc3_)
               {
                  continue loop4;
               }
               §§goto(addr74);
            }
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
      
      public function §,!t§(param1:Number, param2:Number = -1) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
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
                     if(_loc3_)
                     {
                        §§push(§9!P§);
                        §§push("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = " + param1);
                        if(!_loc4_)
                        {
                           §§push(§§pop() + " overriding to 0");
                        }
                        §§pop().log(§§pop());
                     }
                     while(true)
                     {
                     }
                     addr972:
                  }
                  while(true)
                  {
                     §§push(param2);
                     loop4:
                     while(true)
                     {
                        §§push(0);
                        loop5:
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              while(true)
                              {
                                 §§push(this.§+!e§.§9q§.§[g§.§?y§);
                                 addr943:
                                 while(true)
                                 {
                                    §§push(1000);
                                    addr944:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       addr945:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          addr946:
                                          while(true)
                                          {
                                             param2 = §§pop();
                                             addr947:
                                             while(true)
                                             {
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              addr938:
                           }
                           while(true)
                           {
                              §§push(param1);
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§push(-1);
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    loop50:
                                    for(; _loc3_ || param1; while(_loc3_ || param2)
                                    {
                                       §§goto(addr577);
                                       §§push(§§pop() <= §§pop());
                                       §§goto(addr289);
                                    })
                                    {
                                       if(!_loc3_)
                                       {
                                          continue loop5;
                                       }
                                       §§push(§§pop() == §§pop());
                                       loop51:
                                       for(; !(_loc4_ && this); while(!(_loc4_ && param2))
                                       {
                                          §§goto(addr418);
                                       })
                                       {
                                          if(!_loc4_)
                                          {
                                             loop52:
                                             while(!§§pop())
                                             {
                                                §§push(this.§9y§);
                                                loop53:
                                                while(true)
                                                {
                                                   §§push(this.§"!r§);
                                                   loop54:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() > §§pop());
                                                      loop55:
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop56:
                                                         while(true)
                                                         {
                                                            if(!§§pop())
                                                            {
                                                               while(true)
                                                               {
                                                                  loop64:
                                                                  for(; !§§pop(); if(_loc4_ && this)
                                                                  {
                                                                     continue;
                                                                  },§§pop(),§§goto(addr228))
                                                                  {
                                                                     §§push(this.§9y§);
                                                                     loop65:
                                                                     while(!_loc4_)
                                                                     {
                                                                        §§push(this.§"!r§);
                                                                        loop66:
                                                                        while(_loc3_ || _loc3_)
                                                                        {
                                                                           if(!(_loc4_ && param2))
                                                                           {
                                                                              §§push(§§pop() > §§pop());
                                                                              loop67:
                                                                              for(; !_loc4_; loop78:
                                                                              while(true)
                                                                              {
                                                                                 if(!(_loc3_ || param1))
                                                                                 {
                                                                                    continue loop67;
                                                                                 }
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    §§goto(addr383);
                                                                                    §§push(§§pop());
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       break loop78;
                                                                                    }
                                                                                    addr645:
                                                                                 }
                                                                              },while(true)
                                                                              {
                                                                                 §§goto(addr537);
                                                                              })
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 loop68:
                                                                                 for(; !(_loc4_ && this); if(_loc4_ && _loc3_)
                                                                                 {
                                                                                    continue;
                                                                                 },if(§§pop())
                                                                                 {
                                                                                    §§goto(addr206);
                                                                                 },§§goto(addr98))
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       loop69:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc3_ || _loc3_)
                                                                                          {
                                                                                             §§pop();
                                                                                             loop70:
                                                                                             while(_loc3_ || param1)
                                                                                             {
                                                                                                if(!_loc4_)
                                                                                                {
                                                                                                   §§push(this.§9y§);
                                                                                                   if(_loc3_)
                                                                                                   {
                                                                                                      addr399:
                                                                                                      if(_loc3_ || _loc3_)
                                                                                                      {
                                                                                                         §§push(this.§"!r§);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                         }
                                                                                                         addr408:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         loop49:
                                                                                                         for(; !_loc4_; §§goto(addr399))
                                                                                                         {
                                                                                                            addr651:
                                                                                                            if(_loc3_ || _loc3_)
                                                                                                            {
                                                                                                               if(!(_loc4_ && param1))
                                                                                                               {
                                                                                                                  continue loop50;
                                                                                                               }
                                                                                                               addr917:
                                                                                                               while(!(_loc4_ && param1))
                                                                                                               {
                                                                                                                  continue loop0;
                                                                                                               }
                                                                                                               §§goto(addr945);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  param1 = §§pop();
                                                                                                                  loop16:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this.§]f§);
                                                                                                                     addr899:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§4!k§);
                                                                                                                        addr901:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                           addr902:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              break loop68;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr537:
                                                                                                                        loop59:
                                                                                                                        while(_loc3_ || param1)
                                                                                                                        {
                                                                                                                           §§push(this.§"!r§);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc3_ || this))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                                 addr554:
                                                                                                                              }
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc3_ || param2)
                                                                                                                                 {
                                                                                                                                    continue loop4;
                                                                                                                                 }
                                                                                                                                 §§goto(addr943);
                                                                                                                              }
                                                                                                                              continue loop4;
                                                                                                                              loop83:
                                                                                                                              for(; _loc3_ || param2; if(_loc3_ || param2)
                                                                                                                              {
                                                                                                                                 addr51:
                                                                                                                                 if(!(_loc4_ && this))
                                                                                                                                 {
                                                                                                                                    if(!_loc4_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr61);
                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                    }
                                                                                                                                    §§goto(addr699);
                                                                                                                                 }
                                                                                                                                 while(!_loc4_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() < §§pop());
                                                                                                                                    continue loop67;
                                                                                                                                    §§goto(addr51);
                                                                                                                                 }
                                                                                                                                 continue loop66;
                                                                                                                                 addr365:
                                                                                                                              })
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 loop84:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc3_ || _loc3_))
                                                                                                                                    {
                                                                                                                                       while(!(_loc4_ && this))
                                                                                                                                       {
                                                                                                                                          §§goto(addr365);
                                                                                                                                          §§push(this.§"!r§);
                                                                                                                                          §§goto(addr279);
                                                                                                                                       }
                                                                                                                                       continue loop59;
                                                                                                                                    }
                                                                                                                                    if(_loc4_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§push(180);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc3_ || param2)
                                                                                                                                       {
                                                                                                                                          if(!_loc3_)
                                                                                                                                          {
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() <= §§pop());
                                                                                                                                          loop86:
                                                                                                                                          while(!_loc4_)
                                                                                                                                          {
                                                                                                                                             loop87:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!§§pop())
                                                                                                                                                {
                                                                                                                                                   §§push(this.§9y§);
                                                                                                                                                   while(_loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr175);
                                                                                                                                                   }
                                                                                                                                                   continue loop84;
                                                                                                                                                   addr173:
                                                                                                                                                }
                                                                                                                                                if(_loc3_)
                                                                                                                                                {
                                                                                                                                                   addr305:
                                                                                                                                                   if(_loc3_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this);
                                                                                                                                                      §§push(this.§"!r§);
                                                                                                                                                      if(_loc3_ || param2)
                                                                                                                                                      {
                                                                                                                                                         §§push(param1);
                                                                                                                                                         if(_loc3_)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§9y§);
                                                                                                                                                            if(!_loc4_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() - this.§"!r§);
                                                                                                                                                               if(_loc3_)
                                                                                                                                                               {
                                                                                                                                                                  addr334:
                                                                                                                                                                  addr345:
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(_loc3_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     addr343:
                                                                                                                                                                     §§push(§§pop() / param2);
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().§]$§ = §§pop() + §§pop();
                                                                                                                                                                  if(_loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr24);
                                                                                                                                                                     }
                                                                                                                                                                     continue loop70;
                                                                                                                                                                  }
                                                                                                                                                                  loop81:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§"!r§);
                                                                                                                                                                     addr262:
                                                                                                                                                                     loop82:
                                                                                                                                                                     while(_loc3_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§9y§);
                                                                                                                                                                        continue loop83;
                                                                                                                                                                        if(_loc4_ && param1)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop65;
                                                                                                                                                                        }
                                                                                                                                                                        if(_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop53;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(this.§"!r§);
                                                                                                                                                                        while(!_loc4_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() < §§pop());
                                                                                                                                                                           while(!_loc4_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 if(!_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop68;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr708:
                                                                                                                                                                                 addr383:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc4_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                loop80:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc4_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      continue loop81;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr709:
                                                                                                                                                                                                   addr206:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      break loop80;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc3_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop69;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop80;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop64;
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc4_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc4_ && this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(param1);
                                                                                                                                                                                                      continue loop49;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr905:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(param1);
                                                                                                                                                                                                      break loop65;
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop16;
                                                                                                                                                                                                addr710:
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop87;
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                   break loop69;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr830:
                                                                                                                                                                                             }
                                                                                                                                                                                             addr816:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr817:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this);
                                                                                                                                                                                                      §§push(param1);
                                                                                                                                                                                                      if(_loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§-=§);
                                                                                                                                                                                                         if(!(_loc4_ && param2))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() - this.§'z§);
                                                                                                                                                                                                            if(_loc3_ || _loc3_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr779:
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(_loc3_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(param2);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§pop().§7"9§ = §§pop();
                                                                                                                                                                                                               break loop87;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr779);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr818:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.§7"9§ = 0;
                                                                                                                                                                                                      addr821:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         this.mY = this.§'z§;
                                                                                                                                                                                                         addr807:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr694:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.§"!r§);
                                                                                                                                                                                                               break loop82;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr829:
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop56;
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop52;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr709);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              else
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr902);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop86;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr408);
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§9y§);
                                                                                                                                                                        addr699:
                                                                                                                                                                        while(!(_loc4_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                                                                           break loop51;
                                                                                                                                                                        }
                                                                                                                                                                        addr827:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() == §§pop());
                                                                                                                                                                           addr828:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr829);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr343);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr334);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr343);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr345);
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                addr463:
                                                                                                                                                if(_loc3_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr24);
                                                                                                                                                }
                                                                                                                                                §§goto(addr821);
                                                                                                                                                §§goto(addr262);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc3_ || param1)
                                                                                                                                                {
                                                                                                                                                   addr787:
                                                                                                                                                   if(!(_loc4_ && param1))
                                                                                                                                                   {
                                                                                                                                                      if(_loc3_ || _loc3_)
                                                                                                                                                      {
                                                                                                                                                         §§push(this);
                                                                                                                                                         §§push(this.§'z§);
                                                                                                                                                         if(_loc3_ || param2)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + this.§7"9§);
                                                                                                                                                         }
                                                                                                                                                         §§pop().mY = §§pop();
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc3_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr694);
                                                                                                                                                            }
                                                                                                                                                            addr892:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               this.§<"1§ = 0;
                                                                                                                                                               addr895:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  this.mX = this.§]f§;
                                                                                                                                                                  addr876:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(this.§'z§);
                                                                                                                                                                           addr825:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr827);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr822:
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr938);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr735:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr947);
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§goto(addr818);
                                                                                                                                                §§goto(addr305);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr822);
                                                                                                                                                §§goto(addr787);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop67;
                                                                                                                                       }
                                                                                                                                       continue loop50;
                                                                                                                                       addr63:
                                                                                                                                       §§push(180);
                                                                                                                                       if(!(_loc3_ || param1))
                                                                                                                                       {
                                                                                                                                          continue;
                                                                                                                                       }
                                                                                                                                       if(!_loc4_)
                                                                                                                                       {
                                                                                                                                          if(!_loc4_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() > §§pop());
                                                                                                                                             if(_loc3_)
                                                                                                                                             {
                                                                                                                                                if(!_loc4_)
                                                                                                                                                {
                                                                                                                                                   if(_loc4_ && param2)
                                                                                                                                                   {
                                                                                                                                                      continue loop51;
                                                                                                                                                   }
                                                                                                                                                   if(!_loc4_)
                                                                                                                                                   {
                                                                                                                                                      addr89:
                                                                                                                                                      if(_loc3_ || this)
                                                                                                                                                      {
                                                                                                                                                         if(_loc3_)
                                                                                                                                                         {
                                                                                                                                                            while(§§pop())
                                                                                                                                                            {
                                                                                                                                                               if(_loc3_ || this)
                                                                                                                                                               {
                                                                                                                                                                  addr107:
                                                                                                                                                                  if(!(_loc4_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc4_)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           addr118:
                                                                                                                                                                           if(_loc3_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc4_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this);
                                                                                                                                                                                 §§push(this.§"!r§);
                                                                                                                                                                                 if(_loc3_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(param1);
                                                                                                                                                                                    if(_loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§9y§);
                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + 360);
                                                                                                                                                                                          if(_loc3_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() - this.§"!r§);
                                                                                                                                                                                             if(!_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr153:
                                                                                                                                                                                                addr159:
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(!_loc4_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr157:
                                                                                                                                                                                                   §§push(§§pop() / param2);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§pop().§]$§ = §§pop() + §§pop();
                                                                                                                                                                                                if(!(_loc4_ && param2))
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                break loop64;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr157);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr153);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr157);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr159);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr876);
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(this);
                                                                                                                                                                              §§push(this.§]f§);
                                                                                                                                                                              if(!(_loc4_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + this.§<"1§);
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().mX = §§pop();
                                                                                                                                                                              §§goto(addr847);
                                                                                                                                                                              §§goto(addr118);
                                                                                                                                                                           }
                                                                                                                                                                           addr870:
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr303);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr821);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr334);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc3_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc4_ && _loc3_))
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc4_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc4_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc4_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§"!r§);
                                                                                                                                                                                       if(_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc3_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§9y§);
                                                                                                                                                                                             if(!_loc4_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop83;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr188);
                                                                                                                                                                                          }
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr61:
                                                                                                                                                                                       if(!_loc4_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr63);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr173);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr972);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr895);
                                                                                                                                                                              }
                                                                                                                                                                              break loop69;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr807);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           addr420:
                                                                                                                                                                           §§push(this);
                                                                                                                                                                           §§push(this.§"!r§);
                                                                                                                                                                           if(_loc3_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param1);
                                                                                                                                                                              if(_loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§9y§);
                                                                                                                                                                                 if(!_loc4_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() - 360);
                                                                                                                                                                                    if(_loc3_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() - this.§"!r§);
                                                                                                                                                                                       if(_loc3_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr451:
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(_loc3_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr460:
                                                                                                                                                                                             §§push(§§pop() / param2);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§pop().§]$§ = §§pop() + §§pop();
                                                                                                                                                                                          §§goto(addr463);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr460);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr451);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr460);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr451);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(180);
                                                                                                                                                                        addr410:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() > §§pop());
                                                                                                                                                                           continue loop51;
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     addr409:
                                                                                                                                                                     addr228:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr463);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr153);
                                                                                                                                                            }
                                                                                                                                                            addr24:
                                                                                                                                                            return;
                                                                                                                                                            addr98:
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            §§goto(addr905);
                                                                                                                                                         }
                                                                                                                                                         addr904:
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!§§pop())
                                                                                                                                                         {
                                                                                                                                                            §§push(this);
                                                                                                                                                            §§push(param1);
                                                                                                                                                            if(!_loc4_)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§4!k§);
                                                                                                                                                               if(!_loc4_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() - this.§]f§);
                                                                                                                                                                  if(!_loc4_)
                                                                                                                                                                  {
                                                                                                                                                                     addr864:
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(_loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        addr868:
                                                                                                                                                                        §§push(§§pop() / param2);
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().§<"1§ = §§pop();
                                                                                                                                                                     §§goto(addr870);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr868);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr864);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr868);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr892);
                                                                                                                                                         §§goto(addr89);
                                                                                                                                                      }
                                                                                                                                                      addr891:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr817);
                                                                                                                                                }
                                                                                                                                                §§goto(addr191);
                                                                                                                                             }
                                                                                                                                             §§goto(addr206);
                                                                                                                                          }
                                                                                                                                          while(_loc3_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr816);
                                                                                                                                             §§push(§§pop() == §§pop());
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() == §§pop());
                                                                                                                                             addr890:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr891);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr813:
                                                                                                                                          addr889:
                                                                                                                                       }
                                                                                                                                       §§goto(addr410);
                                                                                                                                    }
                                                                                                                                    §§goto(addr944);
                                                                                                                                 }
                                                                                                                                 §§goto(addr554);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop1;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr651);
                                                                                                               }
                                                                                                               addr932:
                                                                                                            }
                                                                                                         }
                                                                                                         while(_loc3_)
                                                                                                         {
                                                                                                            §§goto(addr813);
                                                                                                            §§push(0);
                                                                                                         }
                                                                                                         §§goto(addr825);
                                                                                                         addr810:
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr409);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr691:
                                                                                                   if(!_loc4_)
                                                                                                   {
                                                                                                      §§goto(addr24);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr735);
                                                                                             }
                                                                                             addr632:
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                break loop52;
                                                                                             }
                                                                                             §§goto(addr24);
                                                                                          }
                                                                                          §§goto(addr830);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr810);
                                                                                       }
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§goto(addr420);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr356);
                                                                                             §§push(this.§9y§);
                                                                                          }
                                                                                          §§goto(addr943);
                                                                                       }
                                                                                       addr418:
                                                                                    }
                                                                                    §§goto(addr899);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!§§pop())
                                                                                    {
                                                                                       §§goto(addr904);
                                                                                    }
                                                                                    §§goto(addr890);
                                                                                 }
                                                                              }
                                                                              continue loop55;
                                                                           }
                                                                           §§goto(addr901);
                                                                        }
                                                                        continue loop54;
                                                                     }
                                                                     while(_loc3_ || this)
                                                                     {
                                                                        §§goto(addr889);
                                                                        §§push(0);
                                                                     }
                                                                     §§goto(addr946);
                                                                  }
                                                                  if(_loc3_ || param2)
                                                                  {
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(this);
                                                                        §§push(this.§"!r§);
                                                                        if(!(_loc4_ && param1))
                                                                        {
                                                                           §§push(param1);
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              §§push(this.§9y§);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(§§pop() - this.§"!r§);
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    addr631:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!(_loc4_ && this))
                                                                                    {
                                                                                       addr629:
                                                                                       §§push(§§pop() / param2);
                                                                                    }
                                                                                    §§pop().§]$§ = §§pop() + §§pop();
                                                                                    §§goto(addr632);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr629);
                                                                        }
                                                                        §§goto(addr631);
                                                                     }
                                                                     §§goto(addr710);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr646);
                                                                  }
                                                               }
                                                               addr577:
                                                            }
                                                            §§goto(addr645);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             this.§]$§ = this.§"!r§;
                                             §§goto(addr691);
                                          }
                                          §§goto(addr828);
                                       }
                                       while(true)
                                       {
                                          §§goto(addr708);
                                          §§goto(addr676);
                                       }
                                       addr676:
                                    }
                                 }
                              }
                              §§goto(addr917);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr821);
      }
      
      public function get §+!;§() : Point
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            if(!§94§)
            {
            }
         }
         return null;
      }
      
      public function §9!^§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§,!E§);
            if(_loc1_)
            {
               §§push(§]!>§.§&j§);
               if(!(_loc2_ && this))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc1_ || this)
                  {
                     if(!§§pop())
                     {
                        if(_loc1_)
                        {
                           addr63:
                           §§pop();
                           return this.§,!E§ == §]!>§.§;!B§;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      public function §]F§() : Boolean
      {
         return this.§,!E§ == §]!>§.§9!K§;
      }
      
      public function §<",§() : Boolean
      {
         return this.§,!E§ == §]!>§.§%q§;
      }
      
      public function §6!@§() : Boolean
      {
         return this.§,!E§ == §]!>§.§;!B§;
      }
      
      public function §7!#§() : Boolean
      {
         return false;
      }
      
      public function isTexture() : Boolean
      {
         return this.§,!E§ == §]!>§.§&;§;
      }
      
      public function isGround() : Boolean
      {
         return this.§,!E§ == §]!>§.§=!a§;
      }
      
      public function §@!i§() : Boolean
      {
         return this.§,!E§ == §]!>§.§-"?§;
      }
      
      public function isMiscBlock() : Boolean
      {
         return this.§,!E§ == §]!>§.§,"9§;
      }
      
      public function §?!S§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§!F§);
            loop0:
            while(true)
            {
               §§push(§§pop() == "MISC_EXPLOSIVE_TNT");
               while(true)
               {
                  if(§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        loop5:
                        while(true)
                        {
                           if(!§§pop())
                           {
                              continue;
                           }
                           if(_loc1_)
                           {
                              if(!(_loc1_ && _loc2_))
                              {
                                 continue;
                              }
                              continue loop0;
                           }
                           while(true)
                           {
                              §§push(true);
                              break loop5;
                           }
                        }
                        while(true)
                        {
                           if(!_loc1_)
                           {
                              break loop4;
                           }
                        }
                     }
                     if(_loc2_)
                     {
                        break;
                     }
                     continue;
                     addr56:
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
         §§goto(addr60);
      }
      
      public function §%h§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§]F§());
            if(_loc1_ || _loc2_)
            {
               §§push(Boolean(§§pop()));
            }
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     while(true)
                     {
                        §§pop();
                        addr144:
                        while(true)
                        {
                           §§push(this.§@!i§());
                           addr108:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                           }
                        }
                     }
                     addr143:
                  }
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        §§push(§§pop());
                        loop5:
                        while(_loc1_ || _loc2_)
                        {
                           if(§§pop())
                           {
                              loop10:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!_loc2_)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          if(!_loc2_)
                                          {
                                             §§pop();
                                             if(_loc1_ || _loc2_)
                                             {
                                                if(!(_loc1_ || _loc2_))
                                                {
                                                   break;
                                                }
                                                §§push(this.§-"<§);
                                                if(!(_loc2_ && this))
                                                {
                                                   if(_loc2_)
                                                   {
                                                      continue;
                                                   }
                                                   addr36:
                                                   if(!(_loc2_ && _loc2_))
                                                   {
                                                      addr44:
                                                      §§push(!§§pop());
                                                      if(_loc2_ && _loc1_)
                                                      {
                                                         continue loop0;
                                                      }
                                                      if(!_loc2_)
                                                      {
                                                         if(_loc1_)
                                                         {
                                                            break loop10;
                                                         }
                                                         continue loop4;
                                                      }
                                                      addr119:
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         addr120:
                                                         while(true)
                                                         {
                                                            §§push(this.isMiscBlock());
                                                         }
                                                      }
                                                   }
                                                   while(!_loc2_)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      continue loop0;
                                                      §§goto(addr36);
                                                   }
                                                   §§goto(addr108);
                                                }
                                                §§goto(addr44);
                                             }
                                             §§goto(addr120);
                                          }
                                          else
                                          {
                                             §§goto(addr143);
                                          }
                                       }
                                       §§goto(addr144);
                                    }
                                    break;
                                 }
                                 continue loop5;
                              }
                              return §§pop();
                              addr82:
                           }
                           §§goto(addr119);
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         §§goto(addr144);
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §0$§() : Number
      {
         return Number(Math.sqrt(this.getBody().GetLinearVelocity().x * this.getBody().GetLinearVelocity().x + this.getBody().GetLinearVelocity().y * this.getBody().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         if(_loc10_ || param1)
         {
            §§push(this.§<",§());
            loop0:
            while(!§§pop())
            {
               loop1:
               while(true)
               {
                  §§push(this.§+!e§);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().§[!<§());
                     loop3:
                     while(§§pop())
                     {
                        loop4:
                        while(true)
                        {
                           §§push(this.§'!,§);
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
                                             addr762:
                                             while(true)
                                             {
                                                §§push(param6);
                                                addr734:
                                                while(true)
                                                {
                                                   §§push(!§§pop());
                                                }
                                             }
                                          }
                                          addr761:
                                       }
                                       while(true)
                                       {
                                          loop13:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                loop14:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   loop15:
                                                   while(true)
                                                   {
                                                      §§push(this.§'!,§);
                                                      if(!(_loc9_ && param3))
                                                      {
                                                         if(§§pop() > §§pop())
                                                         {
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(param1);
                                                               loop17:
                                                               while(!(_loc9_ && this))
                                                               {
                                                                  if(_loc10_)
                                                                  {
                                                                     §§push(this.§'!,§);
                                                                     if(!_loc9_)
                                                                     {
                                                                        if(!(_loc9_ && param3))
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           if(_loc10_ || param3)
                                                                           {
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 loop18:
                                                                                 while(true)
                                                                                 {
                                                                                    param1 = §§pop();
                                                                                    loop19:
                                                                                    while(_loc10_)
                                                                                    {
                                                                                       §§push(param2);
                                                                                       loop20:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(!(_loc9_ && param1))
                                                                                          {
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                loop21:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      addr571:
                                                                                                      while(_loc10_ || param2)
                                                                                                      {
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§%h§());
                                                                                                            addr529:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  continue loop13;
                                                                                                               }
                                                                                                               continue loop20;
                                                                                                            }
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop3;
                                                                                                      addr571:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      loop22:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            loop23:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc10_)
                                                                                                               {
                                                                                                                  addr688:
                                                                                                                  §§push(param1);
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§push(int(Math.min(this.§@!P§,int(param1))));
                                                                                                               loop24:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc7_ = §§pop();
                                                                                                                  loop25:
                                                                                                                  while(!_loc9_)
                                                                                                                  {
                                                                                                                     §§push(§!w§.§!!l§.getValue());
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        continue loop24;
                                                                                                                     }
                                                                                                                     §§push(§§pop() * _loc7_);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(int(§§pop()));
                                                                                                                        continue loop24;
                                                                                                                        loop45:
                                                                                                                        while(_loc10_ || param3)
                                                                                                                        {
                                                                                                                           if(_loc10_)
                                                                                                                           {
                                                                                                                              if(_loc9_ && this)
                                                                                                                              {
                                                                                                                                 continue loop15;
                                                                                                                              }
                                                                                                                              §§push(1);
                                                                                                                              loop46:
                                                                                                                              while(_loc10_ || this)
                                                                                                                              {
                                                                                                                                 if(_loc10_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() < §§pop());
                                                                                                                                    loop47:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop());
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       if(§§pop())
                                                                                                                                       {
                                                                                                                                          loop48:
                                                                                                                                          while(!(_loc9_ && this))
                                                                                                                                          {
                                                                                                                                             §§pop();
                                                                                                                                             loop49:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc10_ || this)
                                                                                                                                                {
                                                                                                                                                   addr298:
                                                                                                                                                   if(_loc10_ || param2)
                                                                                                                                                   {
                                                                                                                                                      if(_loc10_)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§9!^§());
                                                                                                                                                         if(_loc10_ || param2)
                                                                                                                                                         {
                                                                                                                                                            if(_loc9_)
                                                                                                                                                            {
                                                                                                                                                               continue loop48;
                                                                                                                                                            }
                                                                                                                                                            if(_loc10_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc10_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc10_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc9_)
                                                                                                                                                                     {
                                                                                                                                                                        addr206:
                                                                                                                                                                        §§push(Boolean(§§pop()));
                                                                                                                                                                        if(_loc9_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop47;
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc10_ || param3))
                                                                                                                                                                        {
                                                                                                                                                                           break;
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc9_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop49;
                                                                                                                                                                              }
                                                                                                                                                                              loop53:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§@!P§);
                                                                                                                                                                                 loop54:
                                                                                                                                                                                 while(!(_loc9_ && param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc9_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc9_ && param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr747);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          addr787:
                                                                                                                                                                                       }
                                                                                                                                                                                       if(§§pop() <= 30)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr724:
                                                                                                                                                                                          if(param1 <= 12)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(param1);
                                                                                                                                                                                             break loop17;
                                                                                                                                                                                          }
                                                                                                                                                                                          break loop19;
                                                                                                                                                                                       }
                                                                                                                                                                                       this.§"!a§(§+"&§.§<!k§);
                                                                                                                                                                                       if(_loc10_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr702:
                                                                                                                                                                                          return this.§@!P§;
                                                                                                                                                                                          addr699:
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       addr738:
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop46;
                                                                                                                                                                                    continue loop1;
                                                                                                                                                                                    loop66:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§@!P§);
                                                                                                                                                                                       if(_loc10_ || param3)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr39:
                                                                                                                                                                                          if(_loc9_ && this)
                                                                                                                                                                                          {
                                                                                                                                                                                             loop31:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop5;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(!_loc10_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                                                                                loop32:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc8_ = §§pop();
                                                                                                                                                                                                   addr500:
                                                                                                                                                                                                   addr714:
                                                                                                                                                                                                   while(_loc10_ || param3)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      loop34:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§+!e§);
                                                                                                                                                                                                         if(_loc9_ && param3)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(§§pop().§9q§);
                                                                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                                                                         §§push(§]"%§.§>!%§);
                                                                                                                                                                                                         if(_loc10_ || param3)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§@!P§ > param1);
                                                                                                                                                                                                            if(!_loc9_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(§§pop())
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc9_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr438:
                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                     addr439:
                                                                                                                                                                                                                     §§push(param3);
                                                                                                                                                                                                                     if(_loc9_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr443:
                                                                                                                                                                                                                     §§pop().addScore(§§pop(),§§pop(),§§pop(),this.getBody().GetPosition().x,this.getBody().GetPosition().y,§&!>§.§6[§(this.§!F§));
                                                                                                                                                                                                                     loop35:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr351:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(param5);
                                                                                                                                                                                                                           loop37:
                                                                                                                                                                                                                           while(!(_loc9_ && param3))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc9_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                 break loop48;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr734);
                                                                                                                                                                                                                              addr318:
                                                                                                                                                                                                                              if(!(_loc10_ || this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr325:
                                                                                                                                                                                                                              if(_loc10_ || param3)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr334:
                                                                                                                                                                                                                                    loop42:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(§§pop())
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr335:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr335:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(this);
                                                                                                                                                                                                                                          §§push(this.§@!P§);
                                                                                                                                                                                                                                          if(!_loc9_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() - param1);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§pop().§@!P§ = §§pop();
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc10_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc9_ && param2))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc9_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc10_ || this))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr660:
                                                                                                                                                                                                                                                            §§push(this.§9!^§());
                                                                                                                                                                                                                                                            if(_loc10_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr666:
                                                                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                                                                                                                               if(!_loc9_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     break loop20;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr643:
                                                                                                                                                                                                                                                                  break loop37;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop8;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop7;
                                                                                                                                                                                                                                                            addr698:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(this.§6B§);
                                                                                                                                                                                                                                                         if(!(_loc10_ || param3))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop42;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr318);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop16;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr762);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr619:
                                                                                                                                                                                                                                                addr622:
                                                                                                                                                                                                                                                §§push(this.§@!P§);
                                                                                                                                                                                                                                                if(_loc9_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr631:
                                                                                                                                                                                                                                                   if(!_loc9_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr693:
                                                                                                                                                                                                                                                      §§push(this.§'">§);
                                                                                                                                                                                                                                                      if(_loc10_ || param3)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr643);
                                                                                                                                                                                                                                                         §§push(§§pop() == §§pop());
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(§§pop() >= §§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr694:
                                                                                                                                                                                                                                                         this.§"!a§(§+"&§.§>,§);
                                                                                                                                                                                                                                                         §§goto(addr698);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr660);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   break loop23;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                return §§pop();
                                                                                                                                                                                                                                                addr380:
                                                                                                                                                                                                                                                addr659:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(!_loc10_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(!_loc10_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop4;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop49;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr747:
                                                                                                                                                                                                                                          return §§pop();
                                                                                                                                                                                                                                          addr344:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break loop54;
                                                                                                                                                                                                                                          §§goto(addr335);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr333:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              loop29:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc9_ && param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc10_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc9_ && param2))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc8_);
                                                                                                                                                                                                                                                if(!(_loc9_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc10_ || param2))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(§§pop() * §!w§.§`"5§);
                                                                                                                                                                                                                                                   continue loop31;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop32;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop14;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop23;
                                                                                                                                                                                                                                          addr100:
                                                                                                                                                                                                                                          if(!(_loc9_ && param3))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr107:
                                                                                                                                                                                                                                             loop57:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                this.§[!g§.setDamagedFrame();
                                                                                                                                                                                                                                                if(!_loc9_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc10_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr115:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc10_ || param2))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop49;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(!_loc9_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc9_ && this)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(_loc10_ || param1)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc9_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  this.addDamageParticles(this.§+!e§.§9q§.particles,param1);
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        break loop57;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr93:
                                                                                                                                                                                                                                                                     if(_loc10_ || param2)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr100);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc10_ || param2)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop53;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr581);
                                                                                                                                                                                                                                                                           §§goto(addr93);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr666);
                                                                                                                                                                                                                                                                        addr241:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr91:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr747);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr718:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr699);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop29;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr525:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop19;
                                                                                                                                                                                                                                                      addr115:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr66:
                                                                                                                                                                                                                                                   if(_loc10_ || param2)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc9_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc10_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop66;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop35;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr335);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop57;
                                                                                                                                                                                                                                                         §§goto(addr66);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr150:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr91);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(!_loc9_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §]"5§.§1!%§(§+"&§.§<!k§,this.§6"'§.§3k§,"ChannelDestroyed");
                                                                                                                                                                                                                                                §§goto(addr150);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop25;
                                                                                                                                                                                                                                             addr182:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop24;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop34;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr761);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr762);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(§§pop())
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break loop25;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr619);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr443);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr438);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr439);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop2;
                                                                                                                                                                                                      §§goto(addr298);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   this.§"!a§(§+"&§.§>,§);
                                                                                                                                                                                                   §§goto(addr718);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             addr780:
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc9_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop18;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(!(_loc9_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop17;
                                                                                                                                                                                          return §§pop();
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop54;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(1);
                                                                                                                                                                                    if(!(_loc9_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop() < §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc9_ && this))
                                                                                                                                                                                          {
                                                                                                                                                                                             this.§@!P§ = 0;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr182);
                                                                                                                                                                                       }
                                                                                                                                                                                       this.§"!a§(§+"&§.§`!!§);
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop46;
                                                                                                                                                                                    §§goto(addr115);
                                                                                                                                                                                    return §§pop();
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop45;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr729:
                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              break loop3;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr699);
                                                                                                                                                                           addr222:
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr571);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr660);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr529);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop();
                                                                                                                                                                     §§goto(addr380);
                                                                                                                                                                  }
                                                                                                                                                                  addr379:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr619);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr334);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr206);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr737:
                                                                                                                                                         §§push(param1);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr738);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr500);
                                                                                                                                                }
                                                                                                                                                §§goto(addr344);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc9_)
                                                                                                                                                {
                                                                                                                                                   continue loop22;
                                                                                                                                                }
                                                                                                                                                §§goto(addr666);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop());
                                                                                                                                             break loop47;
                                                                                                                                             §§goto(addr283);
                                                                                                                                          }
                                                                                                                                          addr283:
                                                                                                                                       }
                                                                                                                                       §§goto(addr222);
                                                                                                                                    }
                                                                                                                                    continue loop21;
                                                                                                                                 }
                                                                                                                                 continue loop6;
                                                                                                                              }
                                                                                                                              if(_loc10_)
                                                                                                                              {
                                                                                                                                 if(!_loc10_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr747);
                                                                                                                                 }
                                                                                                                                 if(§§pop() > §§pop())
                                                                                                                                 {
                                                                                                                                    §§goto(addr714);
                                                                                                                                 }
                                                                                                                                 §§goto(addr699);
                                                                                                                              }
                                                                                                                              §§goto(addr724);
                                                                                                                           }
                                                                                                                           §§goto(addr622);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  if(_loc10_ || param2)
                                                                                                                  {
                                                                                                                     §§push(this);
                                                                                                                     §§push(this.§'">§);
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - 1);
                                                                                                                     }
                                                                                                                     §§pop().§@!P§ = §§pop();
                                                                                                                     §§goto(addr659);
                                                                                                                  }
                                                                                                                  addr671:
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        §§goto(addr631);
                                                                                                                        §§push(this.§@!P§);
                                                                                                                     }
                                                                                                                     break loop0;
                                                                                                                  }
                                                                                                                  §§goto(addr694);
                                                                                                               }
                                                                                                            }
                                                                                                            addr691:
                                                                                                            §§goto(addr693);
                                                                                                            §§push(this.§'!,§ / 2);
                                                                                                         }
                                                                                                         §§goto(addr351);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          §§goto(addr571);
                                                                                       }
                                                                                       §§pop();
                                                                                       §§goto(addr671);
                                                                                    }
                                                                                    this.§"!a§(§+"&§.§`!!§);
                                                                                    §§goto(addr729);
                                                                                 }
                                                                                 addr615:
                                                                              }
                                                                              §§goto(addr702);
                                                                           }
                                                                           §§goto(addr615);
                                                                        }
                                                                        §§goto(addr691);
                                                                     }
                                                                     §§goto(addr693);
                                                                  }
                                                                  §§goto(addr724);
                                                               }
                                                               §§goto(addr709);
                                                            }
                                                         }
                                                         §§goto(addr688);
                                                      }
                                                      §§goto(addr691);
                                                   }
                                                }
                                             }
                                             §§goto(addr737);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr780);
                  }
               }
            }
            §§goto(addr787);
            §§push(this.§@!P§);
         }
         §§goto(addr82);
      }
      
      public function §"!a§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §]"5§.§1!%§(param1,this.§6"'§.§3k§);
         }
      }
      
      public function §1!r§(param1:String) : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(this.§6"'§.material.§!!&§(param1));
         if(_loc3_ || _loc2_)
         {
            return §§pop() * this.§ !R§;
         }
      }
      
      public function §8d§(param1:String) : Number
      {
         return this.§6"'§.material.§]N§(param1);
      }
      
      public function §@"?§() : String
      {
         return this.§6"'§.material.mName;
      }
      
      public function §@y§() : Number
      {
         return this.§6"'§.§=r§();
      }
      
      public function §!!E§() : int
      {
         return this.§6"'§.§,!,§();
      }
      
      public function §+f§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 30;
         if(_loc3_ || _loc3_)
         {
            §§push(this.getBody().IsAwake());
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
                           while(true)
                           {
                              §§push(this.§9!^§());
                              loop5:
                              while(true)
                              {
                                 §§push(Boolean(§§pop()));
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop7:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop8:
                                          while(_loc3_)
                                          {
                                             §§pop();
                                             loop9:
                                             while(true)
                                             {
                                                §§push(this.§@!P§ == this.§'">§);
                                                loop19:
                                                while(true)
                                                {
                                                   if(!(_loc3_ || _loc1_))
                                                   {
                                                      continue loop9;
                                                   }
                                                   §§push(Math.abs(this.getBody().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                   if(!(_loc2_ && _loc3_))
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         if(_loc3_)
                                                         {
                                                            loop21:
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc2_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     break;
                                                                     addr83:
                                                                  }
                                                                  loop20:
                                                                  while(!(_loc2_ && _loc2_))
                                                                  {
                                                                     continue loop19;
                                                                     while(true)
                                                                     {
                                                                        §§push(Math.abs(this.getBody().§7"<§()) > b2Settings.b2_angularSleepTolerance * _loc1_);
                                                                        if(_loc3_)
                                                                        {
                                                                           if(_loc3_)
                                                                           {
                                                                              if(_loc3_ || this)
                                                                              {
                                                                                 if(_loc3_)
                                                                                 {
                                                                                    break loop21;
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§pop();
                                                                                 addr184:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Math.abs(this.getBody().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                                                 }
                                                                              }
                                                                              addr183:
                                                                           }
                                                                           loop15:
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_ || this)
                                                                              {
                                                                                 if(!(_loc3_ || this))
                                                                                 {
                                                                                    continue loop8;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    addr146:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!_loc2_)
                                                                                       {
                                                                                          if(!(_loc2_ && _loc3_))
                                                                                          {
                                                                                             if(_loc2_ && _loc2_)
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                while(!_loc2_)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   continue loop19;
                                                                                                }
                                                                                                continue loop6;
                                                                                                addr163:
                                                                                             }
                                                                                             continue loop21;
                                                                                          }
                                                                                          continue loop7;
                                                                                       }
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                                 addr144:
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    continue loop15;
                                                                                 }
                                                                                 addr181:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!§§pop())
                                                                                 {
                                                                                    §§goto(addr183);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr144);
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop9;
                                                                        }
                                                                        continue loop20;
                                                                     }
                                                                  }
                                                                  continue loop1;
                                                               }
                                                               §§goto(addr146);
                                                            }
                                                            §§goto(addr51);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr163);
                                                   }
                                                   §§goto(addr83);
                                                }
                                                continue loop5;
                                             }
                                          }
                                          continue loop3;
                                       }
                                       while(true)
                                       {
                                          §§goto(addr181);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     addr51:
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr117);
      }
      
      public function §#";§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.getBody().IsAwake());
            if(_loc2_ || this)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     §§push(true);
                     if(!(_loc1_ && _loc1_))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr66:
                     §§push(this.§6!'§());
                     if(_loc2_)
                     {
                        §§push(!§§pop());
                     }
                  }
               }
               §§goto(addr66);
            }
            return §§pop();
         }
         §§goto(addr66);
      }
      
      protected function §6!'§() : Boolean
      {
         return this.§`"'§.§6!'§();
      }
      
      public function §;!t§(param1:Number = 3) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§ !R§ = param1;
            do
            {
               if(this.§ !R§ <= 1)
               {
                  §§push(this.§[!g§);
                  if(!_loc3_)
                  {
                     §§pop().§6Y§ = null;
                     if(_loc3_)
                     {
                        continue;
                     }
                     if(!(_loc3_ && _loc3_))
                     {
                        addr24:
                        return;
                        addr56:
                     }
                     addr62:
                     §§push(this.§[!g§);
                  }
                  §§pop().§^`§();
                  continue;
               }
               §§goto(addr62);
            }
            while(_loc3_ && _loc2_);
            
            §§goto(addr24);
         }
         §§goto(addr56);
      }
      
      public function §0&§(param1:Boolean) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Number(0);
         if(!_loc4_)
         {
            §§push(this.§6"'§.§7"8§());
            if(!_loc4_)
            {
               if(§§pop() != §+!Z§.§>$§)
               {
                  §§push(this.getBody().GetMass());
                  if(_loc3_)
                  {
                     if(!(_loc4_ && _loc3_))
                     {
                        §§push(this.§?"8§.§11§());
                        loop0:
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           loop1:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              addr180:
                              loop14:
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 loop9:
                                 while(true)
                                 {
                                    if(param1)
                                    {
                                       loop22:
                                       while(true)
                                       {
                                          §§push(_loc2_);
                                          loop7:
                                          while(true)
                                          {
                                             §§push(this.§4>§());
                                             loop6:
                                             while(true)
                                             {
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   loop12:
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         continue loop14;
                                                      }
                                                      §§push(Number(§§pop()));
                                                      while(true)
                                                      {
                                                         if(_loc3_ || _loc3_)
                                                         {
                                                            _loc2_ = §§pop();
                                                            loop11:
                                                            while(true)
                                                            {
                                                               if(_loc3_ || _loc3_)
                                                               {
                                                                  break loop6;
                                                               }
                                                               loop3:
                                                               while(true)
                                                               {
                                                                  loop4:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc2_);
                                                                     if(_loc3_ || _loc2_)
                                                                     {
                                                                        if(!(_loc4_ && this))
                                                                        {
                                                                           break;
                                                                        }
                                                                        addr43:
                                                                        loop5:
                                                                        while(true)
                                                                        {
                                                                           if(!_loc4_)
                                                                           {
                                                                              if(_loc4_)
                                                                              {
                                                                                 continue loop1;
                                                                              }
                                                                              §§push(this.§?a§);
                                                                              if(!(_loc4_ && _loc2_))
                                                                              {
                                                                                 if(_loc3_ || _loc3_)
                                                                                 {
                                                                                    if(_loc3_ || _loc2_)
                                                                                    {
                                                                                       §§push(this.§?a§);
                                                                                       if(!(_loc4_ && param1))
                                                                                       {
                                                                                          addr80:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          continue loop6;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          addr204:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(_loc3_ || _loc2_)
                                                                                             {
                                                                                             }
                                                                                             addr223:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc2_ = §§pop();
                                                                                                break loop5;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr203:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             §§push(§!w§.§4!-§);
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr203);
                                                                                             }
                                                                                             addr201:
                                                                                          }
                                                                                       }
                                                                                       addr196:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr223);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr204);
                                                                              }
                                                                           }
                                                                           continue loop7;
                                                                           §§goto(addr80);
                                                                           break loop6;
                                                                        }
                                                                        continue loop3;
                                                                     }
                                                                     addr100:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop12;
                                                                        }
                                                                        _loc2_ = §§pop();
                                                                        if(_loc4_)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop22;
                                                                        }
                                                                        if(!_loc3_)
                                                                        {
                                                                           continue loop9;
                                                                        }
                                                                        if(!(_loc4_ && this))
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        addr190:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.§[!g§.mW);
                                                                           addr193:
                                                                           while(true)
                                                                           {
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr196);
                                                                  }
                                                                  return §§pop();
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr193);
                                                      }
                                                   }
                                                }
                                                §§goto(addr201);
                                             }
                                          }
                                       }
                                       addr130:
                                    }
                                    while(true)
                                    {
                                       §§goto(addr43);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr223);
                  }
                  §§goto(addr180);
               }
               §§goto(addr190);
            }
            §§goto(addr193);
         }
         §§goto(addr130);
      }
      
      public function §4>§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Number(1);
         if(_loc3_ || _loc2_)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push(_loc1_);
               if(_loc3_)
               {
                  §§push(2);
                  if(!_loc2_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc3_ || this)
                     {
                        §§push(§§pop() * Math.min(10,this.§[!g§.§0n§ - 1));
                        if(_loc3_)
                        {
                           addr64:
                           §§push(§§pop() / 10);
                        }
                        §§push(§§pop() - §§pop());
                        if(!(_loc2_ && _loc3_))
                        {
                           §§goto(addr84);
                        }
                        §§goto(addr87);
                     }
                  }
               }
               §§goto(addr64);
            }
            addr84:
            §§push(Number(§§pop()));
            if(_loc3_)
            {
               addr87:
               _loc1_ = §§pop();
               return _loc1_;
            }
         }
         §§goto(addr87);
      }
      
      public function §!N§(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         §§push(this.getBody().GetLinearVelocity().x);
         if(!(_loc6_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.getBody().GetLinearVelocity().y);
         if(_loc7_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         §§push(1);
         §§push(param1);
         if(!_loc6_)
         {
            §§push(§§pop() / _loc4_);
         }
         §§push(§§pop() + §§pop());
         if(_loc7_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!(_loc6_ && _loc3_))
         {
            §§push(_loc2_);
            if(_loc7_ || _loc3_)
            {
               §§push(_loc5_);
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc7_ || this)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               addr139:
            }
            while(true)
            {
               _loc2_ = §§pop();
               while(true)
               {
                  §§push(_loc3_);
                  if(_loc7_ || this)
                  {
                     §§push(_loc5_);
                     if(_loc7_)
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc7_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     else
                     {
                        §§goto(addr139);
                     }
                  }
                  if(!_loc7_)
                  {
                     break;
                  }
                  _loc3_ = §§pop();
                  loop3:
                  while(_loc7_)
                  {
                     while(true)
                     {
                        this.getBody().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
                        if(_loc7_ || _loc2_)
                        {
                           break;
                        }
                        continue loop3;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr129);
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§?"-§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§-5§) : void
      {
      }
      
      public function addDamageParticles(param1:§-5§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §&!8§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2Vec2 = this.getBody().GetPosition();
         §§push(_loc4_);
         §§push(_loc4_.x);
         if(!_loc5_)
         {
            §§push(param2.x * param1);
            if(!(_loc5_ && param3))
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
            if(_loc6_ || param1)
            {
               §§push(param2.y * param1);
               if(!(_loc5_ && param2))
               {
                  §§push(§§pop() * param3);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().y = §§pop();
            do
            {
               this.getBody().§>!W§(_loc4_);
            }
            while(!(_loc6_ || param3));
            
         }
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         if(_loc6_ || _loc3_)
         {
            if(param2)
            {
               loop0:
               while(true)
               {
                  §§push(this.§+!1§());
                  loop1:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     loop2:
                     while(true)
                     {
                        §§push(§§pop());
                        loop3:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(360);
                              if(_loc6_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc6_ || _loc3_)
                                 {
                                    addr297:
                                    §§push(360);
                                    while(true)
                                    {
                                       §§push(§§pop() % §§pop());
                                       if(_loc6_)
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    addr297:
                                 }
                                 loop5:
                                 while(true)
                                 {
                                    _loc4_ = §§pop();
                                    loop6:
                                    while(true)
                                    {
                                       §§push(Math.round(_loc4_ / 22.5) * 22.5);
                                       if(!(_loc6_ || param1))
                                       {
                                          break;
                                       }
                                       §§push(Number(§§pop()));
                                       loop7:
                                       while(true)
                                       {
                                          _loc4_ = §§pop();
                                          loop8:
                                          while(true)
                                          {
                                             §§push(Number(0));
                                             loop9:
                                             while(true)
                                             {
                                                _loc5_ = §§pop();
                                                continue loop0;
                                                addr151:
                                                if(_loc7_ && param1)
                                                {
                                                   continue;
                                                }
                                                if(!(_loc6_ || param2))
                                                {
                                                   continue loop2;
                                                }
                                                §§push(_loc5_);
                                                if(!_loc7_)
                                                {
                                                   addr168:
                                                   if(_loc7_ && _loc3_)
                                                   {
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() % §§pop());
                                                         addr236:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc6_ || _loc3_)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  break;
                                                               }
                                                               _loc5_ = §§pop();
                                                               while(true)
                                                               {
                                                                  addr126:
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     if(!_loc7_)
                                                                     {
                                                                        §§push(param1);
                                                                        if(_loc6_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop() / 2);
                                                                           if(!_loc6_)
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                        }
                                                                        if(§§pop() < §§pop())
                                                                        {
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              §§push(_loc4_);
                                                                           }
                                                                           else
                                                                           {
                                                                              loop20:
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    if(_loc7_)
                                                                                    {
                                                                                       continue loop0;
                                                                                    }
                                                                                    if(_loc7_ && this)
                                                                                    {
                                                                                       continue loop8;
                                                                                    }
                                                                                    loop21:
                                                                                    while(true)
                                                                                    {
                                                                                       addr28:
                                                                                       while(true)
                                                                                       {
                                                                                          this.§-^§(_loc4_);
                                                                                          if(_loc6_ || this)
                                                                                          {
                                                                                             if(true)
                                                                                             {
                                                                                                §§push(this.§+!1§());
                                                                                                if(_loc6_ || param1)
                                                                                                {
                                                                                                   §§goto(addr313);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                addr303:
                                                                                             }
                                                                                             continue loop21;
                                                                                             break loop6;
                                                                                          }
                                                                                          continue loop20;
                                                                                       }
                                                                                       continue loop19;
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       addr232:
                                                                                       while(!_loc7_)
                                                                                       {
                                                                                          §§push(param1);
                                                                                          continue loop16;
                                                                                       }
                                                                                       continue loop5;
                                                                                    }
                                                                                    addr231:
                                                                                 }
                                                                              }
                                                                              addr206:
                                                                           }
                                                                           §§goto(addr313);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(!(_loc7_ && this))
                                                                           {
                                                                              if(_loc6_ || _loc3_)
                                                                              {
                                                                                 if(!(_loc7_ && param1))
                                                                                 {
                                                                                    §§push(param1);
                                                                                    if(_loc6_ || _loc3_)
                                                                                    {
                                                                                       if(!(_loc6_ || this))
                                                                                       {
                                                                                          continue loop3;
                                                                                       }
                                                                                       §§push(§§pop() - _loc5_);
                                                                                       if(_loc6_ || param2)
                                                                                       {
                                                                                       }
                                                                                       addr313:
                                                                                       §§goto(addr312);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       §§goto(addr93);
                                                                                    }
                                                                                    break loop6;
                                                                                 }
                                                                                 continue loop4;
                                                                              }
                                                                              §§goto(addr151);
                                                                              §§goto(addr313);
                                                                           }
                                                                           addr93:
                                                                           §§push(Number(§§pop()));
                                                                           if(!(_loc7_ && _loc3_))
                                                                           {
                                                                              if(_loc6_ || param1)
                                                                              {
                                                                                 _loc4_ = §§pop();
                                                                                 §§goto(addr109);
                                                                              }
                                                                              §§goto(addr232);
                                                                           }
                                                                           addr312:
                                                                           §§push(§§pop() + param1);
                                                                           if(_loc6_ || param2)
                                                                           {
                                                                              break loop6;
                                                                           }
                                                                           §§goto(addr322);
                                                                        }
                                                                     }
                                                                     §§goto(addr151);
                                                                  }
                                                                  continue loop9;
                                                                  if(!(_loc6_ || _loc3_))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc7_)
                                                                  {
                                                                     continue loop6;
                                                                  }
                                                                  §§goto(addr28);
                                                               }
                                                            }
                                                            §§goto(addr313);
                                                         }
                                                         continue loop1;
                                                      }
                                                   }
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc7_)
                                                   {
                                                      break loop6;
                                                   }
                                                   continue loop7;
                                                }
                                                §§goto(addr313);
                                             }
                                          }
                                       }
                                    }
                                    addr322:
                                    var _loc3_:* = §§pop();
                                    if(!(_loc7_ && param1))
                                    {
                                       §§push(Math.round(_loc3_ / 22.5) * 22.5);
                                       if(!(_loc7_ && _loc3_))
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                       _loc3_ = §§pop();
                                    }
                                    do
                                    {
                                       this.§-^§(_loc3_);
                                    }
                                    while(_loc7_ && param2);
                                    
                                    return;
                                 }
                              }
                              §§goto(addr297);
                           }
                        }
                     }
                  }
               }
            }
            §§goto(addr303);
         }
         §§goto(addr259);
      }
      
      public function §4!1§(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(§1",§(this.getBody().GetAngle()));
         if(_loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(param1);
               if(_loc3_ || _loc2_)
               {
                  §§push(360);
                  if(_loc3_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc4_)
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
                              §§push(§#!V§(_loc2_));
                              if(!_loc4_)
                              {
                                 if(_loc4_)
                                 {
                                    continue loop2;
                                 }
                                 if(_loc4_)
                                 {
                                    continue loop1;
                                 }
                                 §§push(Number(§§pop()));
                              }
                              if(!_loc4_)
                              {
                                 _loc2_ = §§pop();
                                 while(true)
                                 {
                                    this.getBody().§-!7§(_loc2_);
                                    if(!(_loc4_ && param1))
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          break;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 return;
                                 addr76:
                              }
                              break;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               §§goto(addr103);
            }
         }
         §§goto(addr76);
      }
      
      public function §;"+§(param1:Number, param2:Point) : void
      {
         var _loc14_:Boolean = true;
         var _loc15_:Boolean = false;
         if(!_loc15_)
         {
            this.rotate(param1);
         }
         var _loc3_:b2Vec2 = this.getBody().GetPosition().Copy();
         §§push(_loc3_.x);
         if(!(_loc15_ && this))
         {
            §§push(§§pop() - param2.x);
            if(!_loc15_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc4_:* = §§pop();
         §§push(_loc3_.y);
         if(_loc14_ || _loc3_)
         {
            §§push(§§pop() - param2.y);
            if(_loc14_ || this)
            {
               addr62:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            if(!(_loc15_ && param1))
            {
               §§push(_loc4_);
               if(!(_loc15_ && this))
               {
                  §§push(0);
                  if(!(_loc15_ && _loc3_))
                  {
                     §§push(§§pop() == §§pop());
                     if(_loc14_)
                     {
                        if(§§pop())
                        {
                           if(_loc14_)
                           {
                              §§goto(addr94);
                           }
                        }
                        §§goto(addr107);
                     }
                     addr94:
                     §§pop();
                     if(_loc14_)
                     {
                        §§push(_loc5_);
                        if(_loc14_ || param1)
                        {
                           addr107:
                           if(§§pop() == 0)
                           {
                              if(_loc14_)
                              {
                                 §§goto(addr110);
                              }
                              else
                              {
                                 addr111:
                                 §§push(Number(Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)));
                              }
                           }
                           §§goto(addr111);
                        }
                        var _loc6_:* = §§pop();
                        §§push(_loc4_);
                        if(_loc14_)
                        {
                           §§push(§§pop() / _loc5_);
                           if(!(_loc15_ && this))
                           {
                              addr134:
                              §§push(Number(§§pop()));
                           }
                           var _loc7_:* = §§pop();
                           §§push(Math.atan(_loc7_) * 180);
                           if(_loc14_ || param2)
                           {
                              §§push(§§pop() / Math.PI);
                              if(_loc14_ || _loc3_)
                              {
                                 §§push(Number(§§pop()));
                              }
                           }
                           var _loc8_:* = §§pop();
                           if(_loc14_ || _loc3_)
                           {
                              §§push(_loc5_);
                              if(_loc14_)
                              {
                                 §§push(0);
                                 if(!(_loc15_ && param1))
                                 {
                                    if(§§pop() < §§pop())
                                    {
                                       if(_loc14_ || param1)
                                       {
                                          §§push(_loc8_);
                                          if(!_loc15_)
                                          {
                                             addr200:
                                             §§push(§§pop() + 180);
                                             if(!(_loc15_ && _loc3_))
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc15_)
                                                {
                                                   _loc8_ = §§pop();
                                                   addr212:
                                                   §§push(_loc8_);
                                                   if(!_loc15_)
                                                   {
                                                      addr215:
                                                      §§push(param1);
                                                      if(_loc14_)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc14_)
                                                         {
                                                            addr222:
                                                            §§push(Number(§§pop()));
                                                            §§push(Number(§§pop()));
                                                         }
                                                         §§goto(addr222);
                                                      }
                                                      var _loc9_:* = §§pop();
                                                      if(!(_loc15_ && param2))
                                                      {
                                                         §§push(§§pop() * Math.PI);
                                                         if(_loc14_ || param1)
                                                         {
                                                            addr241:
                                                            §§push(§§pop() / 180);
                                                            if(!(_loc15_ && param2))
                                                            {
                                                               §§push(Number(§§pop()));
                                                            }
                                                         }
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
                                                         if(!(_loc15_ && this))
                                                         {
                                                            this.getBody().§>!W§(_loc13_);
                                                         }
                                                         return;
                                                      }
                                                      §§goto(addr241);
                                                   }
                                                   §§goto(addr222);
                                                }
                                                §§goto(addr215);
                                             }
                                             §§goto(addr222);
                                          }
                                          §§goto(addr215);
                                       }
                                    }
                                    §§goto(addr212);
                                 }
                                 §§goto(addr200);
                              }
                              §§goto(addr222);
                           }
                           §§goto(addr212);
                        }
                        §§goto(addr134);
                     }
                     addr110:
                     return;
                  }
               }
               §§goto(addr107);
            }
            §§goto(addr111);
         }
         §§goto(addr62);
      }
   }
}
