package §7P§
{
   import §!!U§.Sprite;
   import §+#$§.b2BodyDef;
   import §+#$§.b2FilterData;
   import §+#$§.b2Fixture;
   import §+#$§.b2World;
   import §2"Y§.§"t§;
   import §2"Y§.§&!x§;
   import §2"Y§.§'§;
   import §2"Y§.§?#Q§;
   import §5"i§.b2Settings;
   import §7!F§.§>"G§;
   import §<"B§.§94§;
   import §="2§.§?!r§;
   import §[R§.b2Vec2;
   import §^#>§.§#_§;
   import §^#>§.§&'§;
   import §^#>§.§0"x§;
   import §`!r§.§ U§;
   import flash.geom.Point;
   
   public class §&#=§ extends §#m§
   {
      
      public static const §'%§:String = "normal";
      
      public static const §7!6§:uint;
      
      public static const §!z§:uint;
      
      public static const §3a§:uint;
      
      public static const §[!>§:uint;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §'%§ = "normal";
            loop0:
            while(true)
            {
               §§push(§§findproperty(§7!6§));
               §§push(1);
               if(!(_loc1_ && _loc1_))
               {
                  §§push(§§pop() << §§pop());
               }
               §§pop().§7!6§ = §§pop();
               do
               {
                  §§push(§§findproperty(§!z§));
                  §§push(1);
                  if(_loc2_)
                  {
                     §§push(§§pop() << 2);
                  }
                  §§pop().§!z§ = §§pop();
                  continue loop0;
               }
               while(!(_loc2_ || §&#=§));
               
            }
         }
      }
      
      private var §`f§:int;
      
      private var §[!-§:int;
      
      private var §&!V§:b2Vec2;
      
      private var §7!j§:b2Vec2;
      
      private var §@"i§:Number;
      
      private var § B§:Number;
      
      private var §4O§:Number;
      
      private var §<",§:Number = 1;
      
      private var §9%§:Boolean = false;
      
      protected var §2N§:§,D§;
      
      private var §]!`§:§>"G§;
      
      private var §8"2§:Number = 1.0;
      
      private var §0K§:Boolean = true;
      
      private var §-"w§:Boolean = false;
      
      private var §6##§:int = 0;
      
      protected var § d§:Number = -1.0;
      
      private var §<Q§:Boolean = false;
      
      private var §2#%§:Boolean = false;
      
      protected var §@t§:String = "";
      
      protected var §2"7§:int = 1;
      
      public function §&#=§(param1:Sprite, param2:§>"G§, param3:b2World, param4:§"t§, param5:§94§, param6:Number)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!_loc8_)
         {
            this.§7!j§ = new b2Vec2();
            loop0:
            while(true)
            {
               super(param1,param3,param4,param5);
               loop1:
               while(true)
               {
                  this.§]!`§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§8"2§ = param6;
                     loop3:
                     while(true)
                     {
                        this.§[!-§ = §;B§.itemType;
                        addr253:
                        while(true)
                        {
                           param1.scaleX = param6;
                           addr247:
                           while(true)
                           {
                              param1.scaleY = param6;
                              continue loop1;
                           }
                        }
                        addr185:
                        if(!(_loc7_ || param1))
                        {
                           continue;
                        }
                        if(§;B§.healthMax > 0)
                        {
                           loop24:
                           while(true)
                           {
                              this.initializeHealth(§;B§.healthMax);
                              loop25:
                              while(_loc7_)
                              {
                                 loop14:
                                 while(true)
                                 {
                                    if(§;B§.itemType != §"t§.§1"A§)
                                    {
                                       this.setDamageState(0,null);
                                       loop15:
                                       while(!_loc8_)
                                       {
                                          while(true)
                                          {
                                             loop18:
                                             while(true)
                                             {
                                                if(param5.angle != 0)
                                                {
                                                   loop19:
                                                   for(; !_loc8_; if(!(_loc7_ || this))
                                                   {
                                                      continue;
                                                   },if(!_loc7_)
                                                   {
                                                      continue loop15;
                                                   },addr78:,if(_loc7_ || this)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            this.render(0,1,0);
                                                            for(; _loc7_; §§pop().§5!s§(§;B§.shape),if(_loc8_ && param3)
                                                            {
                                                               continue;
                                                            },if(!(_loc8_ && param2))
                                                            {
                                                               return;
                                                            },addr129:,while(true)
                                                            {
                                                               param1.visible = false;
                                                               addr142:
                                                               addr223:
                                                               while(true)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     addr144:
                                                                     if(_loc8_ && param3)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop18;
                                                                  }
                                                                  continue loop24;
                                                                  §§goto(addr78);
                                                               }
                                                               while(!(_loc8_ && param2))
                                                               {
                                                                  §§goto(addr212);
                                                                  §§push(this.§2N§);
                                                                  §§goto(addr144);
                                                               }
                                                               continue loop1;
                                                            })
                                                            {
                                                               if(!_loc7_)
                                                               {
                                                                  continue loop25;
                                                               }
                                                               addr61:
                                                               §§push(this.§2N§);
                                                               if(_loc7_ || param1)
                                                               {
                                                                  continue;
                                                               }
                                                               addr212:
                                                               while(true)
                                                               {
                                                                  §§pop().§<!X§(§;B§.shape is §?#Q§);
                                                                  §§goto(addr217);
                                                                  §§goto(addr61);
                                                               }
                                                            }
                                                            §§goto(addr67);
                                                         }
                                                         §§goto(addr206);
                                                      }
                                                      §§goto(addr183);
                                                   },§§goto(addr142))
                                                   {
                                                      §§push(this);
                                                      §§push(param5.angle);
                                                      if(_loc7_)
                                                      {
                                                         §§push(§§pop() * (Math.PI / 180));
                                                      }
                                                      §§pop().§6#<§(§§pop());
                                                      loop20:
                                                      while(_loc7_)
                                                      {
                                                         if(_loc7_)
                                                         {
                                                            while(true)
                                                            {
                                                               this.update(0,null);
                                                               addr67:
                                                               while(_loc7_)
                                                               {
                                                                  continue loop19;
                                                               }
                                                               continue loop20;
                                                            }
                                                            addr62:
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               this.createPhysicsBody(§1!!§.x,§1!!§.y);
                                                               addr206:
                                                               while(!_loc8_)
                                                               {
                                                                  §=G§ = param5.§=G§;
                                                                  loop11:
                                                                  while(true)
                                                                  {
                                                                     this.§4O§ = §;B§.getItemDefence();
                                                                     addr183:
                                                                     while(true)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           continue loop11;
                                                                        }
                                                                        §§goto(addr185);
                                                                     }
                                                                     continue loop3;
                                                                  }
                                                               }
                                                               §§goto(addr253);
                                                            }
                                                            addr217:
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         continue loop14;
                                                      }
                                                   }
                                                   continue loop0;
                                                }
                                                §§goto(addr62);
                                             }
                                          }
                                       }
                                       §§goto(addr247);
                                    }
                                    §§goto(addr129);
                                 }
                              }
                              continue loop2;
                           }
                        }
                        this.initializeHealth(Math.round(this.§0"X§(true) * §;B§.getItemStrength()));
                        §§goto(addr165);
                     }
                  }
               }
            }
         }
         §§goto(addr122);
      }
      
      public static function §4!#§(param1:int, param2:§'#2§, param3:String = "") : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || §&#=§)
         {
            if(param2 == null)
            {
               if(!(_loc5_ && param3))
               {
                  return;
               }
            }
         }
         §§push(param2.§[M§(param1));
         if(_loc6_ || param1)
         {
            §§push(§§pop());
         }
         var _loc4_:*;
         §§push(_loc4_ = §§pop());
         if(!_loc5_)
         {
            if(§§pop().length > 0)
            {
               if(_loc6_ || §&#=§)
               {
                  §§push(param3);
                  if(_loc6_)
                  {
                     if(§§pop().length <= 0)
                     {
                        if(!_loc5_)
                        {
                           addr78:
                           §§push(param2.§8#a§);
                           if(_loc5_)
                           {
                           }
                           §§goto(addr83);
                        }
                     }
                     §?!r§.§]!H§(_loc4_,param3);
                  }
                  §§goto(addr83);
               }
               §§goto(addr78);
            }
            §§goto(addr83);
         }
         addr83:
         param3 = §§pop();
         if(_loc5_ && param3)
         {
         }
      }
      
      public function get health() : Number
      {
         return this.§@"i§;
      }
      
      public function set health(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§@"i§ = param1;
         }
      }
      
      public function get healthMax() : Number
      {
         return this.§ B§;
      }
      
      public function get itemName() : String
      {
         return §;B§.itemName;
      }
      
      public function get §<z§() : Number
      {
         return this.§<",§;
      }
      
      public function get animation() : §>"G§
      {
         return this.§]!`§;
      }
      
      public function get x() : Number
      {
         return §8!+§;
      }
      
      public function get y() : Number
      {
         return §=!Z§;
      }
      
      public function get scale() : Number
      {
         return this.§8"2§;
      }
      
      public function get id() : int
      {
         return this.§6##§;
      }
      
      public function get §=i§() : Boolean
      {
         return this.§4O§ >= 0;
      }
      
      public function get defence() : Number
      {
         return this.§4O§;
      }
      
      public function get §3#$§() : Boolean
      {
         return this.§0K§;
      }
      
      public function set §3#$§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§0K§ = param1;
         }
      }
      
      public function get timeSinceCollisionMilliSeconds() : Number
      {
         return this.§ d§;
      }
      
      public function get destroysCollidingObjects() : Boolean
      {
         return false;
      }
      
      public function get §,"W§() : Boolean
      {
         return this.§<Q§;
      }
      
      public function set §,"W§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§<Q§ = param1;
         }
      }
      
      public function get §=!s§() : Boolean
      {
         return this.§9%§;
      }
      
      public function set §=!s§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§9%§ = param1;
         }
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function get §4d§() : §,D§
      {
         return this.§2N§;
      }
      
      public final function §3#A§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§-"w§)
            {
               throw new Error("Trying to assign LevelObject id twice !!!");
            }
            if(_loc2_)
            {
               this.§-"w§ = true;
            }
            do
            {
               this.§6##§ = param1;
            }
            while(_loc3_);
            
         }
      }
      
      protected function initializeHealth(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §§push(param1);
            if(_loc3_)
            {
               if(§§pop() < 1)
               {
                  if(!_loc2_)
                  {
                     addr67:
                     param1 = 1;
                  }
                  while(true)
                  {
                  }
                  addr68:
               }
               loop1:
               while(true)
               {
                  this.§ B§ = param1;
                  do
                  {
                     if(_loc3_)
                     {
                        continue;
                     }
                     continue loop1;
                  }
                  while(this.§@"i§ = param1, !_loc3_);
                  
                  §§goto(addr40);
               }
            }
            §§goto(addr67);
         }
         addr40:
      }
      
      protected function §?!x§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1 < 0)
            {
               if(_loc2_ || _loc3_)
               {
                  §§push(this);
                  §§push(this.§@"i§);
                  if(_loc2_ || this)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§@"i§ = §§pop();
               }
            }
         }
      }
      
      protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc3_:b2BodyDef = this.createBodyDefinition(param1,param2);
         if(_loc5_)
         {
            §04§ = mWorld.CreateBody(_loc3_);
         }
         while(true)
         {
            while(true)
            {
               §04§.SetUserData(this);
               do
               {
                  §^!L§ = this.createFixture();
               }
               while(_loc6_);
               
               if(_loc6_ && param2)
               {
                  break;
               }
               if(false)
               {
                  continue;
               }
               var _loc4_:b2FilterData = this.createFilterData();
               if(_loc5_)
               {
                  if(!§;B§.isColliding)
                  {
                     if(_loc5_)
                     {
                        addr100:
                        _loc4_.§8"A§ = 0;
                     }
                     while(true)
                     {
                        §§goto(addr73);
                     }
                  }
                  addr73:
                  while(true)
                  {
                     this.§#"'§(_loc4_);
                     if(_loc5_ || param2)
                     {
                        break;
                     }
                     continue loop3;
                  }
                  return;
               }
               §§goto(addr100);
            }
         }
      }
      
      protected function createFixture() : b2Fixture
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Fixture = §04§.CreateFixture2(§;B§.shape.getB2Shape(),§;B§.getItemDensity());
         if(!_loc2_)
         {
            _loc1_.§"Y§(§;B§.getItemFriction());
            do
            {
               _loc1_.§5q§(§;B§.getItemRestitution());
            }
            while(!(_loc3_ || _loc2_));
            
         }
         return _loc1_;
      }
      
      protected function createFilterData() : b2FilterData
      {
         return new b2FilterData();
      }
      
      protected function initObjectRenderer() : §,D§
      {
         return new §,D§(this.animation,sprite);
      }
      
      public function §#"'§(param1:b2FilterData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            if(§^!L§)
            {
               if(_loc2_ || this)
               {
                  addr52:
                  §^!L§.SetFilterData(param1);
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function §?#V§(param1:§"t§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §;B§ = param1;
         }
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
               addr127:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr85);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.dispose();
            while(true)
            {
               this.§2N§.dispose();
               loop1:
               while(_loc2_)
               {
                  this.§&!V§ = null;
                  while(true)
                  {
                     §;B§ = null;
                     if(!(_loc1_ && this))
                     {
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                  }
                  return;
               }
            }
         }
         §§goto(addr52);
      }
      
      public function §6#<§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §3!t§().SetAngle(param1);
         }
      }
      
      public function §"#,§() : Number
      {
         return §3!t§().GetAngle();
      }
      
      public function § &§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            §3!t§().SetLinearVelocity(param1);
            loop0:
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
                     this.§4"L§();
                     addr78:
                     while(_loc5_)
                     {
                        continue loop1;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      public function §3l§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§&!V§ = param1;
         }
      }
      
      private function §-"@§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§&!V§)
            {
               loop0:
               while(true)
               {
                  this.§ &§(this.§&!V§,false);
                  addr61:
                  while(true)
                  {
                     this.§&!V§ = null;
                     if(!_loc1_)
                     {
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr30);
               }
            }
            addr30:
            return;
         }
         §§goto(addr61);
      }
      
      private function §5"4§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(§04§)
            {
               if(_loc1_ || this)
               {
                  addr47:
                  this.§7!j§.SetV(§04§.GetLinearVelocity());
               }
            }
            return;
         }
         §§goto(addr47);
      }
      
      public function §;!x§() : b2Vec2
      {
         return this.§7!j§;
      }
      
      public function §4"L§(param1:b2Vec2 = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            if(!param1)
            {
               if(_loc3_ || this)
               {
                  param1 = §3!t§().GetLinearVelocity();
                  addr38:
                  §§push(param1.x);
                  if(!(_loc2_ && param1))
                  {
                     §§push(0);
                     if(_loc3_ || _loc3_)
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc3_)
                        {
                           if(§§pop())
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 §§pop();
                                 if(_loc3_ || param1)
                                 {
                                    addr109:
                                    if(param1.y != 0)
                                    {
                                       §3!t§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
                                       if(!_loc2_)
                                       {
                                          addr104:
                                       }
                                       else
                                       {
                                          addr131:
                                       }
                                       return;
                                    }
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr127:
                                       §3!t§().SetAngularVelocity(0);
                                    }
                                    §§goto(addr131);
                                    addr85:
                                 }
                                 §§goto(addr127);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr109);
               }
               §§goto(addr104);
            }
            §§goto(addr38);
         }
         §§goto(addr85);
      }
      
      public function §;#B§(param1:b2Vec2 = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(!param1)
            {
               param1 = §3!t§().GetLinearVelocity();
               addr20:
            }
            var _loc2_:Number = Math.atan2(-param1.y,param1.x);
            if(!(_loc4_ && param1))
            {
               this.§6#<§(_loc2_);
            }
            return;
         }
         §§goto(addr20);
      }
      
      public function §;#!§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §3!t§().SetAngularVelocity(param1);
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            super.render(param1,param2,param3);
            loop0:
            while(true)
            {
               this.§2N§.update(param1);
               while(true)
               {
                  sprite.x = §8!+§;
                  addr66:
                  while(_loc4_)
                  {
                     if(!_loc5_)
                     {
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(true)
         {
            sprite.y = §=!Z§;
            do
            {
               sprite.rotation = §<#W§;
            }
            while(_loc5_ && this);
            
            if(_loc4_ || param1)
            {
               break;
            }
            §§goto(addr66);
         }
      }
      
      override public function update(param1:Number, param2:§;$§) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§-"@§();
            while(true)
            {
               super.update(param1,param2);
               loop1:
               while(_loc4_ || _loc3_)
               {
                  while(true)
                  {
                     if(this.§ d§ >= 0)
                     {
                        while(_loc4_)
                        {
                           §§push(this);
                           §§push(this.§ d§);
                           if(_loc4_)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§ d§ = §§pop();
                           while(true)
                           {
                           }
                           if(_loc3_ && this)
                           {
                              continue;
                           }
                           return;
                           addr46:
                        }
                        continue loop1;
                     }
                     while(true)
                     {
                        this.§5"4§();
                        if(_loc3_)
                        {
                           continue;
                        }
                        §§goto(addr29);
                     }
                     §§goto(addr46);
                  }
               }
            }
         }
         §§goto(addr85);
      }
      
      public function updateOutOfBounds(param1:§;$§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§2#%§ = true;
         }
      }
      
      public function updateBeforeRemoving(param1:§;$§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!this.§2#%§)
            {
               if(_loc3_ || _loc2_)
               {
                  this.addDestructionParticles(param1);
               }
            }
         }
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.health == 0;
      }
      
      public function §"!@§() : Boolean
      {
         return this.§[!-§ == §"t§.§5k§;
      }
      
      public function §[#L§() : Boolean
      {
         return this.§[!-§ == §"t§.§1"A§;
      }
      
      public function §2g§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.itemName);
            loop0:
            while(true)
            {
               §§push(§§pop() == "MISC_EXPLOSIVE_TNT");
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              if(_loc2_ && this)
                              {
                                 continue loop0;
                              }
                              while(true)
                              {
                                 §§push(true);
                              }
                           }
                           else
                           {
                              addr24:
                              §§push(false);
                              if(!(_loc2_ && this))
                              {
                                 break;
                              }
                           }
                           while(true)
                           {
                              if(_loc2_ && this)
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop0;
                                 }
                                 addr99:
                              }
                              if(!_loc2_)
                              {
                                 break loop1;
                              }
                              continue loop1;
                           }
                           addr72:
                        }
                        §§goto(addr24);
                     }
                     return §§pop();
                     addr60:
                  }
                  §§goto(addr99);
               }
               return §§pop();
            }
         }
         §§goto(addr71);
      }
      
      public function isDamageAwardingScore() : Boolean
      {
         return false;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §>o§() : Number
      {
         return Number(Math.sqrt(§3!t§().GetLinearVelocity().x * §3!t§().GetLinearVelocity().x + §3!t§().GetLinearVelocity().y * §3!t§().GetLinearVelocity().y));
      }
      
      protected function handleInitialCollision() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§ d§ = 0;
         }
      }
      
      protected function handleAnotherCollision() : void
      {
      }
      
      protected function playDestroyedSound() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§[v§(§'#2§.§&x§);
         }
      }
      
      protected function playDamagedSound() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            this.§[v§(§'#2§.§@N§);
         }
      }
      
      protected function playCollisionSound() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§[v§(§'#2§.§#!5§);
         }
      }
      
      public function applyDamage(param1:Number, param2:§;$§, param3:§&#=§, param4:Boolean = true) : Number
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         if(!_loc8_)
         {
            §§push(this.§ d§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     this.handleAnotherCollision();
                     loop2:
                     while(true)
                     {
                        loop3:
                        while(true)
                        {
                           §§push(this.§4O§);
                           loop4:
                           while(true)
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
                                          while(true)
                                          {
                                             §§pop();
                                             addr551:
                                             while(true)
                                             {
                                                §§push(this.§4O§);
                                                addr529:
                                                while(true)
                                                {
                                                   §§push(1000000);
                                                   addr530:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() >= §§pop());
                                                      addr531:
                                                      while(!_loc8_)
                                                      {
                                                      }
                                                      continue loop6;
                                                   }
                                                }
                                             }
                                          }
                                          addr550:
                                       }
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
                                                while(!_loc8_)
                                                {
                                                   §§push(this.§4O§);
                                                   loop16:
                                                   for(; !_loc8_; §§push(this.§4O§),if(_loc8_ && param3)
                                                   {
                                                      continue;
                                                   },§§goto(addr393),§§push(§§pop() - §§pop()))
                                                   {
                                                      if(§§pop() > §§pop())
                                                      {
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§push(param1);
                                                            if(_loc7_ || this)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  continue loop16;
                                                               }
                                                               continue loop0;
                                                            }
                                                            addr393:
                                                            loop18:
                                                            while(!(_loc8_ && param1))
                                                            {
                                                               §§push(Number(§§pop()));
                                                               loop19:
                                                               while(_loc7_ || param3)
                                                               {
                                                                  if(!(_loc8_ && param3))
                                                                  {
                                                                     param1 = §§pop();
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        §§push(param4);
                                                                        if(_loc7_)
                                                                        {
                                                                           if(!_loc8_)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                              loop21:
                                                                              for(; _loc7_ || param3; if(_loc8_ && this)
                                                                              {
                                                                                 continue;
                                                                              },if(§§pop())
                                                                              {
                                                                                 addr61:
                                                                                 if(_loc7_ || param1)
                                                                                 {
                                                                                    this.addDamageParticles(param2,param1);
                                                                                 }
                                                                                 if(!(_loc8_ && param3))
                                                                                 {
                                                                                    if(_loc8_ && param1)
                                                                                    {
                                                                                       loop39:
                                                                                       for(; _loc7_; this.§@"i§ = 0)
                                                                                       {
                                                                                          if(_loc8_ && this)
                                                                                          {
                                                                                             continue loop20;
                                                                                          }
                                                                                          if(_loc7_ || param3)
                                                                                          {
                                                                                             if(_loc7_)
                                                                                             {
                                                                                                this.playDestroyedSound();
                                                                                                loop40:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc7_ || param1)
                                                                                                   {
                                                                                                      if(!_loc8_)
                                                                                                      {
                                                                                                         if(!(_loc8_ && param1))
                                                                                                         {
                                                                                                            §§goto(addr135);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr438:
                                                                                                            §§push(param1);
                                                                                                         }
                                                                                                         §§goto(addr439);
                                                                                                      }
                                                                                                      §§goto(addr207);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc7_ || param3)
                                                                                                         {
                                                                                                            continue loop39;
                                                                                                         }
                                                                                                         if(_loc8_ && param1)
                                                                                                         {
                                                                                                            break loop40;
                                                                                                         }
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                      addr164:
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr525);
                                                                                                addr119:
                                                                                             }
                                                                                             §§goto(addr574);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             addr535:
                                                                                             if(!_loc7_)
                                                                                             {
                                                                                                break loop13;
                                                                                             }
                                                                                             §§push(param1);
                                                                                          }
                                                                                          §§goto(addr538);
                                                                                       }
                                                                                       §§goto(addr241);
                                                                                    }
                                                                                    if(!(_loc8_ && param2))
                                                                                    {
                                                                                       if(_loc7_ || param1)
                                                                                       {
                                                                                          §§goto(addr23);
                                                                                       }
                                                                                       §§goto(addr459);
                                                                                    }
                                                                                    §§goto(addr337);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc8_ && param3))
                                                                                    {
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          §§goto(addr31);
                                                                                       }
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr119);
                                                                                    §§goto(addr525);
                                                                                    §§goto(addr61);
                                                                                 }
                                                                                 §§goto(addr542);
                                                                                 addr106:
                                                                              },§§goto(addr23))
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!(_loc7_ || this))
                                                                                 {
                                                                                    continue loop7;
                                                                                 }
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop22:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop();
                                                                                       addr362:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!(_loc7_ || param1))
                                                                                          {
                                                                                             §§goto(addr500);
                                                                                          }
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             §§push(this.isDamageAwardingScore());
                                                                                             continue loop22;
                                                                                          }
                                                                                          §§goto(addr551);
                                                                                       }
                                                                                       §§goto(addr530);
                                                                                    }
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    loop26:
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          loop27:
                                                                                          while(!(_loc8_ && param3))
                                                                                          {
                                                                                             §§push(int(Math.min(this.§@"i§,int(param1))));
                                                                                             loop28:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop());
                                                                                                loop29:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc5_ = §§pop();
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      §§push(int(§§pop()));
                                                                                                   }
                                                                                                   loop30:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc6_ = §§pop();
                                                                                                      addr337:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!param2)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               param2.addScore(_loc6_,§&'§.§'#?§,this.§@"i§ > param1,§3!t§().GetPosition().x,§3!t§().GetPosition().y,§ U§.§0#`§(this.itemName));
                                                                                                               addr241:
                                                                                                               while(!_loc8_)
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(this);
                                                                                                                     §§push(this.§@"i§);
                                                                                                                     if(_loc7_ || param1)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - param1);
                                                                                                                     }
                                                                                                                     §§pop().§@"i§ = §§pop();
                                                                                                                     addr207:
                                                                                                                     addr247:
                                                                                                                     while(_loc7_)
                                                                                                                     {
                                                                                                                        if(!_loc8_)
                                                                                                                        {
                                                                                                                           if(_loc7_ || param2)
                                                                                                                           {
                                                                                                                              §§push(this.§@"i§);
                                                                                                                              while(!(_loc8_ && this))
                                                                                                                              {
                                                                                                                                 if(_loc8_ && param3)
                                                                                                                                 {
                                                                                                                                    continue loop18;
                                                                                                                                 }
                                                                                                                                 if(_loc7_)
                                                                                                                                 {
                                                                                                                                    §§push(1);
                                                                                                                                    if(!(_loc8_ && param1))
                                                                                                                                    {
                                                                                                                                       if(§§pop() < §§pop())
                                                                                                                                       {
                                                                                                                                          §§goto(addr164);
                                                                                                                                       }
                                                                                                                                       this.playDamagedSound();
                                                                                                                                       §§goto(addr106);
                                                                                                                                    }
                                                                                                                                    §§goto(addr440);
                                                                                                                                 }
                                                                                                                                 §§goto(addr469);
                                                                                                                                 continue loop18;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc7_)
                                                                                                                                 {
                                                                                                                                    continue loop19;
                                                                                                                                 }
                                                                                                                                 if(_loc7_ || param3)
                                                                                                                                 {
                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!(_loc8_ && this))
                                                                                                                                       {
                                                                                                                                          if(_loc7_)
                                                                                                                                          {
                                                                                                                                             _loc6_ = §§pop();
                                                                                                                                             continue loop20;
                                                                                                                                          }
                                                                                                                                          continue loop28;
                                                                                                                                       }
                                                                                                                                       continue loop30;
                                                                                                                                    }
                                                                                                                                    addr285:
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(3);
                                                                                                                                       addr440:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc8_ && param2))
                                                                                                                                          {
                                                                                                                                             if(_loc7_)
                                                                                                                                             {
                                                                                                                                                if(§§pop() > §§pop())
                                                                                                                                                {
                                                                                                                                                   break loop27;
                                                                                                                                                }
                                                                                                                                                addr417:
                                                                                                                                                §§push(this.§@"i§);
                                                                                                                                                break loop19;
                                                                                                                                             }
                                                                                                                                             continue loop5;
                                                                                                                                          }
                                                                                                                                          loop52:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc8_)
                                                                                                                                             {
                                                                                                                                                if(_loc7_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc8_ && param3))
                                                                                                                                                   {
                                                                                                                                                      if(§§pop() > §§pop())
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc7_ || param2)
                                                                                                                                                            {
                                                                                                                                                               this.playCollisionSound();
                                                                                                                                                               §§goto(addr500);
                                                                                                                                                            }
                                                                                                                                                            else
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  this.handleInitialCollision();
                                                                                                                                                                  addr574:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop3;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               addr572:
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr491:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr500);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr530);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   while(§§pop() <= §§pop())
                                                                                                                                                   {
                                                                                                                                                      §§push(param1);
                                                                                                                                                      continue loop0;
                                                                                                                                                   }
                                                                                                                                                   addr539:
                                                                                                                                                }
                                                                                                                                                §§goto(addr540);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(§§pop() > §§pop())
                                                                                                                                                   {
                                                                                                                                                      if(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         this.playDamagedSound();
                                                                                                                                                      }
                                                                                                                                                      addr525:
                                                                                                                                                      break;
                                                                                                                                                      addr525:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr469:
                                                                                                                                                   }
                                                                                                                                                   §§push(param1);
                                                                                                                                                   if(_loc7_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc8_ && this))
                                                                                                                                                      {
                                                                                                                                                         continue loop52;
                                                                                                                                                      }
                                                                                                                                                      continue loop4;
                                                                                                                                                   }
                                                                                                                                                   addr538:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr500:
                                                                                                                                                if(_loc8_ && param1)
                                                                                                                                                {
                                                                                                                                                   addr540:
                                                                                                                                                   this.playDestroyedSound();
                                                                                                                                                   addr542:
                                                                                                                                                }
                                                                                                                                                return this.§@"i§;
                                                                                                                                                addr520:
                                                                                                                                             }
                                                                                                                                             §§goto(addr539);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr439:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr265:
                                                                                                                              addr139:
                                                                                                                           }
                                                                                                                           §§goto(addr491);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr362);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr247:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc6_);
                                                                                                                        if(!(_loc8_ && this))
                                                                                                                        {
                                                                                                                           §§push(param2.damageScoreMultiplier);
                                                                                                                           if(!(_loc7_ || param2))
                                                                                                                           {
                                                                                                                              continue loop29;
                                                                                                                           }
                                                                                                                           §§goto(addr265);
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                        }
                                                                                                                        §§goto(addr285);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr302:
                                                                                                               continue loop27;
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr247);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc8_ && param3)
                                                                                             {
                                                                                                continue loop14;
                                                                                             }
                                                                                             this.playCollisionSound();
                                                                                             §§goto(addr417);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr193);
                                                                                       addr31:
                                                                                       addr23:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(this);
                                                                                          §§push(1);
                                                                                          §§push(this.health);
                                                                                          if(_loc7_ || param3)
                                                                                          {
                                                                                             §§push(§§pop() / this.healthMax);
                                                                                          }
                                                                                          §§push(§§pop().setDamageState(§§pop() - §§pop(),param2));
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             continue loop26;
                                                                                          }
                                                                                          if(_loc7_)
                                                                                          {
                                                                                             continue loop21;
                                                                                          }
                                                                                          §§goto(addr306);
                                                                                          addr135:
                                                                                       }
                                                                                       addr23:
                                                                                       §§push(this.§@"i§);
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          return §§pop();
                                                                                       }
                                                                                       §§goto(addr139);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr531);
                                                                              addr345:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr550);
                                                                           }
                                                                           §§goto(addr551);
                                                                        }
                                                                        §§goto(addr345);
                                                                     }
                                                                  }
                                                                  §§goto(addr500);
                                                               }
                                                               return §§pop();
                                                            }
                                                            continue loop15;
                                                         }
                                                         continue;
                                                      }
                                                      §§goto(addr438);
                                                   }
                                                   continue loop1;
                                                }
                                                §§goto(addr529);
                                             }
                                          }
                                          §§goto(addr535);
                                       }
                                       continue loop2;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr572);
               }
            }
         }
         §§goto(addr247);
      }
      
      protected function setDamageState(param1:Number, param2:§;$§) : Boolean
      {
         return this.§2N§.setDamageState(param1,false);
      }
      
      public function causedDamageToObjects() : void
      {
      }
      
      public function §[v§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §&#=§.§4!#§(param1,§;B§.soundResource);
         }
      }
      
      public function §!!>§(param1:String) : Number
      {
         return §;B§.getDamageMultiplier(param1) * this.§<",§;
      }
      
      public function §5#Q§(param1:String) : Number
      {
         return §;B§.getVelocityMultiplier(param1);
      }
      
      public function §+"J§() : String
      {
         return §;B§.materialName;
      }
      
      public function §+"`§() : Number
      {
         return §;B§.getItemStrength();
      }
      
      public function §@"W§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 30;
         if(!(_loc3_ && _loc3_))
         {
            §§push(Boolean(§3!t§().IsAwake()));
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
                           §§push(this is §?"N§);
                           loop4:
                           for(; _loc2_; while(_loc2_ || _loc2_)
                           {
                              continue loop0;
                           })
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
                                       addr167:
                                       while(!_loc3_)
                                       {
                                          while(true)
                                          {
                                             §§push(this.§@"i§ == this.§ B§);
                                          }
                                       }
                                       continue loop3;
                                    }
                                    addr166:
                                 }
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop10:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             continue loop4;
                                          }
                                          loop14:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop15:
                                             while(_loc2_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop1;
                                                }
                                                if(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      §§pop();
                                                      loop17:
                                                      while(true)
                                                      {
                                                         §§push(Math.abs(§3!t§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                         loop18:
                                                         while(_loc2_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc3_)
                                                               {
                                                                  continue loop15;
                                                               }
                                                               if(!_loc2_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  break;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§pop();
                                                                     if(_loc3_ && _loc1_)
                                                                     {
                                                                        continue loop17;
                                                                     }
                                                                     addr95:
                                                                     if(!(_loc3_ && _loc1_))
                                                                     {
                                                                        if(_loc3_ && this)
                                                                        {
                                                                           break;
                                                                        }
                                                                        continue;
                                                                     }
                                                                     addr157:
                                                                     while(true)
                                                                     {
                                                                        §§push(Math.abs(§3!t§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                                        break loop18;
                                                                        §§goto(addr95);
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr166);
                                                                  }
                                                               }
                                                               §§goto(addr167);
                                                            }
                                                            return §§pop();
                                                         }
                                                         while(!_loc3_)
                                                         {
                                                            continue loop14;
                                                         }
                                                         continue loop4;
                                                      }
                                                   }
                                                }
                                                §§goto(addr68);
                                             }
                                             continue loop10;
                                          }
                                       }
                                       if(_loc3_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       §§goto(addr50);
                                    }
                                 }
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
                  §§goto(addr50);
               }
               if(!(_loc2_ || _loc2_))
               {
                  continue;
               }
               §§pop();
               §§goto(addr157);
            }
         }
         §§goto(addr179);
      }
      
      public function §+"6§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            if(!§3!t§().IsAwake())
            {
               if(!(_loc2_ && this))
               {
                  addr44:
                  §§push(true);
                  if(_loc1_ || this)
                  {
                     return §§pop();
                  }
                  addr67:
                  return !§§pop();
               }
               else
               {
                  addr63:
                  §§push(this.isMoving());
                  if(!_loc2_)
                  {
                     §§goto(addr67);
                  }
               }
               return §§pop();
            }
            §§goto(addr63);
         }
         §§goto(addr44);
      }
      
      protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 10;
         if(_loc2_)
         {
            §§push(Math.abs(§3!t§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * _loc1_);
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
                        addr138:
                        while(true)
                        {
                           §§push(Math.abs(§3!t§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * _loc1_);
                        }
                     }
                     addr137:
                  }
                  while(true)
                  {
                     loop4:
                     while(true)
                     {
                        §§push(§§pop());
                        if(_loc2_ || _loc1_)
                        {
                           if(§§pop())
                           {
                              while(true)
                              {
                                 if(_loc2_ || this)
                                 {
                                    §§pop();
                                    while(true)
                                    {
                                       §§push(Math.abs(§3!t§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * _loc1_);
                                       addr54:
                                       if(!(_loc3_ && _loc1_))
                                       {
                                          addr72:
                                          §§push(false);
                                          if(!_loc3_)
                                          {
                                             break loop4;
                                          }
                                          continue loop4;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr137);
                                 }
                              }
                              §§goto(addr138);
                              addr105:
                           }
                           while(true)
                           {
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    continue;
                                 }
                                 if(!_loc3_)
                                 {
                                    §§goto(addr54);
                                 }
                                 else if(_loc2_ || _loc2_)
                                 {
                                    continue;
                                 }
                              }
                              §§goto(addr72);
                           }
                           continue loop0;
                        }
                        continue loop1;
                     }
                     return §§pop();
                  }
               }
            }
         }
         §§goto(addr138);
      }
      
      public function §8" §(param1:Number = 3) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            this.§<",§ = param1;
         }
      }
      
      public function §0"X§(param1:Boolean) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:* = Number(0);
         if(_loc3_)
         {
            if(§;B§.getItemBodyType() != §&!x§.§&#_§)
            {
               §§push(§3!t§().GetMass() / §^!L§.GetDensity());
               if(_loc3_)
               {
                  §§push(Number(§§pop()));
               }
               loop0:
               while(true)
               {
                  _loc2_ = §§pop();
                  loop1:
                  while(!(_loc4_ && this))
                  {
                     if(param1)
                     {
                        if(!(_loc4_ && _loc2_))
                        {
                           if(_loc4_)
                           {
                              continue;
                           }
                           §§push(_loc2_);
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(this.§>#,§());
                              if(_loc3_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc4_)
                                 {
                                    addr75:
                                    if(!(_loc4_ && param1))
                                    {
                                       if(!_loc4_)
                                       {
                                          if(_loc3_ || _loc2_)
                                          {
                                             §§push(Number(§§pop()));
                                             loop5:
                                             while(true)
                                             {
                                                _loc2_ = §§pop();
                                                addr103:
                                                while(true)
                                                {
                                                   if(!(_loc4_ && this))
                                                   {
                                                      addr22:
                                                      while(true)
                                                      {
                                                         §§push(_loc2_);
                                                         if(!(_loc4_ && _loc3_))
                                                         {
                                                            continue loop0;
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue loop5;
                                                      addr22:
                                                   }
                                                   else
                                                   {
                                                      addr137:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(this.§2N§.width);
                                                   }
                                                   continue loop5;
                                                }
                                             }
                                             addr102:
                                          }
                                          while(true)
                                          {
                                             §§push(this.§2N§.height);
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §§push(§§pop() * §§pop());
                                                while(true)
                                                {
                                                   §§push(§#_§.§8]§);
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                   }
                                                   addr173:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      addr174:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr175:
                                                         while(true)
                                                         {
                                                            _loc2_ = §§pop();
                                                            break loop1;
                                                         }
                                                      }
                                                   }
                                                }
                                                addr151:
                                             }
                                             while(true)
                                             {
                                                §§goto(addr173);
                                             }
                                          }
                                       }
                                       §§goto(addr151);
                                    }
                                    §§goto(addr174);
                                 }
                                 §§goto(addr102);
                              }
                              §§goto(addr173);
                           }
                           §§goto(addr75);
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr22);
                  }
                  while(true)
                  {
                     §§goto(addr22);
                  }
               }
            }
         }
         §§goto(addr137);
      }
      
      public function §>#,§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = Number(1);
         if(!_loc3_)
         {
            §§push(_loc1_);
            if(!(_loc3_ && this))
            {
               §§push(_loc1_);
               if(!(_loc3_ && _loc1_))
               {
                  §§push(2);
                  if(!(_loc3_ && _loc3_))
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc2_ || this)
                     {
                        §§push(§§pop() * Math.min(10,this.§2N§.§^l§ - 1));
                        if(_loc3_ && _loc1_)
                        {
                        }
                        addr90:
                        §§push(§§pop() - §§pop());
                        if(!_loc3_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc2_)
                           {
                           }
                           §§goto(addr98);
                        }
                        _loc1_ = §§pop();
                        addr98:
                        return §§pop();
                        §§push(_loc1_);
                     }
                     §§push(10);
                  }
                  §§push(§§pop() / §§pop());
               }
               §§goto(addr90);
            }
            §§goto(addr98);
         }
         §§goto(addr90);
      }
      
      public function §["t§(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = Number(§3!t§().GetLinearVelocity().x);
         var _loc3_:Number = §3!t§().GetLinearVelocity().y;
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         §§push(1);
         §§push(param1);
         if(!_loc6_)
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
            if(!(_loc6_ && param1))
            {
               §§push(_loc5_);
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc7_)
                  {
                     §§push(Number(§§pop()));
                  }
               }
               addr135:
            }
            while(true)
            {
               _loc2_ = §§pop();
            }
            addr139:
         }
         while(true)
         {
            §§push(_loc3_);
            if(!(_loc6_ && _loc3_))
            {
               §§push(_loc5_);
               if(!_loc6_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc6_ && this))
                  {
                     if(_loc7_)
                     {
                        addr107:
                        _loc3_ = §§pop();
                        while(_loc7_ || param1)
                        {
                           §3!t§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
                           if(!(_loc6_ && param1))
                           {
                              return;
                           }
                        }
                        continue;
                     }
                  }
                  §§goto(addr107);
               }
               else
               {
                  §§goto(addr135);
               }
            }
            §§goto(addr107);
         }
      }
      
      protected function addTrail(param1:§;$§) : Boolean
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
      
      protected function addDestructionParticles(param1:§;$§) : void
      {
      }
      
      public function addDamageParticles(param1:§;$§, param2:int) : void
      {
      }
      
      override protected function updateGravityFilter() : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = § 3§;
         if(_loc3_)
         {
            §§push(GravityFilterCategory.FORCE_OBJECT);
            if(_loc3_)
            {
               if(§§pop() === _loc1_)
               {
                  if(_loc3_)
                  {
                     addr121:
                     §§push(0);
                     if(_loc2_)
                     {
                        addr146:
                        if(§§pop() === _loc1_)
                        {
                           addr148:
                           §§push(2);
                           if(!(_loc2_ && _loc1_))
                           {
                              addr166:
                           }
                        }
                        else
                        {
                           §§push(3);
                        }
                     }
                     §§goto(addr171);
                  }
                  §§goto(addr148);
               }
               else
               {
                  §§push(GravityFilterCategory.YODA_FORCE_OBJECT);
                  if(_loc3_)
                  {
                     if(§§pop() === _loc1_)
                     {
                        if(!_loc2_)
                        {
                           §§push(1);
                           if(_loc3_)
                           {
                              addr136:
                           }
                        }
                        else
                        {
                           §§goto(addr148);
                        }
                        addr171:
                        loop4:
                        switch(§§pop())
                        {
                           case 0:
                              §04§.SetLinearDamping(§0"x§.§["1§);
                              if(_loc3_ || _loc1_)
                              {
                                 §04§.SetAngularDamping(§0"x§.§4"e§);
                                 while(true)
                                 {
                                    §04§.SetGravityScale(0);
                                    if(_loc2_)
                                    {
                                       break loop4;
                                    }
                                    if(!_loc2_)
                                    {
                                       break loop4;
                                    }
                                 }
                                 break;
                              }
                              break;
                           case 1:
                              §04§.SetLinearDamping(§0"x§.§;"7§);
                              if(!(_loc2_ && _loc3_))
                              {
                                 §04§.SetAngularDamping(§0"x§.§>!+§);
                                 loop3:
                                 while(true)
                                 {
                                    addr41:
                                    while(true)
                                    {
                                       §04§.SetGravityScale(0);
                                       addr45:
                                       while(!_loc3_)
                                       {
                                          continue loop3;
                                       }
                                       break loop4;
                                    }
                                 }
                              }
                              break;
                           case 2:
                              break;
                           default:
                              super.updateGravityFilter();
                              if(_loc3_ || this)
                              {
                                 if(!(_loc2_ && this))
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    §§goto(addr41);
                                 }
                                 §§goto(addr45);
                              }
                        }
                        return;
                     }
                     §§push(GravityFilterCategory.LEIA_FORCE_OBJECT);
                     if(!(_loc2_ && this))
                     {
                        §§goto(addr146);
                     }
                  }
               }
               §§goto(addr166);
            }
            §§goto(addr136);
         }
         §§goto(addr121);
      }
      
      public function §!"f§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2Vec2 = §3!t§().GetPosition();
         §§push(_loc4_);
         §§push(_loc4_.x);
         if(_loc5_)
         {
            §§push(param2.x * param1);
            if(!(_loc6_ && param2))
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
            do
            {
               §3!t§().SetPosition(_loc4_);
            }
            while(!_loc5_);
            
         }
      }
      
      public function §="D§(param1:String, param2:String, param3:§;$§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param1;
         if(_loc6_ || param3)
         {
            if("removeGravityFilterCategory" === _loc4_)
            {
               addr49:
               §§push(0);
               if(_loc5_ && this)
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
                  §=G§ = -1;
                  if(_loc6_)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr49);
      }
   }
}
