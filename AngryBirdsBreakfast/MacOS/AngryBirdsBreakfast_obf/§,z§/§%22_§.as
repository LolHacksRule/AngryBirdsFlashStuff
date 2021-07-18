package §,z§
{
   import § ! §.§5!v§;
   import §&v§.§"a§;
   import §&v§.§#c§;
   import §&v§.§,4§;
   import §&v§.§9B§;
   import §'F§.b2Settings;
   import §1T§.§'!c§;
   import §3!`§.b2BodyDef;
   import §3!`§.b2FilterData;
   import §3!`§.b2Fixture;
   import §3!`§.b2World;
   import §6![§.Sprite;
   import §6Z§.b2Vec2;
   import §>!Z§.§2_§;
   import §?s§.§8K§;
   import §@L§.§!]§;
   import §@L§.§=b§;
   import §@L§.§?!'§;
   import flash.geom.Point;
   
   public class §"_§ extends §?!;§
   {
      
      public static const §=!4§:String = "normal";
      
      public static const §8"!§:uint;
      
      public static const §,O§:uint;
      
      public static const §=!8§:uint;
      
      public static const § Q§:uint;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §=!4§ = "normal";
            loop0:
            while(true)
            {
               §§push(§§findproperty(§8"!§));
               §§push(1);
               if(_loc1_ || §"_§)
               {
                  §§push(§§pop() << §§pop());
               }
               §§pop().§8"!§ = §§pop();
               addr111:
               while(true)
               {
                  §§push(§§findproperty(§,O§));
                  §§push(1);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(§§pop() << 2);
                  }
                  §§pop().§,O§ = §§pop();
                  addr49:
                  if(_loc1_ || _loc2_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr87);
      }
      
      private var §!G§:int;
      
      private var §5!J§:int;
      
      private var §!"#§:b2Vec2;
      
      private var §]h§:b2Vec2;
      
      private var §+r§:Number;
      
      private var §;F§:Number;
      
      private var § 8§:Number;
      
      private var §`+§:Number = 1;
      
      private var §#!$§:Boolean = false;
      
      protected var §`!f§:§%!@§;
      
      private var §"!b§:§5!v§;
      
      private var §6!r§:Number = 1.0;
      
      private var §4s§:Boolean = true;
      
      private var §6N§:Boolean = false;
      
      private var §>6§:int = 0;
      
      protected var §="§:Number = -1.0;
      
      private var §#""§:Boolean = false;
      
      private var §9Y§:Boolean = false;
      
      protected var §`,§:String = "";
      
      protected var §1!3§:int = 1;
      
      public function §"_§(param1:Sprite, param2:§5!v§, param3:b2World, param4:§9B§, param5:§8K§, param6:Number)
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_ || param3)
         {
            this.§]h§ = new b2Vec2();
            loop0:
            while(true)
            {
               super(param1,param3,param4,param5);
               loop1:
               while(true)
               {
                  this.§"!b§ = param2;
                  addr288:
                  while(true)
                  {
                     this.§6!r§ = param6;
                     addr283:
                     addr157:
                     while(true)
                     {
                        this.§5!J§ = §%-§.itemType;
                     }
                     if(_loc8_ && param1)
                     {
                        continue;
                     }
                     loop16:
                     while(true)
                     {
                        if(param5.angle != 0)
                        {
                           continue loop0;
                        }
                        loop19:
                        while(true)
                        {
                           this.update(0,null);
                           do
                           {
                              this.render(0,1,0);
                              while(true)
                              {
                                 if(!_loc7_)
                                 {
                                    continue loop0;
                                 }
                                 if(_loc7_)
                                 {
                                    if(!(_loc8_ && param3))
                                    {
                                       if(_loc7_)
                                       {
                                          §§push(this.§`!f§);
                                          if(_loc8_ && param3)
                                          {
                                             break;
                                          }
                                          continue;
                                          addr76:
                                       }
                                       §§goto(addr283);
                                    }
                                    while(true)
                                    {
                                       param1.visible = false;
                                    }
                                    addr142:
                                 }
                                 while(true)
                                 {
                                    if(_loc8_)
                                    {
                                       break loop16;
                                    }
                                    §§goto(addr157);
                                 }
                              }
                              while(true)
                              {
                                 §§pop().§]!D§(§%-§.shape is §"a§);
                                 while(true)
                                 {
                                    this.§&'§(§-!k§.x,§-!k§.y);
                                    addr233:
                                    while(!(_loc8_ && param1))
                                    {
                                       §5y§ = param5.§5y§;
                                       break loop16;
                                    }
                                 }
                                 §§goto(addr76);
                              }
                           }
                           while(!_loc7_);
                           
                           if(!_loc8_)
                           {
                              break;
                           }
                           addr111:
                           loop18:
                           while(true)
                           {
                              if(_loc7_ || param2)
                              {
                                 addr118:
                                 if(!(_loc7_ || param2))
                                 {
                                    break;
                                 }
                                 continue loop19;
                              }
                              loop13:
                              while(true)
                              {
                                 if(!(_loc7_ || param3))
                                 {
                                    continue loop1;
                                 }
                                 if(!_loc8_)
                                 {
                                    addr187:
                                    if(_loc7_ || param2)
                                    {
                                       if(_loc8_)
                                       {
                                          break;
                                       }
                                       loop14:
                                       while(true)
                                       {
                                          if(§%-§.itemType != §9B§.§&!R§)
                                          {
                                             this.setDamageState(0,null);
                                             while(true)
                                             {
                                                if(!_loc8_)
                                                {
                                                   continue loop16;
                                                }
                                                continue loop14;
                                             }
                                             continue loop0;
                                             addr133:
                                          }
                                          §§goto(addr142);
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§`!f§ = this.§8!D§();
                                       break loop18;
                                       §§goto(addr187);
                                    }
                                    addr260:
                                 }
                                 while(true)
                                 {
                                    if(§%-§.healthMax > 0)
                                    {
                                       continue loop1;
                                    }
                                    this.initializeHealth(Math.round(this.§[z§(true) * §%-§.getItemStrength()));
                                    continue loop13;
                                 }
                              }
                              addr265:
                              addr278:
                              while(!(_loc8_ && this))
                              {
                                 param1.scaleY = param6;
                                 §§goto(addr260);
                              }
                              while(true)
                              {
                                 param1.scaleX = param6;
                                 §§goto(addr265);
                              }
                           }
                           while(true)
                           {
                              §§goto(addr244);
                              §§goto(addr118);
                           }
                        }
                        if(!_loc8_)
                        {
                           if(_loc7_)
                           {
                              return;
                           }
                           §§goto(addr233);
                        }
                        §§goto(addr133);
                     }
                     addr164:
                     while(true)
                     {
                        this.§ 8§ = §%-§.getItemDefence();
                        §§goto(addr219);
                     }
                  }
               }
            }
         }
         §§goto(addr278);
      }
      
      public static function §>,§(param1:int, param2:§,4§, param3:String = "") : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            if(param2 == null)
            {
               if(_loc6_ || param1)
               {
                  §§goto(addr29);
               }
            }
            §§push(param2.§^!r§(param1));
            if(!(_loc5_ && param2))
            {
               §§push(§§pop());
            }
            var _loc4_:*;
            §§push(_loc4_ = §§pop());
            if(!_loc5_)
            {
               if(§§pop().length > 0)
               {
                  if(_loc6_)
                  {
                     §§push(param3);
                     if(_loc6_ || §"_§)
                     {
                        addr68:
                        if(§§pop().length <= 0)
                        {
                           §§goto(addr105);
                        }
                        addr101:
                        §'!c§.§"V§(_loc4_,param3);
                        §§goto(addr105);
                     }
                     param3 = §§pop();
                     if(_loc5_ && §"_§)
                     {
                     }
                     §§goto(addr105);
                  }
                  §§goto(addr101);
               }
               addr105:
               if(_loc6_)
               {
                  §§push(param2.§,d§);
                  if(!(_loc5_ && param2))
                  {
                     §§push(§§pop());
                  }
               }
               return;
            }
            §§goto(addr68);
         }
         addr29:
      }
      
      public function get health() : Number
      {
         return this.§+r§;
      }
      
      public function set health(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§+r§ = param1;
         }
      }
      
      public function get healthMax() : Number
      {
         return this.§;F§;
      }
      
      public function get itemName() : String
      {
         return §%-§.itemName;
      }
      
      public function get §["+§() : Number
      {
         return this.§`+§;
      }
      
      public function get §[!2§() : §5!v§
      {
         return this.§"!b§;
      }
      
      public function get x() : Number
      {
         return §%!3§;
      }
      
      public function get y() : Number
      {
         return §?!e§;
      }
      
      public function get scale() : Number
      {
         return this.§6!r§;
      }
      
      public function get id() : int
      {
         return this.§>6§;
      }
      
      public function get §<!l§() : Boolean
      {
         return this.§ 8§ >= 0;
      }
      
      public function get defence() : Number
      {
         return this.§ 8§;
      }
      
      public function get §!?§() : Boolean
      {
         return this.§4s§;
      }
      
      public function set §!?§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            this.§4s§ = param1;
         }
      }
      
      public function get §?T§() : Number
      {
         return this.§="§;
      }
      
      public function get destroysCollidingObjects() : Boolean
      {
         return false;
      }
      
      public function get §%!,§() : Boolean
      {
         return this.§#""§;
      }
      
      public function set §%!,§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#""§ = param1;
         }
      }
      
      public function get §%!Q§() : Boolean
      {
         return this.§#!$§;
      }
      
      public function set §%!Q§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            this.§#!$§ = param1;
         }
      }
      
      public function getSpecialAnimationProgress() : Number
      {
         return -1;
      }
      
      public function get §9!%§() : §%!@§
      {
         return this.§`!f§;
      }
      
      public final function §3!'§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(this.§6N§)
            {
               throw new Error("Trying to assign LevelObject id twice !!!");
            }
            do
            {
               this.§6N§ = true;
               this.§>6§ = param1;
            }
            while(_loc3_ && this);
            
         }
      }
      
      protected function initializeHealth(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            if(_loc2_ || _loc3_)
            {
               if(§§pop() < 1)
               {
                  if(_loc2_)
                  {
                     addr76:
                     param1 = 1;
                  }
                  while(true)
                  {
                     addr44:
                     loop2:
                     while(_loc2_ || _loc2_)
                     {
                        while(true)
                        {
                           this.§+r§ = param1;
                           if(_loc2_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                        return;
                     }
                  }
                  addr77:
               }
               while(true)
               {
                  this.§;F§ = param1;
                  §§goto(addr44);
                  §§goto(addr77);
               }
            }
            §§goto(addr76);
         }
         §§goto(addr51);
      }
      
      protected function §>!;§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(param1 < 0)
            {
               if(_loc3_)
               {
                  §§push(this);
                  §§push(this.§+r§);
                  if(_loc3_ || param1)
                  {
                     §§push(§§pop() + param1);
                  }
                  §§pop().§+r§ = §§pop();
               }
            }
         }
      }
      
      protected function §&'§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:b2BodyDef = this.createBodyDefinition(param1,param2);
         if(_loc6_ || param2)
         {
            §<H§ = §-#§.CreateBody(_loc3_);
            while(true)
            {
               loop1:
               while(true)
               {
                  §<H§.SetUserData(this);
                  do
                  {
                     §]!_§ = this.§1-§();
                  }
                  while(_loc5_ && param2);
                  
                  if(!(_loc6_ || param1))
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  var _loc4_:b2FilterData = this.createFilterData();
                  if(!(_loc5_ && this))
                  {
                     if(!§%-§.isColliding)
                     {
                        if(!(_loc5_ && _loc3_))
                        {
                           addr116:
                           _loc4_.§`"%§ = 0;
                        }
                        while(true)
                        {
                        }
                        addr119:
                     }
                     while(true)
                     {
                        this.§>!2§(_loc4_);
                        if(_loc6_)
                        {
                           break;
                        }
                        §§goto(addr119);
                     }
                     return;
                  }
                  §§goto(addr116);
               }
            }
         }
         §§goto(addr60);
      }
      
      protected function §1-§() : b2Fixture
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2Fixture = §<H§.CreateFixture2(§%-§.shape.getB2Shape(),§%-§.getItemDensity());
         if(_loc2_)
         {
            _loc1_.§^X§(§%-§.getItemFriction());
         }
         do
         {
            _loc1_.§'N§(§%-§.getItemRestitution());
         }
         while(_loc3_);
         
         return _loc1_;
      }
      
      protected function createFilterData() : b2FilterData
      {
         return new b2FilterData();
      }
      
      protected function §8!D§() : §%!@§
      {
         return new §%!@§(this.§[!2§,sprite);
      }
      
      public function §>!2§(param1:b2FilterData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            if(§]!_§)
            {
               if(!(_loc3_ && _loc2_))
               {
                  addr52:
                  §]!_§.SetFilterData(param1);
               }
            }
            return;
         }
         §§goto(addr52);
      }
      
      public function §?",§(param1:§9B§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §%-§ = param1;
         }
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2BodyDef = new b2BodyDef();
         if(!_loc4_)
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
         §§goto(addr35);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.dispose();
            loop0:
            while(true)
            {
               this.§`!f§.dispose();
               do
               {
                  this.§!"#§ = null;
                  continue loop0;
               }
               while(!(_loc2_ || _loc1_));
               
            }
         }
      }
      
      public function §,3§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §^`§().SetAngle(param1);
         }
      }
      
      public function §[!G§() : Number
      {
         return §^`§().GetAngle();
      }
      
      public function §]!9§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            §^`§().SetLinearVelocity(param1);
            loop0:
            while(true)
            {
               §§push(param2);
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        §§push(param3);
                        if(_loc5_)
                        {
                           if(§§pop())
                           {
                              if(!_loc4_)
                              {
                                 addr46:
                                 if(!(_loc4_ && this))
                                 {
                                    while(true)
                                    {
                                       this.§2!G§();
                                    }
                                    addr53:
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       continue loop4;
                                       §§goto(addr46);
                                    }
                                    addr80:
                                 }
                              }
                              while(true)
                              {
                                 if(!_loc4_)
                                 {
                                    break loop4;
                                 }
                                 continue loop0;
                              }
                           }
                           break;
                        }
                        continue loop1;
                     }
                  }
                  continue loop0;
                  return;
               }
            }
         }
         §§goto(addr53);
      }
      
      public function §-"-§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            this.§!"#§ = param1;
         }
      }
      
      private function §4D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§!"#§)
            {
               loop0:
               while(true)
               {
                  this.§]!9§(this.§!"#§,false);
                  addr76:
                  while(true)
                  {
                     this.§!"#§ = null;
                     if(_loc2_ || this)
                     {
                        if(_loc2_ || _loc1_)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr25);
               }
            }
            addr25:
            return;
         }
         §§goto(addr76);
      }
      
      private function §6!$§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            if(§<H§)
            {
               if(!(_loc1_ && _loc1_))
               {
                  addr53:
                  this.§]h§.SetV(§<H§.GetLinearVelocity());
               }
            }
            return;
         }
         §§goto(addr53);
      }
      
      public function §3!Y§() : b2Vec2
      {
         return this.§]h§;
      }
      
      public function §6!d§(param1:b2Vec2 = null) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            if(!param1)
            {
               if(!(_loc2_ && this))
               {
                  param1 = §^`§().GetLinearVelocity();
                  addr38:
                  §§push(param1.x);
                  if(_loc3_)
                  {
                     §§push(0);
                     if(!(_loc2_ && _loc2_))
                     {
                        §§push(§§pop() == §§pop());
                        if(!_loc2_)
                        {
                           if(§§pop())
                           {
                              if(!(_loc2_ && _loc2_))
                              {
                                 §§pop();
                                 §§goto(addr126);
                              }
                           }
                        }
                        if(!§§pop())
                        {
                           §^`§().SetAngularVelocity(Math.atan2(param1.x,param1.y));
                           if(!(_loc2_ && _loc3_))
                           {
                              if(!(_loc3_ || _loc3_))
                              {
                                 addr122:
                                 §^`§().SetAngularVelocity(0);
                                 §§goto(addr126);
                              }
                              else
                              {
                                 addr106:
                              }
                           }
                           §§goto(addr126);
                        }
                        §§goto(addr122);
                     }
                  }
                  §§goto(addr120);
               }
               addr126:
               if(_loc3_)
               {
                  addr120:
                  §§push(param1.y == 0);
               }
               return;
            }
            §§goto(addr38);
         }
         §§goto(addr106);
      }
      
      public function §2!G§(param1:b2Vec2 = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            if(!param1)
            {
               addr35:
               param1 = §^`§().GetLinearVelocity();
            }
            var _loc2_:Number = Math.atan2(-param1.y,param1.x);
            if(!(_loc4_ && _loc3_))
            {
               this.§,3§(_loc2_);
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function §70§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            §^`§().SetAngularVelocity(param1);
         }
      }
      
      override public function render(param1:Number, param2:Number, param3:Number) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || param1)
         {
            super.render(param1,param2,param3);
            do
            {
               this.§`!f§.update(param1);
               loop1:
               do
               {
                  sprite.x = §%!3§;
                  while(true)
                  {
                     sprite.y = §?!e§;
                     while(_loc5_ || param2)
                     {
                        sprite.rotation = §!&§;
                        if(_loc5_ || param1)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
               while(_loc4_ && param1);
               
            }
            while(!(_loc5_ || param1));
            
         }
      }
      
      override public function update(param1:Number, param2:§3!#§) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.§4D§();
            loop0:
            do
            {
               super.update(param1,param2);
               loop1:
               while(this.§="§ >= 0)
               {
                  if(!(_loc4_ && param1))
                  {
                     if(_loc4_ && this)
                     {
                        continue;
                     }
                     §§push(this);
                     §§push(this.§="§);
                     if(_loc3_ || param1)
                     {
                        §§push(§§pop() + param1);
                     }
                     §§pop().§="§ = §§pop();
                     §§goto(addr98);
                     continue;
                  }
                  addr98:
                  while(true)
                  {
                     break loop1;
                  }
                  continue loop0;
               }
               while(true)
               {
                  this.§6!$§();
                  if(_loc3_ || _loc3_)
                  {
                     continue loop0;
                  }
                  §§goto(addr98);
               }
            }
            while(_loc4_ && param1);
            
         }
      }
      
      public function updateOutOfBounds(param1:§3!#§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || param1)
         {
            this.§9Y§ = true;
         }
      }
      
      public function updateBeforeRemoving(param1:§3!#§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(!this.§9Y§)
            {
               if(!(_loc2_ && this))
               {
                  addr54:
                  this.addDestructionParticles(param1);
               }
            }
            return;
         }
         §§goto(addr54);
      }
      
      override public function get removeOnNextUpdate() : Boolean
      {
         return this.health == 0;
      }
      
      public function §0x§() : Boolean
      {
         return this.§5!J§ == §9B§.§,7§;
      }
      
      public function §!"'§() : Boolean
      {
         return this.§5!J§ == §9B§.§&!R§;
      }
      
      public function §>""§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.itemName);
            loop0:
            while(true)
            {
               §§push(§§pop() == "MISC_EXPLOSIVE_TNT");
               addr92:
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     loop3:
                     while(true)
                     {
                        if(§§pop())
                        {
                           if(!_loc2_)
                           {
                              if(_loc1_ || this)
                              {
                                 §§push(true);
                                 break;
                              }
                              continue loop0;
                           }
                        }
                        §§push(false);
                        if(!_loc1_)
                        {
                           break;
                        }
                        if(_loc1_ || _loc2_)
                        {
                           if(!(_loc2_ && this))
                           {
                              return §§pop();
                           }
                        }
                        else
                        {
                           while(true)
                           {
                              if(!(_loc2_ && _loc1_))
                              {
                                 continue loop3;
                              }
                              continue loop1;
                           }
                           addr57:
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
            addr90:
         }
         while(true)
         {
            §§push(this.itemName);
            if(!_loc2_)
            {
               §§goto(addr57);
               §§push(§§pop() == "POWERUP_BOMB");
            }
            else
            {
               §§goto(addr90);
            }
            §§goto(addr92);
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
      
      public function §;<§() : Number
      {
         return Number(Math.sqrt(§^`§().GetLinearVelocity().x * §^`§().GetLinearVelocity().x + §^`§().GetLinearVelocity().y * §^`§().GetLinearVelocity().y));
      }
      
      protected function handleInitialCollision() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§="§ = 0;
         }
      }
      
      protected function §"!Y§() : void
      {
      }
      
      protected function § !p§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§]Y§(§,4§.§ !x§);
         }
      }
      
      protected function §]?§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§]Y§(§,4§.§-!A§);
         }
      }
      
      protected function §<#§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§]Y§(§,4§.§2!W§);
         }
      }
      
      public function applyDamage(param1:Number, param2:§3!#§, param3:§"_§, param4:Boolean = true) : Number
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         if(_loc8_)
         {
            §§push(this.§="§);
            loop0:
            while(true)
            {
               §§push(0);
               loop1:
               while(true)
               {
                  if(§§pop() >= §§pop())
                  {
                     this.§"!Y§();
                     loop2:
                     while(true)
                     {
                        while(true)
                        {
                           §§push(this.§ 8§);
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
                                             addr477:
                                             while(true)
                                             {
                                                §§push(this.§ 8§);
                                                addr457:
                                                while(true)
                                                {
                                                   if(!_loc8_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   §§push(1000000);
                                                   while(true)
                                                   {
                                                      §§push(§§pop() >= §§pop());
                                                   }
                                                }
                                             }
                                          }
                                          addr476:
                                       }
                                       while(true)
                                       {
                                          loop10:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                while(true)
                                                {
                                                   §§push(param1);
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(this.§ 8§);
                                                      loop13:
                                                      while(true)
                                                      {
                                                         if(§§pop() > §§pop())
                                                         {
                                                            loop14:
                                                            while(true)
                                                            {
                                                               §§push(param1);
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     §§push(this.§ 8§);
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(!_loc8_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§§pop() - §§pop());
                                                                        loop16:
                                                                        while(true)
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              §§push(Number(§§pop()));
                                                                              loop17:
                                                                              while(true)
                                                                              {
                                                                                 param1 = §§pop();
                                                                                 loop18:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc8_)
                                                                                    {
                                                                                       continue loop14;
                                                                                    }
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       §§push(param4);
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          §§push(Boolean(§§pop()));
                                                                                          if(!_loc7_)
                                                                                          {
                                                                                             addr333:
                                                                                             if(!(_loc8_ || param1))
                                                                                             {
                                                                                                continue loop10;
                                                                                             }
                                                                                             §§push(§§pop());
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                continue loop7;
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                loop19:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   addr345:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc8_)
                                                                                                      {
                                                                                                         if(_loc8_ || this)
                                                                                                         {
                                                                                                            §§push(this.isDamageAwardingScore());
                                                                                                            loop21:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc8_ || this)
                                                                                                               {
                                                                                                                  if(!(_loc8_ || this))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(Boolean(§§pop()));
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     loop22:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(int(Math.min(this.§+r§,int(param1))));
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop());
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc5_ = §§pop();
                                                                                                                                 }
                                                                                                                                 addr322:
                                                                                                                              }
                                                                                                                              loop25:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(int(§§pop()));
                                                                                                                                 loop26:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc6_ = §§pop();
                                                                                                                                    addr325:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(param2)
                                                                                                                                       {
                                                                                                                                          loop28:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc8_ || param2))
                                                                                                                                             {
                                                                                                                                                continue loop18;
                                                                                                                                             }
                                                                                                                                             §§push(_loc6_);
                                                                                                                                             if(_loc8_ || param2)
                                                                                                                                             {
                                                                                                                                                §§push(param2.damageScoreMultiplier);
                                                                                                                                                if(!_loc8_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                   addr268:
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                while(_loc8_)
                                                                                                                                                {
                                                                                                                                                   if(_loc7_ && param2)
                                                                                                                                                   {
                                                                                                                                                      addr450:
                                                                                                                                                      if(§§pop() <= 12)
                                                                                                                                                      {
                                                                                                                                                         addr438:
                                                                                                                                                         addr439:
                                                                                                                                                         §§push(param1);
                                                                                                                                                         §§push(3);
                                                                                                                                                         if(_loc7_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr450);
                                                                                                                                                         }
                                                                                                                                                         if(§§pop() > §§pop())
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr442);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      this.§]?§();
                                                                                                                                                      addr278:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      addr450:
                                                                                                                                                      addr449:
                                                                                                                                                   }
                                                                                                                                                   §§push(int(§§pop()));
                                                                                                                                                   while(!(_loc7_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         continue loop25;
                                                                                                                                                      }
                                                                                                                                                      _loc6_ = §§pop();
                                                                                                                                                      loop31:
                                                                                                                                                      for(; !_loc7_; if(_loc7_ && param2)
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      },if(_loc7_)
                                                                                                                                                      {
                                                                                                                                                         continue loop28;
                                                                                                                                                      },if(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         continue loop22;
                                                                                                                                                         addr149:
                                                                                                                                                      },§§goto(addr477))
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            param2.addScore(_loc6_,§!]§.§%!&§,this.§+r§ > param1,§^`§().GetPosition().x,§^`§().GetPosition().y,§2_§.§1!B§(this.itemName));
                                                                                                                                                            while(_loc8_ || param1)
                                                                                                                                                            {
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this);
                                                                                                                                                                  §§push(this.§+r§);
                                                                                                                                                                  if(!_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - param1);
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().§+r§ = §§pop();
                                                                                                                                                                  addr202:
                                                                                                                                                                  while(!_loc7_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§+r§);
                                                                                                                                                                     continue loop16;
                                                                                                                                                                  }
                                                                                                                                                                  addr453:
                                                                                                                                                               }
                                                                                                                                                               while(!(_loc7_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  continue loop31;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr466:
                                                                                                                                                            this.§ !p§();
                                                                                                                                                            addr468:
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      if(!(_loc7_ && this))
                                                                                                                                                      {
                                                                                                                                                         this.§<#§();
                                                                                                                                                         addr377:
                                                                                                                                                         §§push(this.§+r§);
                                                                                                                                                         if(!(_loc7_ && param2))
                                                                                                                                                         {
                                                                                                                                                            return §§pop();
                                                                                                                                                         }
                                                                                                                                                         continue loop12;
                                                                                                                                                         addr426:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         addr444:
                                                                                                                                                      }
                                                                                                                                                      addr442:
                                                                                                                                                      this.§<#§();
                                                                                                                                                   }
                                                                                                                                                   continue loop26;
                                                                                                                                                   §§goto(addr453);
                                                                                                                                                   return this.§+r§;
                                                                                                                                                }
                                                                                                                                                continue loop17;
                                                                                                                                             }
                                                                                                                                             §§goto(addr278);
                                                                                                                                          }
                                                                                                                                          §§goto(addr322);
                                                                                                                                       }
                                                                                                                                       §§goto(addr205);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr311:
                                                                                                                        }
                                                                                                                        §§goto(addr193);
                                                                                                                        addr43:
                                                                                                                        addr24:
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
                                                                                                                           if(!(_loc7_ && param3))
                                                                                                                           {
                                                                                                                              if(!_loc7_)
                                                                                                                              {
                                                                                                                                 continue loop19;
                                                                                                                              }
                                                                                                                              continue loop21;
                                                                                                                           }
                                                                                                                           continue loop22;
                                                                                                                           §§goto(addr149);
                                                                                                                        }
                                                                                                                        §§push(this.§+r§);
                                                                                                                        if(_loc7_)
                                                                                                                        {
                                                                                                                           continue loop16;
                                                                                                                        }
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           if(!(_loc8_ || this))
                                                                                                                           {
                                                                                                                              continue loop15;
                                                                                                                           }
                                                                                                                           if(!_loc7_)
                                                                                                                           {
                                                                                                                              return §§pop();
                                                                                                                           }
                                                                                                                           §§goto(addr438);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr268);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr476);
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                         §§goto(addr450);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         addr394:
                                                                                                         if(_loc7_)
                                                                                                         {
                                                                                                            continue loop2;
                                                                                                         }
                                                                                                         §§push(param1);
                                                                                                         §§push(3);
                                                                                                         if(!(_loc7_ && this))
                                                                                                         {
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               break loop18;
                                                                                                            }
                                                                                                            if(_loc8_ || param3)
                                                                                                            {
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                                  continue loop5;
                                                                                                               }
                                                                                                               if(§§pop() > §§pop())
                                                                                                               {
                                                                                                                  §§goto(addr417);
                                                                                                               }
                                                                                                               §§goto(addr377);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§goto(addr460);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr439);
                                                                                                   }
                                                                                                }
                                                                                                addr344:
                                                                                             }
                                                                                             §§goto(addr309);
                                                                                          }
                                                                                          §§goto(addr344);
                                                                                       }
                                                                                       §§goto(addr333);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       addr463:
                                                                                       §§push(param1);
                                                                                    }
                                                                                 }
                                                                                 addr465:
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    §§goto(addr466);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr449);
                                                                                    §§push(param1);
                                                                                 }
                                                                                 §§goto(addr427);
                                                                              }
                                                                           }
                                                                           §§goto(addr465);
                                                                        }
                                                                        continue loop4;
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                                  §§goto(addr377);
                                                               }
                                                               continue loop1;
                                                            }
                                                         }
                                                         §§goto(addr394);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr463);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr498);
               }
            }
         }
         §§goto(addr477);
      }
      
      protected function setDamageState(param1:Number, param2:§3!#§) : Boolean
      {
         return this.§`!f§.setDamageState(param1,false);
      }
      
      public function causedDamageToObjects() : void
      {
      }
      
      public function §]Y§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            §"_§.§>,§(param1,§%-§.soundResource);
         }
      }
      
      public function § Y§(param1:String) : Number
      {
         return §%-§.getDamageMultiplier(param1) * this.§`+§;
      }
      
      public function §+l§(param1:String) : Number
      {
         return §%-§.getVelocityMultiplier(param1);
      }
      
      public function §[,§() : String
      {
         return §%-§.materialName;
      }
      
      public function §@i§() : Number
      {
         return §%-§.getItemStrength();
      }
      
      public function §@"+§() : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:int = 30;
         if(!_loc2_)
         {
            §§push(Boolean(§^`§().IsAwake()));
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
                           §§push(this is §?!z§);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop());
                              loop5:
                              while(true)
                              {
                                 if(!§§pop())
                                 {
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       loop10:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             while(true)
                                             {
                                                §§pop();
                                                addr165:
                                                while(!_loc2_)
                                                {
                                                   §§push(Math.abs(§^`§().GetLinearVelocity().x) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                   while(!_loc2_)
                                                   {
                                                   }
                                                   continue loop2;
                                                }
                                                continue loop3;
                                             }
                                             addr164:
                                          }
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop15:
                                             while(_loc3_ || this)
                                             {
                                                if(!§§pop())
                                                {
                                                   loop16:
                                                   for(; !_loc2_; if(!(_loc3_ || _loc1_))
                                                   {
                                                      continue;
                                                   },if(!_loc2_)
                                                   {
                                                      §§goto(addr51);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr118);
                                                   })
                                                   {
                                                      §§pop();
                                                      loop17:
                                                      while(_loc3_ || _loc2_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(Math.abs(§^`§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                            addr67:
                                                            while(true)
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!_loc3_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(_loc2_)
                                                                  {
                                                                     continue loop10;
                                                                  }
                                                                  if(!(_loc3_ || _loc1_))
                                                                  {
                                                                     continue loop1;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     §§goto(addr51);
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        if(_loc3_ || this)
                                                                        {
                                                                           §§pop();
                                                                           if(_loc3_)
                                                                           {
                                                                              if(_loc2_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue;
                                                                           }
                                                                           continue loop17;
                                                                        }
                                                                        addr174:
                                                                        while(true)
                                                                        {
                                                                           §§pop();
                                                                           break loop17;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr164);
                                                                     }
                                                                  }
                                                                  §§goto(addr165);
                                                                  if(_loc3_ || _loc3_)
                                                                  {
                                                                     continue loop16;
                                                                  }
                                                               }
                                                               continue loop15;
                                                            }
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§push(this.§+r§ == this.§;F§);
                                                         break loop16;
                                                      }
                                                   }
                                                   continue loop4;
                                                }
                                                §§goto(addr67);
                                             }
                                             continue loop5;
                                          }
                                       }
                                    }
                                    addr161:
                                 }
                                 §§goto(addr174);
                              }
                           }
                        }
                     }
                  }
                  addr51:
                  return §§pop();
               }
               if(_loc2_ && _loc1_)
               {
                  continue;
               }
               §§goto(addr161);
            }
         }
         §§goto(addr140);
      }
      
      public function §^" §() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(!§^`§().IsAwake())
            {
               if(!(_loc1_ && this))
               {
                  addr45:
                  §§push(true);
                  if(_loc2_ || _loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr54:
                  §§push(this.isMoving());
                  if(!(_loc1_ && _loc2_))
                  {
                     return !§§pop();
                  }
               }
               return §§pop();
            }
            §§goto(addr54);
         }
         §§goto(addr45);
      }
      
      protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 10;
         if(_loc2_)
         {
            §§push(Math.abs(§^`§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * _loc1_);
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
                        addr153:
                        while(true)
                        {
                           §§push(Math.abs(§^`§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * _loc1_);
                        }
                     }
                     addr152:
                  }
                  while(true)
                  {
                     loop5:
                     do
                     {
                        §§push(§§pop());
                        if(!(_loc2_ || _loc3_))
                        {
                           continue loop1;
                        }
                        if(§§pop())
                        {
                           loop6:
                           while(true)
                           {
                              §§pop();
                              loop7:
                              while(!(_loc3_ && _loc2_))
                              {
                                 §§push(Math.abs(§^`§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * _loc1_);
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          if(!(_loc3_ && _loc1_))
                                          {
                                             while(true)
                                             {
                                                §§push(false);
                                                continue loop6;
                                             }
                                             addr62:
                                          }
                                          else if(_loc3_ && _loc3_)
                                          {
                                             continue loop7;
                                          }
                                       }
                                       §§push(true);
                                       if(!_loc3_)
                                       {
                                          continue;
                                       }
                                       continue loop6;
                                    }
                                 }
                                 continue loop5;
                              }
                              §§goto(addr153);
                           }
                        }
                        §§goto(addr53);
                     }
                     while(_loc3_);
                     
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      public function §@!Y§(param1:Number = 3) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§`+§ = param1;
         }
      }
      
      public function §[z§(param1:Boolean) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         if(!_loc3_)
         {
            if(§%-§.getItemBodyType() != §#c§.§9&§)
            {
               §§push(§^`§().GetMass() / §]!_§.GetDensity());
               loop0:
               while(true)
               {
                  if(!_loc3_)
                  {
                     §§push(Number(§§pop()));
                     loop1:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        loop2:
                        while(true)
                        {
                           if(param1)
                           {
                              if(!(_loc3_ && this))
                              {
                                 if(_loc4_ || param1)
                                 {
                                    if(_loc4_)
                                    {
                                       §§push(_loc2_);
                                       if(!(_loc3_ && _loc2_))
                                       {
                                          if(!_loc4_)
                                          {
                                             break;
                                          }
                                          if(!_loc3_)
                                          {
                                             §§push(this.§#!_§());
                                             if(!(_loc3_ && param1))
                                             {
                                                if(_loc4_ || _loc3_)
                                                {
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc4_)
                                                      {
                                                         continue loop1;
                                                      }
                                                      addr117:
                                                      loop4:
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                         addr118:
                                                         while(_loc4_ || _loc2_)
                                                         {
                                                            while(true)
                                                            {
                                                               continue loop4;
                                                            }
                                                            continue loop4;
                                                         }
                                                         continue loop2;
                                                      }
                                                      addr117:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         addr169:
                                                         while(true)
                                                         {
                                                            §§push(§?!'§.§'!i§);
                                                            addr171:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §?!'§.§'!i§);
                                                               addr174:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr158:
                                                   }
                                                   loop3:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      addr176:
                                                      while(true)
                                                      {
                                                         _loc2_ = §§pop();
                                                         addr177:
                                                         while(true)
                                                         {
                                                            §§goto(addr23);
                                                         }
                                                         continue loop3;
                                                      }
                                                   }
                                                }
                                                §§goto(addr171);
                                             }
                                             §§goto(addr174);
                                          }
                                          §§goto(addr176);
                                       }
                                       §§goto(addr117);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          §§push(this.§`!f§.width);
                                          if(_loc4_ || _loc3_)
                                          {
                                             §§goto(addr158);
                                             §§push(this.§`!f§.height);
                                          }
                                       }
                                       addr145:
                                    }
                                    §§goto(addr176);
                                 }
                                 §§goto(addr177);
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr23);
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr169);
               }
            }
            §§goto(addr145);
         }
         §§goto(addr125);
      }
      
      public function §#!_§() : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = Number(1);
         if(_loc2_)
         {
            §§push(_loc1_);
            if(_loc2_)
            {
               §§push(_loc1_);
               if(!_loc3_)
               {
                  §§push(2);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc3_)
                     {
                        addr48:
                        §§push(§§pop() * Math.min(10,this.§`!f§.§^Q§ - 1));
                        if(_loc2_)
                        {
                           addr59:
                           §§push(§§pop() / 10);
                        }
                     }
                     §§push(§§pop() - §§pop());
                     if(_loc2_ || _loc1_)
                     {
                        §§push(Number(§§pop()));
                        if(_loc2_)
                        {
                           addr81:
                           _loc1_ = §§pop();
                           return _loc1_;
                        }
                     }
                  }
                  §§goto(addr59);
               }
               §§goto(addr48);
            }
         }
         §§goto(addr81);
      }
      
      public function §+x§(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc2_:* = Number(§^`§().GetLinearVelocity().x);
         var _loc3_:* = Number(§^`§().GetLinearVelocity().y);
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
         if(_loc6_ || _loc2_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(_loc5_);
               addr141:
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  loop2:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     while(true)
                     {
                        _loc2_ = §§pop();
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!_loc7_)
                           {
                              continue loop0;
                           }
                           addr110:
                           if(!(_loc7_ && _loc2_))
                           {
                              addr118:
                              §§push(Number(§§pop()));
                              if(_loc7_ && this)
                              {
                                 break;
                              }
                              _loc3_ = §§pop();
                              while(!_loc7_)
                              {
                                 §^`§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
                                 if(_loc6_)
                                 {
                                    return;
                                    addr82:
                                 }
                              }
                              continue;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      protected function addTrail(param1:§3!#§) : Boolean
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
      
      protected function addDestructionParticles(param1:§3!#§) : void
      {
      }
      
      public function addDamageParticles(param1:§3!#§, param2:int) : void
      {
      }
      
      override protected function updateGravityFilter() : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:* = §?!D§;
         if(!_loc3_)
         {
            §§push(GravityFilterCategory.FORCE_OBJECT);
            if(!(_loc3_ && _loc1_))
            {
               if(§§pop() === _loc1_)
               {
                  if(!_loc3_)
                  {
                     §§push(0);
                     if(_loc2_)
                     {
                        addr170:
                        loop4:
                        switch(§§pop())
                        {
                           case 0:
                              §<H§.SetLinearDamping(§=b§.§""-§);
                              §<H§.SetAngularDamping(§=b§.§"!u§);
                              loop1:
                              while(true)
                              {
                                 §<H§.SetGravityScale(0);
                                 addr76:
                                 while(_loc3_ && _loc1_)
                                 {
                                    continue loop1;
                                 }
                                 break loop4;
                              }
                              break;
                              addr106:
                           case 1:
                              §<H§.SetLinearDamping(§=b§.§3!Q§);
                              if(!(_loc3_ && _loc3_))
                              {
                                 §<H§.SetAngularDamping(§=b§.§[!P§);
                                 loop3:
                                 while(true)
                                 {
                                    addr35:
                                    while(true)
                                    {
                                       §<H§.SetGravityScale(0);
                                       if(!_loc3_)
                                       {
                                          if(!(_loc2_ || _loc3_))
                                          {
                                             continue loop3;
                                          }
                                          if(_loc2_)
                                          {
                                             break loop4;
                                          }
                                          §§goto(addr106);
                                       }
                                       break loop4;
                                    }
                                    break loop4;
                                 }
                              }
                              break;
                           case 2:
                              break;
                           default:
                              super.updateGravityFilter();
                              if(_loc2_)
                              {
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    if(true)
                                    {
                                       break;
                                    }
                                    §§goto(addr35);
                                 }
                                 §§goto(addr76);
                              }
                        }
                        return;
                        addr128:
                     }
                  }
                  else
                  {
                     addr137:
                     §§push(1);
                     if(!(_loc2_ || this))
                     {
                        addr165:
                     }
                  }
                  §§goto(addr170);
               }
               else
               {
                  §§push(GravityFilterCategory.YODA_FORCE_OBJECT);
                  if(!_loc3_)
                  {
                     if(§§pop() === _loc1_)
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr137);
                        }
                        else
                        {
                           addr152:
                           §§push(2);
                           if(_loc2_)
                           {
                              §§goto(addr165);
                           }
                           §§goto(addr170);
                        }
                     }
                     else
                     {
                        §§push(GravityFilterCategory.LEIA_FORCE_OBJECT);
                        if(!_loc2_)
                        {
                        }
                        §§goto(addr170);
                     }
                     §§goto(addr170);
                  }
                  if(§§pop() === _loc1_)
                  {
                     §§goto(addr152);
                  }
                  else
                  {
                     §§push(3);
                  }
               }
               §§goto(addr170);
            }
            §§goto(addr128);
         }
         §§goto(addr152);
      }
      
      public function §^s§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:b2Vec2 = §^`§().GetPosition();
         §§push(_loc4_);
         §§push(_loc4_.x);
         if(!(_loc6_ && param2))
         {
            §§push(param2.x * param1);
            if(_loc5_)
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
            if(_loc5_ || this)
            {
               §§push(param2.y * param1);
               if(!(_loc6_ && param3))
               {
                  §§push(§§pop() * param3);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().y = §§pop();
            do
            {
               §^`§().SetPosition(_loc4_);
            }
            while(_loc6_);
            
         }
      }
      
      public function §7Q§(param1:String, param2:String, param3:§3!#§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param1;
         if(_loc6_ || this)
         {
            if("removeGravityFilterCategory" === _loc4_)
            {
               addr49:
               §§push(0);
               if(_loc5_)
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
                  §5y§ = -1;
                  if(!_loc5_)
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
