package §@!"§
{
   import §%8§.§%!S§;
   import §%8§.§89§;
   import §%8§.§@-§;
   import §%8§.§^f§;
   import §'!_§.b2Settings;
   import §0"!§.b2BodyDef;
   import §0"!§.b2FilterData;
   import §0"!§.b2Fixture;
   import §0"!§.b2World;
   import §0N§.§,!A§;
   import §2`§.§;!Q§;
   import §3!J§.Sprite;
   import §@!E§.b2Vec2;
   import §@V§.§#=§;
   import §@V§.§&z§;
   import §@V§.§52§;
   import §[!Z§.§>D§;
   import §`2§.§`""§;
   import flash.geom.Point;
   
   public class §@_§ extends §6"$§
   {
      
      public static const §&P§:String = "normal";
      
      public static const §[<§:uint;
      
      public static const §"!]§:uint;
      
      public static const § !p§:uint;
      
      public static const §48§:uint;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §&P§ = "normal";
            loop0:
            while(true)
            {
               §§push(§§findproperty(§[<§));
               §§push(1);
               if(!(_loc1_ && §@_§))
               {
                  §§push(§§pop() << §§pop());
               }
               §§pop().§[<§ = §§pop();
               while(true)
               {
                  §§push(§§findproperty(§"!]§));
                  §§push(1);
                  if(!_loc1_)
                  {
                     §§push(§§pop() << 2);
                  }
                  §§pop().§"!]§ = §§pop();
                  while(_loc2_ || _loc1_)
                  {
                     §§push(§§findproperty(§ !p§));
                     §§push(1);
                     if(_loc2_ || _loc2_)
                     {
                        §§push(§§pop() << 3);
                     }
                     §§pop().§ !p§ = §§pop();
                     loop3:
                     while(_loc2_ || §@_§)
                     {
                        if(!_loc1_)
                        {
                           while(true)
                           {
                              §§push(§§findproperty(§48§));
                              §§push(1);
                              if(_loc2_ || §@_§)
                              {
                                 §§push(§§pop() << 4);
                              }
                              §§pop().§48§ = §§pop();
                              if(_loc2_)
                              {
                                 break;
                              }
                              continue loop3;
                           }
                           return;
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      private var §@"'§:int;
      
      private var §;!`§:int;
      
      private var §0!@§:b2Vec2;
      
      private var §<"7§:b2Vec2;
      
      private var §&0§:Number;
      
      private var §0!N§:Number;
      
      private var §=s§:Number;
      
      private var §"P§:Boolean;
      
      private var §?!`§:Boolean = false;
      
      private var §2!O§:Number = 1;
      
      private var §1!9§:Boolean = false;
      
      protected var §=K§:§8!T§;
      
      private var §@!5§:§;!Q§;
      
      private var §2c§:Number = 1.0;
      
      private var §>"2§:Boolean = true;
      
      private var §6r§:Boolean = false;
      
      private var §?0§:int = 0;
      
      protected var §8@§:Number = -1.0;
      
      private var §8"5§:Boolean = false;
      
      private var §^w§:Boolean = false;
      
      protected var §@"%§:String = "";
      
      protected var §8W§:int = 1;
      
      public function §@_§(param1:Sprite, param2:§;!Q§, param3:b2World, param4:§@-§, param5:§,!A§, param6:Number)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param1))
         {
            this.§<"7§ = new b2Vec2();
            while(true)
            {
               super(param1,param3,param4,param5);
               loop1:
               for(; !(_loc8_ && param2); while(_loc7_ || param2)
               {
                  param1.scaleY = param6;
                  §§goto(addr261);
               })
               {
                  this.§@!5§ = param2;
                  while(true)
                  {
                     this.§2c§ = param6;
                     addr284:
                     while(true)
                     {
                        this.§;!`§ = §93§.itemType;
                        addr279:
                        while(true)
                        {
                           param1.scaleX = param6;
                           continue loop1;
                        }
                     }
                     loop12:
                     while(_loc7_ || param3)
                     {
                        if(§93§.healthMax <= 0)
                        {
                           this.initializeHealth(Math.round(this.§&!a§(true) * §93§.getItemStrength()));
                           loop13:
                           while(true)
                           {
                              loop14:
                              while(true)
                              {
                                 if(§93§.itemType != §@-§.§4!w§)
                                 {
                                    this.setDamageState(0,null);
                                    loop15:
                                    for(; _loc7_; while(!(_loc8_ && param3))
                                    {
                                       §§push(this);
                                       §§push(param5.angle);
                                       if(!(_loc8_ && param2))
                                       {
                                          §§push(§§pop() * (Math.PI / 180));
                                       }
                                       §§pop().§[!X§(§§pop());
                                       continue loop13;
                                       §§goto(addr47);
                                    })
                                    {
                                       while(true)
                                       {
                                          loop18:
                                          while(true)
                                          {
                                             if(param5.angle != 0)
                                             {
                                                continue loop15;
                                             }
                                             addr95:
                                             loop21:
                                             while(true)
                                             {
                                                this.disableBirdPassThrough = §93§.disableBirdPassThrough;
                                                loop22:
                                                while(_loc7_)
                                                {
                                                   this.update(0,null);
                                                   while(true)
                                                   {
                                                      if(!(_loc8_ && param1))
                                                      {
                                                         if(_loc8_)
                                                         {
                                                            break;
                                                         }
                                                         this.render(0,1,0);
                                                         continue;
                                                      }
                                                      addr165:
                                                      while(_loc7_)
                                                      {
                                                         param1.visible = false;
                                                         while(_loc7_ || param3)
                                                         {
                                                            if(_loc7_ || param3)
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  break;
                                                               }
                                                               continue loop18;
                                                            }
                                                            addr261:
                                                            addr248:
                                                            while(!_loc8_)
                                                            {
                                                               this.§;!L§(§ "8§.x,§ "8§.y);
                                                               break loop22;
                                                            }
                                                            while(true)
                                                            {
                                                               this.§=K§ = this.§0",§();
                                                               break loop15;
                                                            }
                                                         }
                                                         break loop21;
                                                         §§goto(addr279);
                                                      }
                                                      while(true)
                                                      {
                                                         if(!_loc7_)
                                                         {
                                                            break loop14;
                                                         }
                                                         continue loop14;
                                                      }
                                                   }
                                                   continue loop12;
                                                }
                                                while(true)
                                                {
                                                   §<v§ = param5.§<v§;
                                                   §§goto(addr231);
                                                }
                                             }
                                             if(_loc7_ || this)
                                             {
                                                return;
                                             }
                                             §§goto(addr170);
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr243);
                                       §§goto(addr146);
                                    }
                                    addr146:
                                 }
                                 §§goto(addr165);
                              }
                              §§goto(addr284);
                              while(!(_loc8_ && param2))
                              {
                                 §§goto(addr95);
                                 §§goto(addr40);
                              }
                           }
                        }
                        §§goto(addr206);
                     }
                  }
               }
            }
         }
         §§goto(addr158);
      }
      
      public static function §>!z§(param1:int, param2:§89§, param3:String = "") : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            if(param2 == null)
            {
               if(!_loc5_)
               {
                  return;
               }
            }
         }
         §§push(param2.§#0§(param1));
         if(_loc6_)
         {
            §§push(§§pop());
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(_loc6_)
         {
            if(§§pop().length > 0)
            {
               if(_loc6_)
               {
                  §§push(param3);
                  if(_loc6_ || param1)
                  {
                     if(§§pop().length <= 0)
                     {
                        if(_loc6_ || param3)
                        {
                           addr73:
                           §§push(param2.§8",§);
                           if(_loc6_ || §@_§)
                           {
                              addr82:
                              §§push(§§pop());
                           }
                           param3 = §§pop();
                           if(_loc6_ || §@_§)
                           {
                           }
                           §§goto(addr105);
                        }
                     }
                     §>D§.§4W§(_loc4_,param3);
                     addr105:
                     return;
                  }
                  §§goto(addr82);
               }
            }
            §§goto(addr73);
         }
         §§goto(addr82);
      }
      
      public function get health() : Number
      {
         return this.§&0§;
      }
      
      public function set health(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§&0§ = param1;
         }
      }
      
      public function get disableBirdPassThrough() : Boolean
      {
         return this.§"P§;
      }
      
      public function set disableBirdPassThrough(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§"P§ = param1;
         }
      }
      
      public function get §<!;§() : Boolean
      {
         return this.§?!`§;
      }
      
      public function set §<!;§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§?!`§ = param1;
         }
      }
      
      public function get healthMax() : Number
      {
         return this.§0!N§;
      }
      
      public function get itemName() : String
      {
         return §93§.itemName;
      }
      
      public function get §3!G§() : Number
      {
         return this.§2!O§;
      }
      
      public function get §<c§() : §;!Q§
      {
         return this.§@!5§;
      }
      
      public function get x() : Number
      {
         return §]!B§;
      }
      
      public function get y() : Number
      {
         return §9=§;
      }
      
      public function get scale() : Number
      {
         return this.§2c§;
      }
      
      public function get id() : int
      {
         return this.§?0§;
      }
      
      public function get §1"+§() : Boolean
      {
         return this.§=s§ >= 0;
      }
      
      public function get defence() : Number
      {
         return this.§=s§;
      }
      
      public function get §50§() : Boolean
      {
         return this.§>"2§;
      }
      
      public function set §50§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§>"2§ = param1;
         }
      }
      
      public function get §>!'§() : Number
      {
         return this.§8@§;
      }
      
      public function get destroysCollidingObjects() : Boolean
      {
         return false;
      }
      
      public function get §]!Q§() : Boolean
      {
         return this.§8"5§;
      }
      
      public function set §]!Q§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§8"5§ = param1;
         }
      }
      
      public function get §@5§() : Boolean
      {
         return this.§1!9§;
      }
      
      public function set §@5§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            this.§1!9§ = param1;
         }
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function get §'",§() : §8!T§
      {
         return this.§=K§;
      }
      
      public final function §=G§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§6r§)
            {
               throw new Error("Trying to assign LevelObject id twice !!!");
            }
         }
         do
         {
            this.§6r§ = true;
            do
            {
               this.§?0§ = param1;
            }
            while(_loc2_);
            
         }
         while(_loc2_ && _loc2_);
         
      }
      
      protected function initializeHealth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            if(!_loc3_)
            {
               if(§§pop() < 1)
               {
                  loop0:
                  while(true)
                  {
                     §§push(Number(1));
                     addr76:
                     while(true)
                     {
                        param1 = §§pop();
                        addr77:
                        while(true)
                        {
                        }
                     }
                     addr51:
                     loop2:
                     while(true)
                     {
                        if(!(_loc3_ && param1))
                        {
                           while(true)
                           {
                              this.§&0§ = param1;
                              if(!_loc3_)
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    break;
                                 }
                                 break loop2;
                              }
                              continue loop2;
                           }
                           return;
                           addr58:
                        }
                        continue loop0;
                     }
                     §§goto(addr77);
                  }
               }
               while(true)
               {
                  this.§0!N§ = param1;
                  §§goto(addr51);
                  §§goto(addr77);
               }
            }
            §§goto(addr76);
         }
         §§goto(addr58);
      }
      
      protected function §6![§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1 < 0)
            {
               if(_loc2_ || _loc2_)
               {
                  §§push(this);
                  §§push(this.§&0§);
                  if(!(_loc3_ && this))
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§&0§ = §§pop();
               }
            }
         }
      }
      
      protected function §;!L§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:b2BodyDef = this.createBodyDefinition(param1,param2);
         if(!_loc6_)
         {
            §<!@§ = §^d§.CreateBody(_loc3_);
            loop0:
            while(true)
            {
               addr39:
               while(true)
               {
                  §<!@§.SetUserData(this);
                  addr43:
                  while(!_loc6_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §," § = this.§%!Q§();
            if(!(_loc6_ && param1))
            {
               if(true)
               {
                  break;
               }
               §§goto(addr39);
            }
            §§goto(addr43);
         }
         var _loc4_:b2FilterData = this.createFilterData();
         if(!(_loc6_ && _loc3_))
         {
            if(!§93§.isColliding)
            {
               if(_loc5_ || param1)
               {
                  _loc4_.§+!+§ = 0;
                  addr108:
                  while(true)
                  {
                  }
                  addr108:
               }
               §§goto(addr108);
            }
            while(true)
            {
               this.§9!$§(_loc4_);
               if(!_loc6_)
               {
                  break;
               }
               §§goto(addr108);
            }
            return;
         }
         §§goto(addr108);
      }
      
      protected function §%!Q§() : b2Fixture
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Fixture = §<!@§.CreateFixture2(§93§.shape.getB2Shape(this.§2c§),§93§.getItemDensity());
         if(!(_loc2_ && _loc1_))
         {
            _loc1_.§-!e§(§93§.getItemFriction());
            do
            {
               _loc1_.§,!C§(§93§.getItemRestitution());
            }
            while(!(_loc3_ || _loc1_));
            
         }
         return _loc1_;
      }
      
      protected function createFilterData() : b2FilterData
      {
         return new b2FilterData();
      }
      
      protected function §0",§() : §8!T§
      {
         return new §8!T§(this.§<c§,sprite);
      }
      
      public function §9!$§(param1:b2FilterData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(§," §)
            {
               if(_loc2_ || param1)
               {
                  §," §.SetFilterData(param1);
               }
            }
         }
      }
      
      public function §!+§(param1:§@-§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §93§ = param1;
         }
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2BodyDef = new b2BodyDef();
         if(!(_loc4_ && this))
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
         §§goto(addr81);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.dispose();
         }
         loop0:
         while(true)
         {
            this.§=K§.dispose();
            while(true)
            {
               this.§0!@§ = null;
               while(_loc1_)
               {
                  continue loop0;
                  §93§ = null;
                  if(!(_loc2_ && this))
                  {
                     return;
                  }
               }
            }
         }
      }
      
      public function §[!X§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §!!I§().SetAngle(param1);
         }
      }
      
      public function §`p§() : Number
      {
         return §!!I§().GetAngle();
      }
      
      public function §^y§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            §!!I§().SetLinearVelocity(param1);
            loop0:
            while(true)
            {
               §§push(param2);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc4_ || this)
                     {
                        this.§7!l§();
                     }
                     while(!_loc5_)
                     {
                        continue loop1;
                     }
                     continue loop0;
                     addr77:
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      public function §<!j§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§0!@§ = param1;
         }
      }
      
      private function §@;§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§0!@§)
            {
               if(_loc2_ || this)
               {
                  addr61:
                  this.§^y§(this.§0!@§,false);
               }
               do
               {
                  this.§0!@§ = null;
               }
               while(_loc1_);
               
            }
            return;
         }
         §§goto(addr61);
      }
      
      protected function §,!t§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(§<!@§)
            {
               if(_loc1_)
               {
                  addr47:
                  this.§<"7§.SetV(§<!@§.GetLinearVelocity());
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function §=m§() : b2Vec2
      {
         return this.§<"7§;
      }
      
      public function §7!l§(param1:b2Vec2 = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!param1)
            {
               if(!(_loc2_ && this))
               {
                  param1 = §!!I§().GetLinearVelocity();
                  addr33:
                  §§push(param1.x);
                  if(_loc3_)
                  {
                     §§push(0);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(§§pop() == §§pop());
                        if(!_loc2_)
                        {
                           if(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 §§pop();
                                 §§goto(addr112);
                              }
                           }
                        }
                        if(!§§pop())
                        {
                           §!!I§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
                           if(_loc3_)
                           {
                              if(!(_loc3_ || param1))
                              {
                                 §§goto(addr112);
                              }
                              else
                              {
                                 addr96:
                              }
                           }
                        }
                        §§goto(addr112);
                     }
                  }
                  §§goto(addr110);
               }
               §§goto(addr96);
            }
            §§goto(addr33);
         }
         addr112:
         if(!(_loc2_ && this))
         {
            addr110:
            §§push(param1.y == 0);
         }
         §!!I§().SetAngularVelocity(0);
      }
      
      public function §9"6§(param1:b2Vec2 = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            if(!param1)
            {
               addr35:
               param1 = §!!I§().GetLinearVelocity();
            }
            var _loc2_:Number = Math.atan2(-param1.y,param1.x);
            if(_loc3_)
            {
               this.§[!X§(_loc2_);
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function §27§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §!!I§().SetAngularVelocity(param1);
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!_loc4_)
         {
            super.render(param1,param2,param3);
            loop0:
            while(true)
            {
               this.§=K§.update(param1);
               while(true)
               {
                  sprite.x = §]!B§;
                  loop2:
                  for(; _loc5_; if(_loc5_ || param3)
                  {
                     if(§]![§)
                     {
                        if(_loc5_ || param2)
                        {
                           §]![§.x = §]!B§;
                        }
                        loop5:
                        while(true)
                        {
                           §]![§.y = §9=§;
                           loop6:
                           while(_loc5_)
                           {
                              while(true)
                              {
                                 §]![§.rotation = §0!-§;
                                 if(!(_loc5_ || param1))
                                 {
                                    continue loop6;
                                 }
                                 if(!_loc5_)
                                 {
                                    continue loop5;
                                 }
                                 §§goto(addr37);
                              }
                           }
                           continue loop0;
                        }
                     }
                     addr20:
                  },continue,return)
                  {
                     sprite.y = §9=§;
                     loop3:
                     while(true)
                     {
                        sprite.rotation = §0!-§;
                        while(true)
                        {
                           if(!(_loc4_ && this))
                           {
                              continue loop2;
                           }
                           continue loop3;
                           addr37:
                           if(!(_loc4_ && param3))
                           {
                              §§goto(addr20);
                           }
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr51);
      }
      
      override public function update(param1:Number, param2:§`!m§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§@;§();
            loop0:
            while(true)
            {
               super.update(param1,param2);
               do
               {
                  if(this.§8@§ >= 0)
                  {
                     continue loop0;
                  }
                  loop3:
                  while(true)
                  {
                     this.§,!t§();
                     if(!_loc3_)
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                     addr74:
                     while(true)
                     {
                        continue loop3;
                     }
                  }
               }
               while(_loc3_);
               
               return;
            }
         }
         §§goto(addr74);
      }
      
      public function updateOutOfBounds(param1:§`!m§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§^w§ = true;
         }
      }
      
      public function updateBeforeRemoving(param1:§`!m§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!this.§^w§)
            {
               if(!(_loc2_ && _loc3_))
               {
                  addr49:
                  this.addDestructionParticles(param1);
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.health == 0;
      }
      
      public function §]^§() : Boolean
      {
         return this.§;!`§ == §@-§.§9!r§;
      }
      
      public function § "7§() : Boolean
      {
         return this.§;!`§ == §@-§.§4!w§;
      }
      
      public function §<!M§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            §§push(this.itemName);
            loop0:
            while(true)
            {
               §§push(§§pop() == "MISC_EXPLOSIVE_TNT");
               addr92:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc1_)
                           {
                              §§push(true);
                              break;
                           }
                           if(!_loc1_)
                           {
                              continue loop0;
                           }
                        }
                        §§push(false);
                        if(_loc2_)
                        {
                           break;
                        }
                        if(_loc1_ || _loc1_)
                        {
                           return §§pop();
                        }
                     }
                     addr74:
                     return §§pop();
                     addr69:
                  }
                  while(true)
                  {
                     §§pop();
                     continue loop0;
                  }
               }
            }
            addr90:
         }
         while(true)
         {
            §§push(this.itemName);
            if(!(_loc2_ && _loc2_))
            {
               §§push(§§pop() == "POWERUP_BOMB");
               if(!(_loc2_ && _loc2_))
               {
                  if(_loc2_)
                  {
                     §§goto(addr92);
                  }
                  §§goto(addr69);
               }
               §§goto(addr74);
            }
            else
            {
               §§goto(addr90);
            }
         }
      }
      
      public function isDamageAwardingScore() : Boolean
      {
         return false;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function § else§() : Number
      {
         return Number(Math.sqrt(§!!I§().GetLinearVelocity().x * §!!I§().GetLinearVelocity().x + §!!I§().GetLinearVelocity().y * §!!I§().GetLinearVelocity().y));
      }
      
      protected function handleInitialCollision() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            this.§8@§ = 0;
         }
      }
      
      protected function §5z§() : void
      {
      }
      
      protected function §^!l§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            this.§8!U§(§89§.§6K§);
         }
      }
      
      protected function §5M§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§8!U§(§89§.§&7§);
         }
      }
      
      protected function §4!O§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            this.§8!U§(§89§.§!!x§);
         }
      }
      
      public function applyDamage(param1:Number, param2:§`!m§, param3:§@_§, param4:Boolean = true) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         if(_loc8_ || param2)
         {
            §§push(this.§8@§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     this.§5z§();
                     loop2:
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§=s§);
                           loop4:
                           while(!_loc7_)
                           {
                              §§push(0);
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop() < §§pop());
                                 loop6:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop7:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop8:
                                          while(true)
                                          {
                                             §§pop();
                                             loop9:
                                             while(true)
                                             {
                                                §§push(this.§=s§);
                                                loop10:
                                                while(true)
                                                {
                                                   §§push(1000000);
                                                   addr508:
                                                   addr157:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() >= §§pop());
                                                   }
                                                   if(!(_loc8_ || this))
                                                   {
                                                      continue;
                                                   }
                                                   §§push(1);
                                                   if(_loc8_ || param2)
                                                   {
                                                      if(!(_loc7_ && this))
                                                      {
                                                         if(§§pop() < §§pop())
                                                         {
                                                            loop41:
                                                            while(!_loc7_)
                                                            {
                                                               if(!(_loc7_ && param2))
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§&0§ = 0;
                                                                        loop46:
                                                                        while(true)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              if(_loc8_)
                                                                              {
                                                                                 this.§^!l§();
                                                                                 loop40:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc8_ || param2))
                                                                                    {
                                                                                       continue loop46;
                                                                                    }
                                                                                    if(!_loc7_)
                                                                                    {
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          loop39:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this);
                                                                                             §§push(1);
                                                                                             §§push(this.health);
                                                                                             if(_loc8_ || this)
                                                                                             {
                                                                                                §§push(§§pop() / this.healthMax);
                                                                                             }
                                                                                             §§push(§§pop().setDamageState(§§pop() - §§pop(),param2));
                                                                                             if(_loc8_)
                                                                                             {
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            continue loop41;
                                                                                                         }
                                                                                                         addr73:
                                                                                                         if(_loc8_ || this)
                                                                                                         {
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               if(_loc8_)
                                                                                                               {
                                                                                                                  if(!(_loc7_ && this))
                                                                                                                  {
                                                                                                                     this.addDamageParticles(param2,param1);
                                                                                                                     addr95:
                                                                                                                     if(!(_loc7_ && param2))
                                                                                                                     {
                                                                                                                        if(!(_loc7_ && this))
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        addr548:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           this.handleInitialCollision();
                                                                                                                           addr550:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop3;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     loop38:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc7_ && param1)
                                                                                                                        {
                                                                                                                           continue loop40;
                                                                                                                        }
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           if(!(_loc7_ && param2))
                                                                                                                           {
                                                                                                                              continue loop39;
                                                                                                                           }
                                                                                                                           loop28:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(param2)
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_);
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       §§push(param2.damageScoreMultiplier);
                                                                                                                                       if(!_loc7_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          loop30:
                                                                                                                                          while(_loc8_)
                                                                                                                                          {
                                                                                                                                             if(_loc8_ || this)
                                                                                                                                             {
                                                                                                                                                §§push(int(§§pop()));
                                                                                                                                                loop31:
                                                                                                                                                while(_loc8_)
                                                                                                                                                {
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      _loc6_ = §§pop();
                                                                                                                                                      loop32:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc7_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc8_)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  param2.addScore(_loc6_,§52§.§^Y§,this.§&0§ > param1,§!!I§().GetPosition().x,§!!I§().GetPosition().y,§`""§.§?!7§(this.itemName));
                                                                                                                                                                  addr245:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     addr199:
                                                                                                                                                                     addr473:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this);
                                                                                                                                                                        §§push(this.§&0§);
                                                                                                                                                                        if(!_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() - param1);
                                                                                                                                                                        }
                                                                                                                                                                        §§pop().§&0§ = §§pop();
                                                                                                                                                                        break loop41;
                                                                                                                                                                     }
                                                                                                                                                                     if(§§pop() > §§pop())
                                                                                                                                                                     {
                                                                                                                                                                        addr474:
                                                                                                                                                                        this.§4!O§();
                                                                                                                                                                        break loop32;
                                                                                                                                                                     }
                                                                                                                                                                     break loop40;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr223:
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         addr370:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.isDamageAwardingScore());
                                                                                                                                                            if(!(_loc7_ && param1))
                                                                                                                                                            {
                                                                                                                                                               addr298:
                                                                                                                                                               §§push(Boolean(§§pop()));
                                                                                                                                                               while(!(_loc7_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc7_ && this)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop6;
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!(_loc7_ && param2))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(int(Math.min(this.§&0§,int(param1))));
                                                                                                                                                                              if(!(_loc7_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc5_ = §§pop();
                                                                                                                                                                                    addr338:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(int(§§pop()));
                                                                                                                                                                                       break loop31;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 addr337:
                                                                                                                                                                              }
                                                                                                                                                                              break loop31;
                                                                                                                                                                           }
                                                                                                                                                                           addr411:
                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop2;
                                                                                                                                                                           }
                                                                                                                                                                           if(!(_loc8_ || param3))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop9;
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param1);
                                                                                                                                                                              addr406:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(this.§=s§);
                                                                                                                                                                                 addr408:
                                                                                                                                                                                 while(!_loc7_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop() <= §§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr411);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(param1);
                                                                                                                                                                                          break loop30;
                                                                                                                                                                                          addr403:
                                                                                                                                                                                       }
                                                                                                                                                                                       addr371:
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop1;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        continue loop10;
                                                                                                                                                                        addr314:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr199);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     addr512:
                                                                                                                                                                     if(param1 <= 30)
                                                                                                                                                                     {
                                                                                                                                                                        addr488:
                                                                                                                                                                        §§push(param1);
                                                                                                                                                                        if(!(_loc8_ || param2))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop4;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(12);
                                                                                                                                                                        if(!_loc7_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc7_)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() <= §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 addr458:
                                                                                                                                                                                 §§push(param1);
                                                                                                                                                                                 if(_loc8_ || param3)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc8_ || param3))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr512);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr473);
                                                                                                                                                                                    §§push(3);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr488);
                                                                                                                                                                              }
                                                                                                                                                                              addr501:
                                                                                                                                                                              this.§5M§();
                                                                                                                                                                              break loop40;
                                                                                                                                                                              addr503:
                                                                                                                                                                           }
                                                                                                                                                                           continue loop5;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr508);
                                                                                                                                                                     }
                                                                                                                                                                     addr514:
                                                                                                                                                                     this.§^!l§();
                                                                                                                                                                     break loop40;
                                                                                                                                                                     addr516:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr404);
                                                                                                                                                                  §§goto(addr298);
                                                                                                                                                               }
                                                                                                                                                               addr298:
                                                                                                                                                               addr510:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr298);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      if(_loc8_ || param1)
                                                                                                                                                      {
                                                                                                                                                         break loop40;
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr503);
                                                                                                                                                      addr282:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr338);
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc6_ = §§pop();
                                                                                                                                                   continue loop28;
                                                                                                                                                }
                                                                                                                                                addr277:
                                                                                                                                             }
                                                                                                                                             §§goto(addr458);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(this.§=s§);
                                                                                                                                             if(_loc8_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() - §§pop());
                                                                                                                                                if(!(_loc7_ && param3))
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc7_ && param2))
                                                                                                                                                   {
                                                                                                                                                      if(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         param1 = §§pop();
                                                                                                                                                         break loop38;
                                                                                                                                                      }
                                                                                                                                                      addr421:
                                                                                                                                                      addr422:
                                                                                                                                                      addr422:
                                                                                                                                                      §§push(3);
                                                                                                                                                      if(!(_loc7_ && param1))
                                                                                                                                                      {
                                                                                                                                                         if(!_loc7_)
                                                                                                                                                         {
                                                                                                                                                            if(§§pop() > §§pop())
                                                                                                                                                            {
                                                                                                                                                               addr432:
                                                                                                                                                               this.§4!O§();
                                                                                                                                                               if(_loc7_ && param3)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr501);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§push(this.§&0§);
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr512);
                                                                                                                                                         §§goto(addr501);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr496);
                                                                                                                                                   }
                                                                                                                                                   break;
                                                                                                                                                   addr36:
                                                                                                                                                   if(_loc8_ || param3)
                                                                                                                                                   {
                                                                                                                                                      return §§pop();
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                if(!_loc7_)
                                                                                                                                                {
                                                                                                                                                   return §§pop();
                                                                                                                                                }
                                                                                                                                                §§goto(addr445);
                                                                                                                                             }
                                                                                                                                             break;
                                                                                                                                          }
                                                                                                                                          §§goto(addr408);
                                                                                                                                          addr257:
                                                                                                                                       }
                                                                                                                                       §§goto(addr337);
                                                                                                                                    }
                                                                                                                                    §§goto(addr277);
                                                                                                                                    §§goto(addr73);
                                                                                                                                 }
                                                                                                                                 addr249:
                                                                                                                              }
                                                                                                                              §§goto(addr223);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr282);
                                                                                                                        §§goto(addr95);
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(param4);
                                                                                                                        if(_loc8_ || this)
                                                                                                                        {
                                                                                                                           addr369:
                                                                                                                           §§push(Boolean(§§pop()));
                                                                                                                           if(_loc7_ && this)
                                                                                                                           {
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§pop();
                                                                                                                              §§goto(addr370);
                                                                                                                           }
                                                                                                                           addr369:
                                                                                                                        }
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           continue loop8;
                                                                                                                        }
                                                                                                                        §§push(§§pop());
                                                                                                                        if(!(_loc8_ || this))
                                                                                                                        {
                                                                                                                           continue loop7;
                                                                                                                        }
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           §§goto(addr369);
                                                                                                                        }
                                                                                                                        §§goto(addr312);
                                                                                                                     }
                                                                                                                     continue loop9;
                                                                                                                     addr396:
                                                                                                                     addr115:
                                                                                                                  }
                                                                                                                  §§goto(addr516);
                                                                                                               }
                                                                                                               §§goto(addr432);
                                                                                                            }
                                                                                                            §§goto(addr396);
                                                                                                         }
                                                                                                         §§goto(addr249);
                                                                                                      }
                                                                                                      §§goto(addr95);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr369);
                                                                                             }
                                                                                             §§goto(addr298);
                                                                                          }
                                                                                          addr146:
                                                                                          §§push(this.§&0§);
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                §§goto(addr36);
                                                                                             }
                                                                                             §§goto(addr257);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc8_ || param3)
                                                                                             {
                                                                                                §§goto(addr157);
                                                                                             }
                                                                                             §§goto(addr406);
                                                                                          }
                                                                                          §§goto(addr422);
                                                                                          addr150:
                                                                                       }
                                                                                       §§goto(addr512);
                                                                                    }
                                                                                    §§goto(addr245);
                                                                                 }
                                                                                 addr198:
                                                                                 addr445:
                                                                                 return §§pop();
                                                                                 §§push(this.§&0§);
                                                                              }
                                                                              §§goto(addr474);
                                                                           }
                                                                           §§goto(addr314);
                                                                        }
                                                                     }
                                                                     addr191:
                                                                  }
                                                                  §§goto(addr550);
                                                               }
                                                               else
                                                               {
                                                                  §§goto(addr403);
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               if(!(_loc7_ && param3))
                                                               {
                                                                  if(!(_loc7_ && param1))
                                                                  {
                                                                     §§goto(addr150);
                                                                     §§push(this.§&0§);
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr432);
                                                            }
                                                            §§goto(addr514);
                                                         }
                                                         this.§5M§();
                                                         §§goto(addr115);
                                                      }
                                                      §§goto(addr473);
                                                   }
                                                   §§goto(addr422);
                                                }
                                             }
                                          }
                                       }
                                       while(true)
                                       {
                                          §§goto(addr510);
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop0;
                        }
                     }
                  }
                  §§goto(addr548);
               }
            }
         }
         §§goto(addr191);
      }
      
      protected function setDamageState(param1:Number, param2:§`!m§) : Boolean
      {
         return this.§=K§.setDamageState(param1,false);
      }
      
      public function causedDamageToObjects() : void
      {
      }
      
      public function §8!U§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §@_§.§>!z§(param1,§93§.soundResource);
         }
      }
      
      public function §>!@§(param1:String) : Number
      {
         return §93§.getDamageMultiplier(param1) * this.§2!O§;
      }
      
      public function §3$§(param1:String) : Number
      {
         return §93§.getVelocityMultiplier(param1);
      }
      
      public function §;!F§() : String
      {
         return §93§.materialName;
      }
      
      public function §2!c§() : Number
      {
         return §93§.getItemStrength();
      }
      
      public function §&!x§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 30;
         if(!_loc3_)
         {
            §§push(Boolean(§!!I§().IsAwake()));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this is §^"2§);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              loop5:
                              while(_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§pop();
                                       addr172:
                                       while(!(_loc3_ && this))
                                       {
                                          §§push(this.§&0§ == this.§0!N§);
                                          while(_loc2_)
                                          {
                                          }
                                          continue loop0;
                                       }
                                       continue loop3;
                                       loop16:
                                       while(true)
                                       {
                                          if(!(_loc2_ || _loc3_))
                                          {
                                             continue loop6;
                                          }
                                          §§pop();
                                          loop17:
                                          while(!_loc3_)
                                          {
                                             if(_loc3_ && this)
                                             {
                                                break loop16;
                                                addr113:
                                             }
                                             §§push(Math.abs(§!!I§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                             loop18:
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   continue loop16;
                                                }
                                                addr61:
                                                if(_loc2_ || _loc2_)
                                                {
                                                   loop19:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      if(_loc2_ || _loc3_)
                                                      {
                                                         §§goto(addr77);
                                                      }
                                                      addr124:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            continue loop16;
                                                         }
                                                         continue loop19;
                                                      }
                                                   }
                                                   while(!(_loc3_ && _loc2_))
                                                   {
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            §§goto(addr124);
                                                         }
                                                         addr122:
                                                      }
                                                      addr77:
                                                      if(!(_loc2_ || _loc3_))
                                                      {
                                                         break loop19;
                                                      }
                                                      if(!§§pop())
                                                      {
                                                         loop20:
                                                         while(!_loc3_)
                                                         {
                                                            continue loop17;
                                                            §§pop();
                                                            if(_loc3_)
                                                            {
                                                               continue loop17;
                                                            }
                                                            §§goto(addr100);
                                                            while(true)
                                                            {
                                                               §§push(Math.abs(§!!I§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * _loc1_);
                                                               if(!(_loc3_ && _loc1_))
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(_loc2_)
                                                                     {
                                                                        §§goto(addr43);
                                                                     }
                                                                     break loop18;
                                                                  }
                                                                  continue loop18;
                                                               }
                                                               continue loop20;
                                                            }
                                                         }
                                                         continue loop2;
                                                      }
                                                      §§goto(addr43);
                                                   }
                                                   continue loop5;
                                                   addr153:
                                                }
                                                while(true)
                                                {
                                                   §§pop();
                                                   break loop17;
                                                   §§goto(addr61);
                                                }
                                             }
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   continue loop4;
                                                }
                                                §§goto(addr149);
                                             }
                                             continue loop4;
                                          }
                                          while(true)
                                          {
                                             §§goto(addr113);
                                          }
                                       }
                                       §§goto(addr172);
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr153);
                                 }
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
                  addr43:
                  return §§pop();
               }
            }
         }
         §§goto(addr100);
      }
      
      public function §!'§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(!§!!I§().IsAwake())
            {
               if(!_loc2_)
               {
                  §§push(true);
                  if(_loc1_ || this)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr53:
                  §§push(this.isMoving());
                  if(!_loc2_)
                  {
                     return !§§pop();
                  }
               }
               return §§pop();
            }
         }
         §§goto(addr53);
      }
      
      protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 10;
         if(_loc2_ || this)
         {
            §§push(Math.abs(§!!I§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * _loc1_);
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
                        addr128:
                        while(true)
                        {
                           §§push(Math.abs(§!!I§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * _loc1_);
                        }
                     }
                     addr127:
                  }
                  while(true)
                  {
                     loop5:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc3_)
                        {
                           continue loop1;
                        }
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr103:
                              do
                              {
                                 §§push(Math.abs(§!!I§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * _loc1_);
                              }
                              while(_loc2_);
                              
                              continue loop5;
                           }
                           addr102:
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc2_)
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    while(true)
                                    {
                                       §§push(false);
                                       continue loop5;
                                    }
                                    addr73:
                                 }
                                 else
                                 {
                                    §§goto(addr128);
                                 }
                              }
                              else
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    addr26:
                                    §§push(true);
                                    if(!_loc2_)
                                    {
                                       continue loop5;
                                    }
                                    if(_loc2_)
                                    {
                                       break;
                                    }
                                    §§goto(addr102);
                                 }
                                 §§goto(addr103);
                              }
                           }
                           §§goto(addr26);
                        }
                        if(!_loc3_)
                        {
                           if(!_loc3_)
                           {
                              return §§pop();
                           }
                           continue loop0;
                        }
                        §§goto(addr127);
                     }
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr73);
      }
      
      public function §4B§(param1:Number = 3) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§2!O§ = param1;
         }
      }
      
      public function §&!a§(param1:Boolean) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         if(!(_loc3_ && param1))
         {
            if(§93§.getItemBodyType() == §^f§.§7!C§)
            {
               if(!_loc3_)
               {
                  §§push(this.§=K§.width);
                  loop0:
                  while(true)
                  {
                     §§push(this.§=K§.height);
                     if(!(_loc3_ && _loc3_))
                     {
                        §§push(§§pop() * §§pop());
                        while(true)
                        {
                           §§push(§#=§.§^!2§);
                           addr186:
                           while(true)
                           {
                              §§push(§#=§.§^!2§);
                              addr188:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                              }
                           }
                        }
                        addr184:
                     }
                     loop4:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        loop5:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop6:
                           while(true)
                           {
                              _loc2_ = §§pop();
                              addr192:
                              loop20:
                              while(true)
                              {
                                 addr28:
                                 loop19:
                                 while(true)
                                 {
                                    §§push(_loc2_);
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr37:
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          if(_loc4_ || this)
                                          {
                                             if(_loc4_)
                                             {
                                                addr53:
                                                if(!(_loc3_ && _loc2_))
                                                {
                                                   if(_loc4_)
                                                   {
                                                      return §§pop();
                                                   }
                                                   continue loop0;
                                                }
                                                loop8:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   addr152:
                                                   loop9:
                                                   while(true)
                                                   {
                                                      if(param1)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(_loc2_);
                                                            addr129:
                                                            addr115:
                                                            while(true)
                                                            {
                                                               §§push(this.§-",§());
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     loop13:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        addr135:
                                                                        while(true)
                                                                        {
                                                                           _loc2_ = §§pop();
                                                                           addr136:
                                                                           while(true)
                                                                           {
                                                                              if(_loc3_)
                                                                              {
                                                                                 continue loop20;
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc2_);
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    if(!_loc4_)
                                                                                    {
                                                                                       continue loop5;
                                                                                    }
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§push(this.§2c§);
                                                                                       if(_loc4_)
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             continue loop4;
                                                                                          }
                                                                                          §§push(this.§2c§);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr188);
                                                                                          }
                                                                                       }
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          continue loop12;
                                                                                       }
                                                                                       §§push(§§pop() / §§pop());
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             addr99:
                                                                                             if(!(_loc3_ && _loc2_))
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                break loop19;
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          continue loop13;
                                                                                          §§goto(addr37);
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             continue loop8;
                                                                                          }
                                                                                          continue loop6;
                                                                                          §§goto(addr99);
                                                                                       }
                                                                                       addr97:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr184);
                                                                                    }
                                                                                    §§goto(addr188);
                                                                                 }
                                                                                 §§goto(addr97);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr186);
                                                               }
                                                            }
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  continue loop19;
                                                               }
                                                               continue loop9;
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr65);
                                                   }
                                                }
                                             }
                                             §§goto(addr129);
                                          }
                                          §§goto(addr135);
                                       }
                                       §§goto(addr97);
                                    }
                                    break;
                                 }
                                 while(true)
                                 {
                                    _loc2_ = §§pop();
                                    if(!(_loc3_ && param1))
                                    {
                                       §§goto(addr115);
                                    }
                                    §§goto(addr136);
                                    §§goto(addr28);
                                 }
                                 §§goto(addr152);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr192);
            }
            else
            {
               §§push(§!!I§().GetMass() / §," §.GetDensity());
            }
            §§goto(addr148);
         }
         §§goto(addr192);
      }
      
      public function §-",§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = Number(1);
         if(!(_loc3_ && _loc2_))
         {
            §§push(_loc1_);
            if(_loc2_ || _loc3_)
            {
               §§push(_loc1_);
               if(_loc2_ || _loc1_)
               {
                  §§push(2);
                  if(_loc2_ || this)
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc3_)
                     {
                        §§push(§§pop() * Math.min(10,this.§=K§.§@!l§ - 1));
                        if(_loc2_)
                        {
                           addr73:
                           §§push(§§pop() / 10);
                        }
                        §§push(§§pop() - §§pop());
                        if(!(_loc3_ && _loc1_))
                        {
                           addr83:
                           §§push(Number(§§pop()));
                           if(!(_loc3_ && _loc3_))
                           {
                              _loc1_ = §§pop();
                              addr102:
                              return _loc1_;
                           }
                        }
                     }
                  }
               }
               §§goto(addr73);
            }
            §§goto(addr83);
         }
         §§goto(addr102);
      }
      
      public function §-§(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = Number(§!!I§().GetLinearVelocity().x);
         var _loc3_:* = Number(§!!I§().GetLinearVelocity().y);
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         §§push(1);
         §§push(param1);
         if(_loc7_ || param1)
         {
            §§push(§§pop() / _loc4_);
         }
         §§push(§§pop() + §§pop());
         if(!(_loc6_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc7_ || _loc3_)
         {
            §§push(_loc2_);
            while(true)
            {
               §§push(_loc5_);
               addr152:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  addr153:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     addr154:
                     while(true)
                     {
                        _loc2_ = §§pop();
                     }
                  }
               }
            }
            addr151:
         }
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc6_ && this))
            {
               if(!_loc6_)
               {
                  §§push(_loc5_);
                  if(!(_loc6_ && _loc3_))
                  {
                     §§push(§§pop() * §§pop());
                     if(_loc7_)
                     {
                        addr128:
                        if(_loc7_)
                        {
                           addr131:
                           §§push(Number(§§pop()));
                           if(_loc7_ || _loc2_)
                           {
                              _loc3_ = §§pop();
                              do
                              {
                                 §!!I§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
                              }
                              while(!(_loc7_ || param1));
                              
                              if(_loc7_ || _loc3_)
                              {
                                 break;
                              }
                              continue;
                           }
                        }
                        else
                        {
                           §§goto(addr151);
                        }
                        §§goto(addr153);
                     }
                     §§goto(addr131);
                  }
                  §§goto(addr152);
               }
               §§goto(addr154);
            }
            §§goto(addr128);
         }
      }
      
      protected function addTrail(param1:§`!m§) : Boolean
      {
         return this.isLeavingTrail;
      }
      
      public function get isLeavingTrail() : Boolean
      {
         return false;
      }
      
      public function set isLeavingTrail(param1:Boolean) : void
      {
      }
      
      protected function addDestructionParticles(param1:§`!m§) : void
      {
      }
      
      public function addDamageParticles(param1:§`!m§, param2:int) : void
      {
      }
      
      override protected function updateGravityFilter() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = §>N§;
         if(_loc2_ || _loc1_)
         {
            §§push(GravityFilterCategory.FORCE_OBJECT);
            if(!(_loc3_ && _loc1_))
            {
               if(§§pop() === _loc1_)
               {
                  if(_loc2_ || this)
                  {
                     addr135:
                     §§push(0);
                     if(!(_loc3_ && _loc3_))
                     {
                        addr195:
                        loop4:
                        switch(§§pop())
                        {
                           case 0:
                              §<!@§.SetLinearDamping(§&z§.§`6§);
                              loop2:
                              while(true)
                              {
                                 §<!@§.SetAngularDamping(§&z§.§6E§);
                                 addr87:
                                 while(!_loc2_)
                                 {
                                    continue loop2;
                                 }
                                 §<!@§.SetGravityScale(0);
                                 if(_loc2_ || this)
                                 {
                                    break loop4;
                                 }
                                 break loop4;
                              }
                              break;
                           case 1:
                              §<!@§.SetLinearDamping(§&z§.§#!5§);
                              loop3:
                              while(true)
                              {
                                 §<!@§.SetAngularDamping(§&z§.§2&§);
                                 if(_loc2_)
                                 {
                                    while(true)
                                    {
                                       §<!@§.SetGravityScale(0);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          if(!(_loc2_ || _loc2_))
                                          {
                                             continue loop3;
                                          }
                                          if(_loc2_)
                                          {
                                             break loop4;
                                          }
                                          §§goto(addr87);
                                       }
                                       break loop4;
                                    }
                                    break loop4;
                                    addr33:
                                 }
                                 break loop4;
                              }
                              break;
                           case 2:
                              break;
                           default:
                              super.updateGravityFilter();
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(true)
                                 {
                                    break;
                                 }
                                 §§goto(addr33);
                              }
                        }
                        return;
                        addr143:
                     }
                  }
                  else
                  {
                     addr162:
                     §§push(1);
                     if(_loc3_ && _loc3_)
                     {
                     }
                  }
                  §§goto(addr195);
               }
               else
               {
                  §§push(GravityFilterCategory.YODA_FORCE_OBJECT);
                  if(_loc2_ || _loc3_)
                  {
                     if(§§pop() === _loc1_)
                     {
                        if(_loc2_ || this)
                        {
                           §§goto(addr162);
                        }
                        else
                        {
                           addr177:
                           §§push(2);
                           if(_loc3_)
                           {
                           }
                           §§goto(addr195);
                        }
                     }
                     else
                     {
                        §§push(GravityFilterCategory.LEIA_FORCE_OBJECT);
                        if(_loc2_)
                        {
                           addr175:
                           if(§§pop() === _loc1_)
                           {
                              §§goto(addr177);
                           }
                           else
                           {
                              §§goto(addr195);
                              §§push(3);
                           }
                           §§goto(addr195);
                        }
                     }
                     §§goto(addr190);
                  }
                  §§goto(addr175);
               }
            }
            §§goto(addr143);
         }
         §§goto(addr135);
      }
      
      public function §?"&§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2Vec2 = §!!I§().GetPosition();
         §§push(_loc4_);
         §§push(_loc4_.x);
         if(!(_loc6_ && param3))
         {
            §§push(param2.x * param1);
            if(!_loc6_)
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
            §!!I§().SetPosition(_loc4_);
         }
         while(!_loc5_);
         
      }
      
      public function §^!3§(param1:String, param2:String, param3:§`!m§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param1;
         if(!_loc6_)
         {
            if("removeGravityFilterCategory" === _loc4_)
            {
               addr48:
               §§push(0);
               if(_loc6_ && param3)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  §<v§ = -1;
                  if(_loc5_ || param1)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr48);
      }
   }
}
