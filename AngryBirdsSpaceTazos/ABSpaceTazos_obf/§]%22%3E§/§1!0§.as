package §]">§
{
   import §"!&§.§8X§;
   import §"!&§.§<s§;
   import §"!&§.§="A§;
   import §"!&§.§=C§;
   import §'!&§.b2BodyDef;
   import §'!&§.b2FilterData;
   import §'!&§.b2Fixture;
   import §'!&§.b2World;
   import §'4§.§!!t§;
   import §'4§.§^g§;
   import §1"H§.§2!V§;
   import §3"#§.§<!O§;
   import §4&§.§#r§;
   import §7!8§.Sprite;
   import §9t§.b2Vec2;
   import §@!'§.b2Settings;
   import flash.geom.Point;
   
   public class §1!0§ extends §%!+§
   {
      
      public static const §,!Y§:String = "normal";
      
      public static const §>!C§:uint;
      
      public static const §-"#§:uint;
      
      public static const §`"E§:uint;
      
      public static const §@o§:uint;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §,!Y§ = "normal";
            loop0:
            while(true)
            {
               §§push(§§findproperty(§>!C§));
               §§push(1);
               if(_loc2_)
               {
                  §§push(§§pop() << §§pop());
               }
               §§pop().§>!C§ = §§pop();
               while(true)
               {
                  §§push(§§findproperty(§-"#§));
                  §§push(1);
                  if(_loc2_ || _loc1_)
                  {
                     §§push(§§pop() << 2);
                  }
                  §§pop().§-"#§ = §§pop();
                  loop2:
                  while(_loc2_ || _loc1_)
                  {
                     continue loop0;
                     while(true)
                     {
                        §§push(§§findproperty(§`"E§));
                        §§push(1);
                        if(!_loc1_)
                        {
                           §§push(§§pop() << 3);
                        }
                        §§pop().§`"E§ = §§pop();
                        do
                        {
                           §§push(§§findproperty(§@o§));
                           §§push(1);
                           if(_loc2_ || _loc1_)
                           {
                              §§push(§§pop() << 4);
                           }
                           §§pop().§@o§ = §§pop();
                        }
                        while(_loc1_);
                        
                        if(!_loc1_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr88);
      }
      
      private var §!b§:int;
      
      private var §,S§:int;
      
      private var §7?§:b2Vec2;
      
      private var §^!+§:b2Vec2;
      
      private var §`Z§:Number;
      
      private var §,L§:Number;
      
      private var §`!2§:Number;
      
      private var §[" §:Number = 1;
      
      private var §<"=§:Boolean = false;
      
      protected var §'%§:§&5§;
      
      private var §]!k§:§#r§;
      
      private var §=T§:Number = 1.0;
      
      private var §5!§:Boolean = true;
      
      private var §#§:Boolean = false;
      
      private var §[!o§:int = 0;
      
      protected var §"!A§:Number = -1.0;
      
      private var §8!F§:Boolean = false;
      
      private var §^'§:Boolean = false;
      
      public function §1!0§(param1:Sprite, param2:§#r§, param3:b2World, param4:§8X§, param5:Number, param6:Number, param7:Number, param8:Number)
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         if(_loc10_ || this)
         {
            this.§^!+§ = new b2Vec2();
            loop0:
            while(true)
            {
               super(param1,param3,param4,param5,param6,param7);
               loop1:
               while(true)
               {
                  this.§]!k§ = param2;
                  while(true)
                  {
                     this.§=T§ = param8;
                     loop3:
                     while(true)
                     {
                        this.§,S§ = §7!h§.itemType;
                        loop4:
                        while(true)
                        {
                           param1.scaleX = param8;
                           loop5:
                           while(true)
                           {
                              param1.scaleY = param8;
                              loop23:
                              while(true)
                              {
                                 if(_loc9_ && this)
                                 {
                                    continue loop5;
                                 }
                                 this.initializeHealth(§7!h§.healthMax);
                                 loop24:
                                 while(_loc10_ || param1)
                                 {
                                    loop13:
                                    while(true)
                                    {
                                       if(§7!h§.itemType == §8X§.§!!K§)
                                       {
                                          while(true)
                                          {
                                             if(_loc10_)
                                             {
                                                if(!_loc10_)
                                                {
                                                   break;
                                                }
                                                param1.visible = false;
                                                continue loop0;
                                             }
                                             continue loop24;
                                          }
                                          while(true)
                                          {
                                             §§push(this.§'%§);
                                             while(true)
                                             {
                                                §§pop().§0#§(§7!h§.shape is §="A§);
                                                addr220:
                                                while(true)
                                                {
                                                   this.createPhysicsBody(param5,param6);
                                                }
                                                addr68:
                                                §§push(this.§'%§);
                                                if(!_loc10_)
                                                {
                                                   continue;
                                                }
                                                addr34:
                                                §§pop().§>D§(§7!h§.shape);
                                                if(_loc9_ && param1)
                                                {
                                                   while(true)
                                                   {
                                                      if(_loc10_)
                                                      {
                                                         if(!_loc10_)
                                                         {
                                                            continue loop0;
                                                         }
                                                         if(!_loc9_)
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               §§goto(addr68);
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr145);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(!_loc9_)
                                                         {
                                                            if(!_loc9_)
                                                            {
                                                               continue loop4;
                                                            }
                                                            addr209:
                                                            while(_loc10_)
                                                            {
                                                               this.§`!2§ = §7!h§.getItemDefence();
                                                            }
                                                            §§goto(addr220);
                                                         }
                                                         loop17:
                                                         while(true)
                                                         {
                                                            if(_loc10_)
                                                            {
                                                               addr111:
                                                               if(!(_loc9_ && param3))
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     this.update(0,null);
                                                                     §§goto(addr74);
                                                                  }
                                                                  continue loop4;
                                                                  addr69:
                                                               }
                                                               break;
                                                            }
                                                            addr138:
                                                            while(true)
                                                            {
                                                               addr93:
                                                               while(true)
                                                               {
                                                                  if(param7 != 0)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(this);
                                                                           §§push(param7);
                                                                           if(_loc10_)
                                                                           {
                                                                              §§push(§§pop() * (Math.PI / 180));
                                                                           }
                                                                           §§pop().§^e§(§§pop());
                                                                           continue loop17;
                                                                        }
                                                                        continue loop23;
                                                                     }
                                                                     continue loop5;
                                                                     addr97:
                                                                  }
                                                               }
                                                            }
                                                            continue loop23;
                                                            §§goto(addr69);
                                                         }
                                                         addr74:
                                                         while(true)
                                                         {
                                                            continue loop13;
                                                            §§goto(addr111);
                                                         }
                                                         addr173:
                                                      }
                                                      while(true)
                                                      {
                                                         if(§7!h§.healthMax > 0)
                                                         {
                                                            continue loop23;
                                                         }
                                                         this.initializeHealth(Math.round(this.§+<§(true) * §7!h§.getItemStrength()));
                                                         §§goto(addr173);
                                                      }
                                                      §§goto(addr34);
                                                   }
                                                   continue loop24;
                                                   addr60:
                                                }
                                                if(!(_loc9_ && this))
                                                {
                                                   if(_loc10_)
                                                   {
                                                      return;
                                                   }
                                                   continue loop3;
                                                }
                                                §§goto(addr97);
                                             }
                                          }
                                          addr145:
                                          addr226:
                                       }
                                       else
                                       {
                                          this.setDamageState(0,null);
                                          §§goto(addr138);
                                       }
                                       §§goto(addr209);
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§'%§ = this.initObjectRenderer();
                                    §§goto(addr226);
                                    §§goto(addr190);
                                 }
                                 addr190:
                              }
                           }
                        }
                     }
                     if(_loc9_ && param2)
                     {
                        continue;
                     }
                     this.render(0,1,0);
                     §§goto(addr60);
                  }
               }
            }
         }
         §§goto(addr231);
      }
      
      public static function §3!V§(param1:int, param2:§=C§, param3:String = "") : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(param2 == null)
            {
               if(_loc5_)
               {
                  §§goto(addr23);
               }
            }
            §§push(param2.§5"A§(param1));
            if(!(_loc6_ && §1!0§))
            {
               §§push(§§pop());
            }
            var _loc4_:*;
            §§push(_loc4_ = §§pop());
            if(!_loc6_)
            {
               if(§§pop().length > 0)
               {
                  if(_loc5_)
                  {
                     §§push(param3);
                     if(!_loc6_)
                     {
                        if(§§pop().length <= 0)
                        {
                           if(!(_loc6_ && param2))
                           {
                              §§push(param2.§&!W§);
                              if(_loc5_ || param1)
                              {
                              }
                           }
                           §§goto(addr87);
                        }
                        §<!O§.§`h§(_loc4_,param3);
                     }
                     §§goto(addr87);
                  }
               }
               §§goto(addr87);
            }
            addr87:
            param3 = §§pop();
            if(_loc6_)
            {
            }
            return;
         }
         addr23:
      }
      
      public function get health() : Number
      {
         return this.§`Z§;
      }
      
      public function set health(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§`Z§ = param1;
         }
      }
      
      public function get healthMax() : Number
      {
         return this.§,L§;
      }
      
      public function get itemName() : String
      {
         return §7!h§.itemName;
      }
      
      public function get § !K§() : Number
      {
         return this.§[" §;
      }
      
      public function get animation() : §#r§
      {
         return this.§]!k§;
      }
      
      public function get x() : Number
      {
         return §""4§;
      }
      
      public function get y() : Number
      {
         return §%W§;
      }
      
      public function get scale() : Number
      {
         return this.§=T§;
      }
      
      public function get id() : int
      {
         return this.§[!o§;
      }
      
      public function get §8Z§() : Boolean
      {
         return this.§`!2§ >= 0;
      }
      
      public function get defence() : Number
      {
         return this.§`!2§;
      }
      
      public function get §44§() : Boolean
      {
         return this.§5!§;
      }
      
      public function set §44§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§5!§ = param1;
         }
      }
      
      public function get timeSinceCollisionMilliSeconds() : Number
      {
         return this.§"!A§;
      }
      
      public function get destroysCollidingObjects() : Boolean
      {
         return false;
      }
      
      public function get §,M§() : Boolean
      {
         return this.§8!F§;
      }
      
      public function set §,M§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§8!F§ = param1;
         }
      }
      
      public function get §>_§() : Boolean
      {
         return this.§<"=§;
      }
      
      public function set §>_§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§<"=§ = param1;
         }
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function get renderer() : §&5§
      {
         return this.§'%§;
      }
      
      public final function §2!6§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§#§)
            {
               throw new Error("Trying to assign LevelObject id twice !!!");
            }
         }
         do
         {
            this.§#§ = true;
            this.§[!o§ = param1;
         }
         while(!(_loc2_ || _loc3_));
         
      }
      
      protected function initializeHealth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1);
            if(!(_loc3_ && param1))
            {
               if(§§pop() < 1)
               {
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
                  }
                  addr74:
               }
               loop1:
               while(true)
               {
                  this.§,L§ = param1;
                  while(true)
                  {
                     if(!_loc3_)
                     {
                        this.§`Z§ = param1;
                        if(_loc2_)
                        {
                           if(_loc2_)
                           {
                              break loop1;
                           }
                           break;
                        }
                        continue;
                     }
                     §§goto(addr74);
                  }
                  §§goto(addr77);
               }
               return;
               addr46:
            }
            §§goto(addr76);
         }
         §§goto(addr46);
      }
      
      protected function § N§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(param1 < 0)
            {
               if(_loc2_)
               {
                  §§push(this);
                  §§push(this.§`Z§);
                  if(_loc2_)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§`Z§ = §§pop();
               }
            }
         }
      }
      
      protected function createPhysicsBody(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:b2BodyDef = this.createBodyDefinition(param1,param2);
         if(_loc6_)
         {
            §'"F§ = mWorld.CreateBody(_loc3_);
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               §'"F§.SetUserData(this);
               while(!_loc5_)
               {
                  § ]§ = this.§2w§();
                  if(!_loc5_)
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
            var _loc4_:b2FilterData = this.createFilterData();
            if(!_loc5_)
            {
               this.§0q§(_loc4_);
            }
            return;
         }
      }
      
      protected function §2w§() : b2Fixture
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2Fixture = §'"F§.CreateFixture2(§7!h§.shape.getB2Shape(),§7!h§.getItemDensity());
         if(_loc3_)
         {
            _loc1_.§&X§(§7!h§.getItemFriction());
            do
            {
               _loc1_.§>W§(§7!h§.getItemRestitution());
            }
            while(!(_loc3_ || _loc2_));
            
         }
         return _loc1_;
      }
      
      protected function createFilterData() : b2FilterData
      {
         return new b2FilterData();
      }
      
      protected function initObjectRenderer() : §&5§
      {
         return new §&5§(this.animation,sprite);
      }
      
      public function §0q§(param1:b2FilterData) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(§ ]§)
            {
               if(!(_loc2_ && param1))
               {
                  addr48:
                  § ]§.SetFilterData(param1);
               }
            }
            return;
         }
         §§goto(addr48);
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
               addr142:
               while(true)
               {
                  §§pop().x = §§pop();
                  continue loop0;
               }
            }
         }
         §§goto(addr90);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.dispose();
            while(true)
            {
               this.§'%§.dispose();
               loop1:
               while(!_loc1_)
               {
                  while(true)
                  {
                     this.§7?§ = null;
                     do
                     {
                        §7!h§ = null;
                     }
                     while(_loc1_);
                     
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr64);
      }
      
      public function §^e§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && this))
         {
            §^!z§().SetAngle(param1);
         }
      }
      
      public function §+!c§() : Number
      {
         return §^!z§().GetAngle();
      }
      
      public function §=9§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param1))
         {
            §^!z§().SetLinearVelocity(param1);
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
                        this.§+![§();
                        addr80:
                        while(true)
                        {
                        }
                        addr80:
                     }
                     §§goto(addr80);
                  }
                  while(true)
                  {
                     §§push(param3);
                     if(!_loc5_)
                     {
                        continue loop1;
                     }
                     if(!§§pop())
                     {
                        break;
                     }
                     if(_loc5_)
                     {
                        this.§;"'§();
                     }
                     if(!(_loc4_ && param2))
                     {
                        continue loop0;
                     }
                  }
                  addr25:
                  return;
               }
            }
         }
         §§goto(addr80);
      }
      
      public function §%!>§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§7?§ = param1;
         }
      }
      
      private function §@!u§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§7?§)
            {
               if(!(_loc1_ && _loc1_))
               {
                  this.§=9§(this.§7?§,false);
                  do
                  {
                     this.§7?§ = null;
                  }
                  while(!_loc2_);
                  
                  addr66:
               }
               §§goto(addr66);
            }
            return;
         }
         §§goto(addr66);
      }
      
      private function § u§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            if(§'"F§)
            {
               if(_loc2_ || _loc1_)
               {
                  addr53:
                  this.§^!+§.SetV(§'"F§.GetLinearVelocity());
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function §#?§() : b2Vec2
      {
         return this.§^!+§;
      }
      
      public function §+![§(param1:b2Vec2 = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(!param1)
            {
               if(_loc3_)
               {
                  param1 = §^!z§().GetLinearVelocity();
               }
               addr112:
               §^!z§().SetAngularVelocity(0);
               return;
               addr116:
            }
            §§push(param1.x);
            if(_loc3_)
            {
               §§push(0);
               if(!(_loc2_ && this))
               {
                  §§push(§§pop() == §§pop());
                  if(!(_loc2_ && _loc2_))
                  {
                     if(§§pop())
                     {
                        if(!_loc2_)
                        {
                           §§pop();
                           if(_loc3_ || param1)
                           {
                              addr110:
                              §§push(param1.y == 0);
                           }
                           §§goto(addr112);
                        }
                     }
                  }
                  if(!§§pop())
                  {
                     §^!z§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
                     if(_loc3_ || _loc3_)
                     {
                        if(_loc3_)
                        {
                        }
                        §§goto(addr112);
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr112);
               }
            }
            §§goto(addr110);
         }
         §§goto(addr112);
      }
      
      public function §;"'§(param1:b2Vec2 = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            if(!param1)
            {
               addr30:
               param1 = §^!z§().GetLinearVelocity();
            }
            var _loc2_:Number = Math.atan2(-param1.y,param1.x);
            if(!_loc4_)
            {
               this.§^e§(_loc2_);
            }
            return;
         }
         §§goto(addr30);
      }
      
      public function §>"7§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §^!z§().SetAngularVelocity(param1);
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super.render(param1,param2,param3);
            loop0:
            while(true)
            {
               this.§'%§.update(param1);
               loop1:
               do
               {
                  sprite.x = §""4§;
                  while(true)
                  {
                     sprite.y = §%W§;
                     while(_loc4_)
                     {
                        if(!_loc5_)
                        {
                           sprite.rotation = §1"3§;
                           if(_loc4_)
                           {
                              continue loop1;
                           }
                           continue;
                           continue;
                        }
                        continue loop0;
                     }
                  }
               }
               while(!(_loc4_ || this));
               
            }
         }
      }
      
      override public function update(param1:Number, param2:§;U§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
         {
            this.§@!u§();
            loop0:
            while(true)
            {
               super.update(param1,param2);
               loop1:
               do
               {
                  if(this.§"!A§ >= 0)
                  {
                     while(!_loc4_)
                     {
                        while(true)
                        {
                           §§push(this);
                           §§push(this.§"!A§);
                           if(_loc3_)
                           {
                              §§push(§§pop() + param1);
                           }
                           §§pop().§"!A§ = §§pop();
                           addr83:
                           while(true)
                           {
                           }
                        }
                        if(_loc3_ || _loc3_)
                        {
                           continue loop1;
                        }
                     }
                     continue loop0;
                  }
                  while(true)
                  {
                     this.§ u§();
                     if(!_loc3_)
                     {
                        continue;
                     }
                     §§goto(addr33);
                  }
               }
               while(_loc4_ && param1);
               
               return;
            }
         }
         §§goto(addr65);
      }
      
      public function updateOutOfBounds(param1:§;U§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§^'§ = true;
         }
      }
      
      public function updateBeforeRemoving(param1:§;U§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(!this.§^'§)
            {
               if(!_loc2_)
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
      
      public function §6L§() : Boolean
      {
         return this.§,S§ == §8X§.§1!Q§;
      }
      
      public function §&-§() : Boolean
      {
         return this.§,S§ == §8X§.§!!K§;
      }
      
      public function §<!0§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
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
                     loop5:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(_loc2_ || _loc2_)
                           {
                              §§push(true);
                              break;
                           }
                           if(_loc1_ && _loc2_)
                           {
                              continue loop0;
                           }
                           while(true)
                           {
                           }
                        }
                        while(true)
                        {
                           §§push(false);
                           if(!(_loc2_ || this))
                           {
                              break loop5;
                           }
                           if(!_loc2_)
                           {
                              while(!(_loc1_ && this))
                              {
                                 continue loop5;
                              }
                              continue loop1;
                              addr68:
                           }
                           if(_loc2_ || _loc2_)
                           {
                              return §§pop();
                           }
                        }
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
         §§goto(addr103);
      }
      
      public function isDamageAwardingScore() : Boolean
      {
         return false;
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §=!k§() : Number
      {
         return Number(Math.sqrt(§^!z§().GetLinearVelocity().x * §^!z§().GetLinearVelocity().x + §^!z§().GetLinearVelocity().y * §^!z§().GetLinearVelocity().y));
      }
      
      protected function handleInitialCollision() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§"!A§ = 0;
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
            this.§'!p§(§=C§.§;!G§);
         }
      }
      
      protected function playDamagedSound() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§'!p§(§=C§.§+5§);
         }
      }
      
      protected function playCollisionSound() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§'!p§(§=C§.§[!I§);
         }
      }
      
      public function applyDamage(param1:Number, param2:§;U§, param3:§1!0§, param4:Boolean = true) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         if(!_loc7_)
         {
            §§push(this.§"!A§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc8_ || this)
                     {
                        this.handleInitialCollision();
                     }
                     loop2:
                     while(true)
                     {
                        addr507:
                        loop3:
                        while(true)
                        {
                           §§push(this.§`!2§);
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
                                             addr515:
                                             while(true)
                                             {
                                                §§push(this.§`!2§);
                                                while(true)
                                                {
                                                   §§push(1000000);
                                                   addr498:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() >= §§pop());
                                                   }
                                                   addr452:
                                                   if(!(_loc7_ && param1))
                                                   {
                                                      §§goto(addr459);
                                                   }
                                                }
                                             }
                                          }
                                          addr514:
                                       }
                                       while(true)
                                       {
                                          loop13:
                                          while(true)
                                          {
                                             if(§§pop())
                                             {
                                                addr501:
                                                §§push(param1);
                                                while(true)
                                                {
                                                   §§push(30);
                                                   loop54:
                                                   while(true)
                                                   {
                                                      if(§§pop() > §§pop())
                                                      {
                                                         addr504:
                                                         loop49:
                                                         while(true)
                                                         {
                                                            this.playDestroyedSound();
                                                            addr506:
                                                            while(true)
                                                            {
                                                               addr447:
                                                               while(true)
                                                               {
                                                                  §§push(this.§`Z§);
                                                                  §§goto(addr450);
                                                               }
                                                               continue loop49;
                                                            }
                                                         }
                                                         addr504:
                                                      }
                                                      else
                                                      {
                                                         §§push(param1);
                                                         while(true)
                                                         {
                                                            §§push(12);
                                                            addr486:
                                                            while(!_loc7_)
                                                            {
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.playDamagedSound();
                                                                     addr491:
                                                                     while(_loc7_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     §§goto(addr447);
                                                                  }
                                                                  addr489:
                                                               }
                                                               else
                                                               {
                                                                  §§push(param1);
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc8_ || param2))
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     §§push(3);
                                                                     while(true)
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           if(§§pop() > §§pop())
                                                                           {
                                                                              addr478:
                                                                              this.playCollisionSound();
                                                                           }
                                                                           §§goto(addr447);
                                                                        }
                                                                     }
                                                                  }
                                                                  addr465:
                                                               }
                                                            }
                                                            continue loop54;
                                                         }
                                                         addr485:
                                                      }
                                                      §§goto(addr498);
                                                   }
                                                }
                                                addr502:
                                             }
                                             else
                                             {
                                                loop14:
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   loop15:
                                                   while(_loc8_)
                                                   {
                                                      §§push(this.§`!2§);
                                                      loop16:
                                                      for(; !(_loc7_ && param3); §§push(this.§`!2§),if(_loc7_ && this)
                                                      {
                                                         continue;
                                                      },§§push(§§pop() - §§pop()),loop19:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         loop20:
                                                         while(_loc8_)
                                                         {
                                                            param1 = §§pop();
                                                            loop21:
                                                            while(true)
                                                            {
                                                               §§push(param4);
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  continue loop13;
                                                                  addr306:
                                                                  if(_loc7_ && param3)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(_loc7_ && this)
                                                                     {
                                                                        continue loop6;
                                                                     }
                                                                     §§push(Boolean(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        loop28:
                                                                        while(true)
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              loop29:
                                                                              while(true)
                                                                              {
                                                                                 §§push(int(Math.min(this.§`Z§,int(param1))));
                                                                                 if(_loc8_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    while(true)
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                    }
                                                                                    addr336:
                                                                                 }
                                                                                 loop31:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(int(§§pop()));
                                                                                    loop32:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc6_ = §§pop();
                                                                                       loop33:
                                                                                       while(true)
                                                                                       {
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             if(param2)
                                                                                             {
                                                                                                loop34:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      continue loop21;
                                                                                                   }
                                                                                                   if(!(_loc7_ && param1))
                                                                                                   {
                                                                                                      §§push(_loc6_);
                                                                                                      if(!(_loc7_ && param2))
                                                                                                      {
                                                                                                         if(!(_loc8_ || param1))
                                                                                                         {
                                                                                                            continue loop32;
                                                                                                         }
                                                                                                         §§push(param2.damageScoreMultiplier);
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(int(§§pop()));
                                                                                                               loop42:
                                                                                                               for(; _loc8_ || param3; §§push(this.§`Z§),if(!(_loc7_ && param1))
                                                                                                               {
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     continue loop19;
                                                                                                                  }
                                                                                                                  continue loop20;
                                                                                                               })
                                                                                                               {
                                                                                                                  if(!_loc7_)
                                                                                                                  {
                                                                                                                     §§push(1);
                                                                                                                     if(!(_loc7_ && param1))
                                                                                                                     {
                                                                                                                        if(_loc8_ || param3)
                                                                                                                        {
                                                                                                                           if(§§pop() < §§pop())
                                                                                                                           {
                                                                                                                              loop45:
                                                                                                                              while(_loc8_ || param1)
                                                                                                                              {
                                                                                                                                 this.§`Z§ = 0;
                                                                                                                                 loop46:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc7_ && param3))
                                                                                                                                    {
                                                                                                                                       this.playDestroyedSound();
                                                                                                                                       loop47:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc7_)
                                                                                                                                          {
                                                                                                                                             continue loop34;
                                                                                                                                          }
                                                                                                                                          if(!_loc7_)
                                                                                                                                          {
                                                                                                                                             if(_loc8_)
                                                                                                                                             {
                                                                                                                                                continue loop28;
                                                                                                                                                addr143:
                                                                                                                                             }
                                                                                                                                             §§goto(addr423);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             loop25:
                                                                                                                                             while(!_loc7_)
                                                                                                                                             {
                                                                                                                                                if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   §§push(this.isDamageAwardingScore());
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc7_ && param1))
                                                                                                                                                      {
                                                                                                                                                         if(_loc7_ && param2)
                                                                                                                                                         {
                                                                                                                                                            continue loop13;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr306);
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§pop();
                                                                                                                                                            continue loop25;
                                                                                                                                                         }
                                                                                                                                                         addr356:
                                                                                                                                                      }
                                                                                                                                                      addr70:
                                                                                                                                                      if(_loc7_ && param3)
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      }
                                                                                                                                                      if(!§§pop())
                                                                                                                                                      {
                                                                                                                                                         continue loop42;
                                                                                                                                                      }
                                                                                                                                                      if(!(_loc7_ && this))
                                                                                                                                                      {
                                                                                                                                                         if(_loc7_)
                                                                                                                                                         {
                                                                                                                                                            continue loop47;
                                                                                                                                                         }
                                                                                                                                                         if(_loc7_ && param3)
                                                                                                                                                         {
                                                                                                                                                            continue loop46;
                                                                                                                                                         }
                                                                                                                                                         if(_loc7_)
                                                                                                                                                         {
                                                                                                                                                            continue loop45;
                                                                                                                                                         }
                                                                                                                                                         if(_loc8_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc8_)
                                                                                                                                                            {
                                                                                                                                                               this.addDamageParticles(param2,param1);
                                                                                                                                                               addr104:
                                                                                                                                                               if(!(_loc7_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  continue loop42;
                                                                                                                                                               }
                                                                                                                                                               addr286:
                                                                                                                                                               addr117:
                                                                                                                                                               while(!_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc7_ && param3)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop33;
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc8_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop28;
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr504);
                                                                                                                                                                  §§goto(addr104);
                                                                                                                                                               }
                                                                                                                                                               while(!_loc7_)
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     param2.addScore(_loc6_,§!!t§.§#!L§,this.§`Z§ > param1,§^!z§().GetPosition().x,§^!z§().GetPosition().y,§2!V§.§-"§(this.itemName));
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr491);
                                                                                                                                                            }
                                                                                                                                                            while(_loc8_ || this)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this);
                                                                                                                                                                  §§push(this.§`Z§);
                                                                                                                                                                  if(!(_loc7_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - param1);
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().§`Z§ = §§pop();
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop29;
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            continue loop42;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr104);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr515);
                                                                                                                                                   addr292:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr489);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr478);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr515);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr435);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              this.playDamagedSound();
                                                                                                                              §§goto(addr117);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr486);
                                                                                                                     }
                                                                                                                     §§goto(addr431);
                                                                                                                  }
                                                                                                                  §§goto(addr465);
                                                                                                               }
                                                                                                            }
                                                                                                            addr277:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr336);
                                                                                                         }
                                                                                                      }
                                                                                                      while(!(_loc7_ && param1))
                                                                                                      {
                                                                                                         _loc6_ = §§pop();
                                                                                                         §§goto(addr286);
                                                                                                         §§goto(addr277);
                                                                                                      }
                                                                                                      continue loop31;
                                                                                                   }
                                                                                                   if(_loc8_ || param2)
                                                                                                   {
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         continue loop14;
                                                                                                      }
                                                                                                      §§goto(addr408);
                                                                                                   }
                                                                                                   break;
                                                                                                   §§goto(addr431);
                                                                                                }
                                                                                                §§goto(addr435);
                                                                                             }
                                                                                             §§goto(addr205);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr501);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr502);
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr190);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr514);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr485);
                                                         if(_loc7_ && param2)
                                                         {
                                                            continue;
                                                         }
                                                         if(!(_loc7_ && param2))
                                                         {
                                                            if(_loc8_)
                                                            {
                                                               return §§pop();
                                                            }
                                                            continue loop0;
                                                         }
                                                         §§goto(addr364);
                                                      })
                                                      {
                                                         if(§§pop() <= §§pop())
                                                         {
                                                            addr423:
                                                            if(!(_loc7_ && param3))
                                                            {
                                                               addr431:
                                                               §§push(param1);
                                                               §§push(3);
                                                               if(!_loc7_)
                                                               {
                                                                  if(§§pop() <= §§pop())
                                                                  {
                                                                     addr388:
                                                                     §§push(this.§`Z§);
                                                                     continue loop0;
                                                                  }
                                                                  this.playCollisionSound();
                                                                  if(_loc8_)
                                                                  {
                                                                     continue loop2;
                                                                  }
                                                                  §§goto(addr506);
                                                               }
                                                               §§goto(addr473);
                                                            }
                                                            §§goto(addr478);
                                                         }
                                                         else
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(param1);
                                                               addr364:
                                                               while(true)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     if(!(_loc8_ || this))
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop16;
                                                                  }
                                                               }
                                                               continue loop15;
                                                               addr408:
                                                            }
                                                         }
                                                         §§goto(addr431);
                                                      }
                                                      continue loop1;
                                                   }
                                                   addr450:
                                                   while(true)
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         continue loop53;
                                                      }
                                                      §§goto(addr452);
                                                      continue loop51;
                                                   }
                                                   addr459:
                                                   return §§pop();
                                                }
                                             }
                                             §§goto(addr473);
                                             while(true)
                                             {
                                                if(!(_loc8_ || param3))
                                                {
                                                   continue loop13;
                                                }
                                                §§push(§§pop());
                                                if(!_loc8_)
                                                {
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   §§goto(addr356);
                                                }
                                                §§goto(addr323);
                                             }
                                             continue loop7;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  else
                  {
                     this.handleAnotherCollision();
                  }
                  while(true)
                  {
                     §§goto(addr507);
                  }
               }
            }
         }
         §§goto(addr504);
      }
      
      protected function setDamageState(param1:Number, param2:§;U§) : Boolean
      {
         return this.§'%§.setDamageState(param1);
      }
      
      public function causedDamageToObjects() : void
      {
      }
      
      public function §'!p§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            §1!0§.§3!V§(param1,§7!h§.soundResource);
         }
      }
      
      public function §^^§(param1:String) : Number
      {
         return §7!h§.getDamageMultiplier(param1) * this.§[" §;
      }
      
      public function §%!O§(param1:String) : Number
      {
         return §7!h§.getVelocityMultiplier(param1);
      }
      
      public function §^I§() : String
      {
         return §7!h§.materialName;
      }
      
      public function §=W§() : Number
      {
         return §7!h§.getItemStrength();
      }
      
      public function §6!b§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 30;
         if(!(_loc2_ && _loc2_))
         {
            §§push(Boolean(§^!z§().IsAwake()));
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
                        loop3:
                        while(true)
                        {
                           §§push(this is § 6§);
                           while(!_loc2_)
                           {
                              §§push(§§pop());
                              while(!_loc2_)
                              {
                                 if(§§pop())
                                 {
                                    loop6:
                                    while(true)
                                    {
                                       §§pop();
                                       addr188:
                                       while(!(_loc2_ && this))
                                       {
                                          §§push(this.§`Z§ == this.§,L§);
                                          continue loop6;
                                       }
                                       continue loop3;
                                    }
                                 }
                                 while(true)
                                 {
                                    §§goto(addr165);
                                 }
                              }
                              continue loop1;
                           }
                           continue loop0;
                        }
                     }
                  }
                  §§goto(addr45);
               }
            }
         }
         §§goto(addr142);
      }
      
      public function §%!8§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(!§^!z§().IsAwake())
            {
               if(!(_loc1_ && _loc1_))
               {
                  addr40:
                  §§push(true);
                  if(_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr54:
                  §§push(this.isMoving());
                  if(!_loc1_)
                  {
                     return !§§pop();
                  }
               }
               return §§pop();
            }
            §§goto(addr54);
         }
         §§goto(addr40);
      }
      
      protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 10;
         if(_loc2_)
         {
            §§push(Math.abs(§^!z§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * _loc1_);
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
                        addr148:
                        loop7:
                        while(true)
                        {
                           §§push(Math.abs(§^!z§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * _loc1_);
                           if(!_loc3_)
                           {
                              loop3:
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(_loc3_ && _loc1_)
                                 {
                                    continue loop1;
                                 }
                                 if(§§pop())
                                 {
                                    loop4:
                                    while(_loc2_)
                                    {
                                       §§pop();
                                       loop5:
                                       while(true)
                                       {
                                          if(_loc2_ || this)
                                          {
                                             §§push(Math.abs(§^!z§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * _loc1_);
                                             if(_loc2_ || _loc3_)
                                             {
                                                if(!_loc2_)
                                                {
                                                   continue loop4;
                                                }
                                                if(!(_loc2_ || this))
                                                {
                                                   continue loop2;
                                                }
                                                while(§§pop())
                                                {
                                                   if(_loc2_ || _loc2_)
                                                   {
                                                      break loop3;
                                                   }
                                                   continue loop5;
                                                }
                                                §§push(true);
                                                if(_loc2_ || _loc1_)
                                                {
                                                   return §§pop();
                                                }
                                             }
                                             §§goto(addr80);
                                          }
                                          continue loop7;
                                       }
                                       continue loop7;
                                    }
                                    continue loop0;
                                    addr113:
                                 }
                                 §§goto(addr60);
                              }
                              addr80:
                              return §§pop();
                              §§push(false);
                              addr103:
                           }
                           §§goto(addr113);
                        }
                     }
                  }
                  §§goto(addr103);
               }
            }
         }
         §§goto(addr148);
      }
      
      public function §&!f§(param1:Number = 3) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§[" § = param1;
         }
      }
      
      public function §+<§(param1:Boolean) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         if(!_loc3_)
         {
            if(§7!h§.getItemBodyType() == §<s§.§%!2§)
            {
               if(!(_loc3_ && _loc3_))
               {
                  §§push(this.§'%§.width);
                  while(true)
                  {
                     §§push(this.§'%§.height);
                     if(_loc4_)
                     {
                        §§push(§§pop() * §§pop());
                        while(true)
                        {
                           §§push(§^g§.§5!-§);
                           addr166:
                           while(true)
                           {
                              §§push(§§pop() * §^g§.§5!-§);
                           }
                           addr41:
                           if(!(_loc3_ && param1))
                           {
                              return §§pop();
                           }
                        }
                     }
                     addr169:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        addr170:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr171:
                           while(true)
                           {
                              _loc2_ = §§pop();
                           }
                        }
                     }
                  }
                  addr148:
               }
               loop6:
               while(true)
               {
                  loop7:
                  while(true)
                  {
                     §§push(_loc2_);
                     if(_loc4_ || _loc2_)
                     {
                        if(_loc4_ || this)
                        {
                           if(_loc4_)
                           {
                              §§goto(addr41);
                           }
                           else
                           {
                              while(true)
                              {
                                 if(_loc4_)
                                 {
                                    §§push(Number(§§pop()));
                                    loop13:
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          _loc2_ = §§pop();
                                          loop9:
                                          while(true)
                                          {
                                             if(!(_loc4_ || _loc2_))
                                             {
                                                continue loop6;
                                             }
                                             if(!param1)
                                             {
                                                break;
                                             }
                                             if(_loc4_ || this)
                                             {
                                                addr61:
                                                §§push(_loc2_);
                                                while(true)
                                                {
                                                   §§push(this.§]"B§());
                                                   if(!(_loc3_ && param1))
                                                   {
                                                      if(_loc4_ || param1)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc3_)
                                                         {
                                                            if(!(_loc4_ || param1))
                                                            {
                                                               continue loop13;
                                                            }
                                                            if(_loc4_ || _loc2_)
                                                            {
                                                               addr106:
                                                               §§push(Number(§§pop()));
                                                               while(true)
                                                               {
                                                                  _loc2_ = §§pop();
                                                                  addr107:
                                                                  addr109:
                                                                  while(_loc3_)
                                                                  {
                                                                     continue loop9;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     break loop9;
                                                                  }
                                                               }
                                                               addr106:
                                                            }
                                                         }
                                                         §§goto(addr106);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr166);
                                                      }
                                                   }
                                                   §§goto(addr169);
                                                   §§goto(addr61);
                                                }
                                                addr62:
                                             }
                                             §§goto(addr107);
                                          }
                                          continue loop7;
                                       }
                                       §§goto(addr170);
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr148);
                                 }
                              }
                              addr119:
                           }
                           §§goto(addr169);
                        }
                        §§goto(addr62);
                     }
                     §§goto(addr106);
                  }
               }
            }
            else
            {
               §§push(§^!z§().GetMass() / § ]§.GetDensity());
            }
            §§goto(addr119);
         }
         §§goto(addr109);
      }
      
      public function §]"B§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Number(1);
         if(!(_loc2_ && _loc1_))
         {
            §§push(_loc1_);
            if(_loc3_ || _loc1_)
            {
               §§push(_loc1_);
               if(_loc3_ || this)
               {
                  §§push(2);
                  if(_loc3_)
                  {
                     §§push(§§pop() / §§pop());
                     if(_loc3_)
                     {
                        §§push(§§pop() * Math.min(10,this.§'%§.§,!D§ - 1));
                        if(!_loc2_)
                        {
                           addr69:
                           §§push(§§pop() / 10);
                        }
                        §§push(§§pop() - §§pop());
                        if(_loc3_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc3_)
                           {
                              addr87:
                              _loc1_ = §§pop();
                              return _loc1_;
                           }
                        }
                     }
                  }
               }
               §§goto(addr69);
            }
         }
         §§goto(addr87);
      }
      
      public function §var§(param1:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc2_:* = Number(§^!z§().GetLinearVelocity().x);
         var _loc3_:* = Number(§^!z§().GetLinearVelocity().y);
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         §§push(1);
         §§push(param1);
         if(!(_loc6_ && _loc2_))
         {
            §§push(§§pop() / _loc4_);
         }
         §§push(§§pop() + §§pop());
         if(!(_loc6_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(!(_loc6_ && param1))
         {
            §§push(_loc2_);
            if(_loc7_)
            {
               §§push(_loc5_);
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc7_)
                  {
                     §§push(Number(§§pop()));
                  }
                  addr108:
                  §§push(_loc5_);
                  if(!(_loc7_ || this))
                  {
                     continue;
                  }
                  §§push(§§pop() * §§pop());
                  if(!_loc6_)
                  {
                     addr119:
                     §§push(Number(§§pop()));
                  }
                  if(_loc7_)
                  {
                     _loc3_ = §§pop();
                     addr150:
                     while(_loc7_ || _loc3_)
                     {
                        §^!z§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
                        if(!(_loc6_ && param1))
                        {
                           return;
                        }
                     }
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc7_ || this)
                        {
                           §§goto(addr108);
                        }
                        §§goto(addr119);
                     }
                     addr150:
                  }
                  while(true)
                  {
                     _loc2_ = §§pop();
                     §§goto(addr150);
                  }
                  addr149:
               }
            }
            §§goto(addr149);
         }
         §§goto(addr150);
      }
      
      protected function addTrail(param1:§;U§) : Boolean
      {
         return this.isLeavingTrail;
      }
      
      public function get isLeavingTrail() : Boolean
      {
         return false;
      }
      
      protected function addDestructionParticles(param1:§;U§) : void
      {
      }
      
      public function addDamageParticles(param1:§;U§, param2:int) : void
      {
      }
      
      public function §@!F§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2Vec2 = §^!z§().GetPosition();
         §§push(_loc4_);
         §§push(_loc4_.x);
         if(!_loc5_)
         {
            §§push(param2.x * param1);
            if(!_loc5_)
            {
               §§push(§§pop() * param3);
            }
            §§push(§§pop() + §§pop());
         }
         §§pop().x = §§pop();
         if(_loc6_ || param1)
         {
            §§push(_loc4_);
            §§push(_loc4_.y);
            if(!(_loc5_ && param3))
            {
               §§push(param2.y * param1);
               if(_loc6_)
               {
                  §§push(§§pop() * param3);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().y = §§pop();
            do
            {
               §^!z§().SetPosition(_loc4_);
            }
            while(_loc5_ && param1);
            
         }
      }
      
      public function getGravityMultiplier(param1:Number) : Number
      {
         return 1;
      }
      
      public function applyGravity() : Boolean
      {
         return §^!z§().IsAwake();
      }
   }
}
