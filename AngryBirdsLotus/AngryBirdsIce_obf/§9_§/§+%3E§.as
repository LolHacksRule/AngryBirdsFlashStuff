package §9_§
{
   import §#J§.§'b§;
   import §#J§.§>=§;
   import §3O§.§@6§;
   import §4N§.§&!@§;
   import §4N§.§2D§;
   import §4N§.§7E§;
   import §4N§.§9o§;
   import §4N§.§`!%§;
   import §;8§.§3f§;
   import §[x§.§2^§;
   import §[x§.§^;§;
   import §^V§.Sprite;
   import com.rovio.Box2D.Collision.Shapes.b2PolygonShape;
   import com.rovio.Box2D.Common.Math.b2Vec2;
   import com.rovio.Box2D.Common.b2Settings;
   import com.rovio.Box2D.Dynamics.b2Body;
   import com.rovio.Box2D.Dynamics.b2BodyDef;
   import com.rovio.Box2D.Dynamics.b2FilterData;
   import com.rovio.Box2D.Dynamics.b2Fixture;
   import com.rovio.Box2D.Dynamics.b2World;
   import flash.geom.Point;
   
   public class §+>§
   {
      
      public static const §=n§:uint;
      
      public static const §1j§:uint;
      
      public static const §!L§:uint;
      
      public static const §,=§:uint;
      
      public static const §"!B§:Boolean = true;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(§§findproperty(§=n§));
            §§push(1);
            if(_loc1_)
            {
               §§push(§§pop() << §§pop());
            }
            §§pop().§=n§ = §§pop();
            do
            {
               §§push(§§findproperty(§1j§));
               §§push(1);
               if(_loc1_ || _loc2_)
               {
                  §§push(§§pop() << 2);
               }
               §§pop().§1j§ = §§pop();
               loop1:
               do
               {
                  §§push(§§findproperty(§!L§));
                  §§push(1);
                  if(_loc1_ || §+>§)
                  {
                     §§push(§§pop() << 3);
                  }
                  §§pop().§!L§ = §§pop();
                  while(true)
                  {
                     §§push(§§findproperty(§,=§));
                     §§push(1);
                     if(_loc1_)
                     {
                        §§push(§§pop() << 4);
                     }
                     §§pop().§,=§ = §§pop();
                     while(!(_loc2_ && §+>§))
                     {
                        §"!B§ = true;
                        if(!(_loc2_ && §+>§))
                        {
                           continue loop1;
                        }
                     }
                  }
               }
               while(!_loc1_);
               
            }
            while(_loc2_);
            
         }
      }
      
      private var §%@§:int;
      
      private var §2S§:int;
      
      public var §57§:String;
      
      public var §&!E§:int;
      
      private var §>!F§:§9o§;
      
      private var §%C§:§?!!§;
      
      private var §#_§:b2World;
      
      private var §>!-§:b2Fixture;
      
      private var §5^§:b2Body;
      
      private var §96§:b2Vec2;
      
      public var §8!'§:Number;
      
      public var §[!3§:Number;
      
      private var §+f§:Number;
      
      private var §3h§:Boolean = false;
      
      private var §<@§:Number;
      
      private var §4T§:Number;
      
      private var §&#§:Number;
      
      private var §+!3§:Number;
      
      private var §%N§:Number;
      
      private var §-i§:Number;
      
      public var §"G§:Number = 1;
      
      private var §,!E§:Boolean = false;
      
      public var §^d§:Number = 0;
      
      public var §+p§:Number = 0;
      
      protected var §%w§:Boolean = false;
      
      public var §<p§:§`-§;
      
      private var §1-§:Sprite;
      
      private var §-Y§:Number = 0;
      
      private var §%!;§:Number = 0;
      
      private var §]!=§:Number = 0;
      
      private var §,&§:Number = 1.0;
      
      private var §implements§:Boolean = false;
      
      private var §,u§:Boolean = true;
      
      public function §+>§(param1:§?!!§, param2:Sprite, param3:b2World, param4:§2^§, param5:int, param6:String, param7:Number, param8:Number, param9:Number, param10:Number, param11:Boolean = false)
      {
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = true;
         var _loc14_:b2PolygonShape = null;
         if(!(_loc16_ && this))
         {
            super();
            this.§57§ = param6;
            this.§>!F§ = §&!@§.§9B§(param6);
         }
         loop0:
         while(true)
         {
            this.§%C§ = param1;
            while(true)
            {
               this.§1-§ = param2;
               while(true)
               {
                  this.§,&§ = param10;
                  continue loop0;
                  addr52:
                  §§pop().§-!!§(§§pop() == §2D§.§>!$§);
                  do
                  {
                     this.§#_§ = param3;
                  }
                  while(!(_loc17_ || param2));
                  
                  if(_loc16_)
                  {
                     continue;
                  }
                  if(false)
                  {
                     loop4:
                     while(true)
                     {
                        §§push(this.§<p§);
                        if(_loc17_)
                        {
                           §§push(this.§2S§);
                           if(!_loc16_)
                           {
                              §§goto(addr52);
                           }
                        }
                        else
                        {
                           addr74:
                           while(true)
                           {
                              §§push(this.§2S§);
                           }
                           addr74:
                        }
                        while(true)
                        {
                           §§pop().§!P§(§§pop(),this.§>!F§.§6!5§(),this.§>!F§.§6Y§() / §2^§.§,]§,this.§>!F§.§0!6§() / §2^§.§,]§);
                           continue loop4;
                        }
                     }
                     continue;
                     addr43:
                  }
                  var _loc12_:b2BodyDef = this.createBodyDefinition(param7,param8);
                  if(!(_loc16_ && param2))
                  {
                     this.§5^§ = this.§#_§.CreateBody(_loc12_);
                     if(_loc17_ || param2)
                     {
                        this.§5^§.SetUserData(this);
                        if(!(_loc16_ && param1))
                        {
                           §§push(this.§2S§);
                           if(_loc17_ || param3)
                           {
                              §§push(§2D§.§+X§);
                              if(!_loc16_)
                              {
                                 if(§§pop() == §§pop())
                                 {
                                    §§push(b2PolygonShape);
                                    §§push(this.§>!F§.shape.§?!#§);
                                    if(_loc17_)
                                    {
                                       §§push(param10);
                                       if(!(_loc16_ && param1))
                                       {
                                          addr239:
                                          §§push(§§pop() * §§pop());
                                          §§push(this.§>!F§.shape.§26§);
                                          if(!_loc16_)
                                          {
                                             addr245:
                                             §§push(§§pop() * param10);
                                          }
                                          _loc14_ = §§pop().AsBox(§§pop(),§§pop());
                                          if(!_loc16_)
                                          {
                                             this.§>!-§ = this.§5^§.CreateFixture2(_loc14_,this.§>!F§.§@!A§());
                                             if(!_loc16_)
                                             {
                                                addr331:
                                                §§push(this.§>!-§);
                                                if(!(_loc16_ && param1))
                                                {
                                                   §§push(this.§>!F§);
                                                   if(!_loc16_)
                                                   {
                                                      §§push(§§pop().§"[§());
                                                      if(!_loc16_)
                                                      {
                                                         §§pop().SetFriction(§§pop());
                                                         addr477:
                                                         if(!(_loc16_ && param3))
                                                         {
                                                            addr359:
                                                            §§push(this.§>!-§);
                                                            §§push(this.§>!F§.§,;§());
                                                         }
                                                         var _loc13_:b2FilterData = new b2FilterData();
                                                         if(!this.§!!8§())
                                                         {
                                                            addr437:
                                                            §§push(this.§57§.toUpperCase() == "MISC_WHITE_BIRD_EGG");
                                                            if(_loc17_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  if(_loc17_ || param3)
                                                                  {
                                                                     if(_loc17_ || param1)
                                                                     {
                                                                        §§pop();
                                                                        §§push(this.§57§);
                                                                        if(!(_loc17_ || param3))
                                                                        {
                                                                           §§goto(addr437);
                                                                        }
                                                                        §§push(§§pop().toUpperCase() == "MISC_FOOD_EGG");
                                                                        if(!_loc16_)
                                                                        {
                                                                           addr412:
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc17_ || this)
                                                                              {
                                                                                 _loc13_.categoryBits = §1j§;
                                                                                 if(!(_loc16_ && param1))
                                                                                 {
                                                                                    §§push(_loc13_);
                                                                                    §§push(65535);
                                                                                    if(_loc17_ || param1)
                                                                                    {
                                                                                       §§push(§§pop() & ~§=n§);
                                                                                    }
                                                                                    §§pop().maskBits = §§pop();
                                                                                    addr376:
                                                                                    this.§>!-§.SetFilterData(_loc13_);
                                                                                    this.§+f§ = this.§>!F§.§2!=§();
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       if(false)
                                                                                       {
                                                                                          §§goto(addr376);
                                                                                       }
                                                                                       §§push(this.§>!F§);
                                                                                       if(!(_loc16_ && this))
                                                                                       {
                                                                                          §§push(§§pop().§[!3§);
                                                                                          if(!_loc16_)
                                                                                          {
                                                                                             §§push(0);
                                                                                             if(!_loc16_)
                                                                                             {
                                                                                                if(§§pop() > §§pop())
                                                                                                {
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      this.§8!'§ = this.§[!3§ = this.§>!F§.§[!3§;
                                                                                                      addr637:
                                                                                                      addr639:
                                                                                                      if(this.§>!F§.§&!E§ == §9o§.§[H§)
                                                                                                      {
                                                                                                         this.§1-§.visible = false;
                                                                                                         addr617:
                                                                                                         if(this.isTexture())
                                                                                                         {
                                                                                                            if(_loc16_)
                                                                                                            {
                                                                                                            }
                                                                                                            addr636:
                                                                                                            §§goto(addr617);
                                                                                                         }
                                                                                                         addr623:
                                                                                                         addr625:
                                                                                                         addr624:
                                                                                                         if(param9 != 0)
                                                                                                         {
                                                                                                            addr626:
                                                                                                            this.§9F§(param9);
                                                                                                         }
                                                                                                         this.§,F§();
                                                                                                         this.§%1§(0,1);
                                                                                                         addr616:
                                                                                                         addr602:
                                                                                                         §§push(this.§<p§);
                                                                                                         if(!_loc16_)
                                                                                                         {
                                                                                                            §§pop().§9%§(this.§>!F§.shape);
                                                                                                            if(_loc17_ || param1)
                                                                                                            {
                                                                                                               if(!_loc16_)
                                                                                                               {
                                                                                                                  if(_loc16_)
                                                                                                                  {
                                                                                                                     §§goto(addr626);
                                                                                                                  }
                                                                                                                  return;
                                                                                                                  addr596:
                                                                                                               }
                                                                                                               §§goto(addr616);
                                                                                                            }
                                                                                                            §§goto(addr602);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(this.§<p§);
                                                                                                      }
                                                                                                      §§pop().setDamagedFrame();
                                                                                                      §§goto(addr636);
                                                                                                   }
                                                                                                   §§goto(addr626);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   this.§8!'§ = this.§[!3§ = Math.round(this.§8@§(true) * this.§>!F§.§&! §());
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      §§push(this.§8!'§);
                                                                                                      if(!(_loc16_ && param2))
                                                                                                      {
                                                                                                         addr549:
                                                                                                         §§push(1);
                                                                                                         if(!_loc16_)
                                                                                                         {
                                                                                                            if(§§pop() < §§pop())
                                                                                                            {
                                                                                                               if(!(_loc16_ && param2))
                                                                                                               {
                                                                                                                  this.§8!'§ = this.§[!3§ = 1;
                                                                                                                  if(_loc17_)
                                                                                                                  {
                                                                                                                     §§goto(addr637);
                                                                                                                  }
                                                                                                                  §§goto(addr623);
                                                                                                               }
                                                                                                               §§goto(addr636);
                                                                                                            }
                                                                                                            §§goto(addr637);
                                                                                                         }
                                                                                                         §§goto(addr625);
                                                                                                      }
                                                                                                      §§goto(addr624);
                                                                                                   }
                                                                                                   §§goto(addr636);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr623);
                                                                                          }
                                                                                          §§goto(addr549);
                                                                                       }
                                                                                       §§goto(addr639);
                                                                                    }
                                                                                    §§goto(addr596);
                                                                                 }
                                                                                 §§goto(addr636);
                                                                              }
                                                                              §§goto(addr623);
                                                                           }
                                                                           §§goto(addr376);
                                                                        }
                                                                        §§goto(addr617);
                                                                     }
                                                                     §§goto(addr477);
                                                                  }
                                                                  §§goto(addr617);
                                                               }
                                                               §§goto(addr412);
                                                            }
                                                            §§goto(addr617);
                                                         }
                                                         if(!(_loc16_ && param2))
                                                         {
                                                            _loc13_.categoryBits = §=n§;
                                                            if(_loc17_)
                                                            {
                                                               §§push(_loc13_);
                                                               §§push(65535);
                                                               if(!(_loc16_ && param2))
                                                               {
                                                                  §§push(§§pop() & ~§1j§);
                                                               }
                                                               §§pop().maskBits = §§pop();
                                                               §§goto(addr376);
                                                            }
                                                            §§goto(addr623);
                                                         }
                                                         §§goto(addr626);
                                                      }
                                                      §§pop().SetRestitution(§§pop());
                                                      §§goto(addr477);
                                                   }
                                                }
                                                §§goto(addr359);
                                             }
                                             §§goto(addr477);
                                          }
                                          §§goto(addr359);
                                       }
                                       §§goto(addr245);
                                    }
                                    §§goto(addr239);
                                 }
                                 else
                                 {
                                    §§push(this.§2S§);
                                    if(!(_loc16_ && param3))
                                    {
                                       §§push(§2D§.§>!$§);
                                       if(!(_loc16_ && param2))
                                       {
                                          §§push(§§pop() == §§pop());
                                          if(!(_loc16_ && param1))
                                          {
                                             if(!§§pop())
                                             {
                                                if(!(_loc16_ && param2))
                                                {
                                                   §§pop();
                                                   if(!_loc16_)
                                                   {
                                                      addr304:
                                                      §§push(this.§2S§ == §2D§.§&W§);
                                                   }
                                                   §§goto(addr331);
                                                }
                                             }
                                          }
                                          if(§§pop())
                                          {
                                             addr318:
                                             this.§>!-§ = this.§5^§.CreateFixture2(this.§>!F§.shape.§7!;§(param10),this.§>!F§.§@!A§());
                                          }
                                          §§goto(addr331);
                                       }
                                    }
                                    §§goto(addr304);
                                 }
                              }
                           }
                           §§goto(addr304);
                        }
                        §§goto(addr318);
                     }
                     §§goto(addr331);
                  }
                  §§goto(addr304);
               }
               addr129:
               this.§&!E§ = this.§>!F§.§&!E§;
               if(_loc16_)
               {
                  continue;
               }
               this.§2S§ = this.§>!F§.§1!3§();
               this.§<p§ = new §`-§(this,param2,param4);
               §§push(this.§<p§);
               if(!(_loc16_ && param3))
               {
                  if(!§§pop().§`!4§(param1.§1! §.§0!§))
                  {
                     §§goto(addr74);
                     §§push(this.§<p§);
                  }
                  §§goto(addr43);
               }
               §§goto(addr74);
            }
         }
      }
      
      public static function §0x§(param1:int, param2:§7E§, param3:String = "") : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            if(param2 == null)
            {
               if(_loc6_ || §+>§)
               {
                  §§goto(addr29);
               }
            }
            var _loc4_:String;
            §§push(_loc4_ = param2.§2K§[param1]);
            if(_loc6_)
            {
               if(§§pop().length > 0)
               {
                  if(!(_loc5_ && param2))
                  {
                     §§push(param3);
                     if(_loc6_)
                     {
                        if(§§pop().length <= 0)
                        {
                           if(!_loc5_)
                           {
                              §§push(param2.§7!F§);
                              if(_loc5_)
                              {
                              }
                              addr82:
                              param3 = §§pop();
                              if(!_loc5_)
                              {
                                 addr85:
                                 §@6§.§0+§(_loc4_,param3);
                              }
                              §§goto(addr89);
                           }
                           addr89:
                           return;
                        }
                        §§goto(addr85);
                     }
                     §§goto(addr82);
                     §§push(§§pop());
                  }
               }
               §§goto(addr85);
            }
            §§goto(addr82);
         }
         addr29:
      }
      
      public static function §,!%§(param1:Number) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(360);
         §§push(param1);
         if(_loc2_)
         {
            §§push(180);
            if(!(_loc3_ && _loc2_))
            {
               §§push(§§pop() * §§pop());
               if(_loc3_ && _loc2_)
               {
               }
               §§goto(addr53);
            }
            §§push(§§pop() % §§pop());
         }
         addr53:
         §§push(§§pop() / Math.PI);
         if(!_loc3_)
         {
            §§push(360);
         }
         §§push(§§pop() - §§pop());
         if(_loc2_)
         {
            return §§pop() % 360;
         }
      }
      
      public static function §78§(param1:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(360);
         §§push(param1);
         if(!(_loc3_ && _loc3_))
         {
            §§push(§§pop() % 360);
         }
         §§push(§§pop() - §§pop());
         if(!(_loc3_ && _loc3_))
         {
            §§push(§§pop() / (180 / Math.PI));
            if(_loc4_)
            {
               addr53:
               return Number(§§pop());
            }
         }
         §§goto(addr53);
      }
      
      public function get sprite() : Sprite
      {
         return this.§1-§;
      }
      
      public function get x() : Number
      {
         return this.§-Y§;
      }
      
      public function get y() : Number
      {
         return this.§%!;§;
      }
      
      public function get scale() : Number
      {
         return this.§,&§;
      }
      
      public function get front() : Boolean
      {
         return this.§implements§;
      }
      
      public function get §+j§() : Number
      {
         return this.§5^§.GetPosition().x;
      }
      
      public function get §42§() : Number
      {
         return this.§5^§.GetPosition().y;
      }
      
      public function get §&$§() : §9o§
      {
         return this.§>!F§;
      }
      
      public function get §@!!§() : Boolean
      {
         return this.§+f§ >= 0;
      }
      
      protected function get container() : §?!!§
      {
         return this.§%C§;
      }
      
      public function get §,4§() : Boolean
      {
         return this.§,u§;
      }
      
      public function set §,4§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            this.§,u§ = param1;
         }
      }
      
      public function set §9m§(param1:Boolean) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§3h§ = param1;
         }
      }
      
      public function get §'J§() : Boolean
      {
         return this.§,!E§;
      }
      
      public function set §'J§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§,!E§ = param1;
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
      
      public function §&b§(param1:b2FilterData) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(this.§>!-§);
            if(_loc2_)
            {
               if(§§pop())
               {
                  if(!_loc3_)
                  {
                     addr27:
                     this.§>!-§.SetFilterData(param1);
                  }
               }
               return;
            }
         }
         §§goto(addr27);
      }
      
      protected function createBodyDefinition(param1:Number, param2:Number) : b2BodyDef
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2BodyDef = new b2BodyDef();
         §§push(_loc3_.position);
         loop0:
         while(true)
         {
            §§push(param1);
            addr103:
            while(true)
            {
               §§pop().x = §§pop();
               continue loop0;
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§#_§);
         if(!(_loc2_ && this))
         {
            if(§§pop())
            {
               while(true)
               {
                  §§push(this.§#_§);
                  addr125:
                  while(true)
                  {
                     §§pop().DestroyBody(this.§>b§());
                     addr128:
                     while(true)
                     {
                        this.§#_§ = null;
                        addr112:
                        while(true)
                        {
                        }
                     }
                  }
               }
               addr123:
            }
            while(true)
            {
               this.§<p§.dispose();
               if(_loc1_ || _loc1_)
               {
                  §§push(this.§1-§);
                  if(!(_loc2_ && this))
                  {
                     if(§§pop())
                     {
                        if(_loc2_)
                        {
                           continue;
                        }
                        addr84:
                        this.§1-§.dispose();
                        this.§1-§ = null;
                        loop5:
                        while(true)
                        {
                           if(_loc1_)
                           {
                              while(true)
                              {
                                 this.§>!-§ = null;
                                 while(true)
                                 {
                                    if(_loc1_ || this)
                                    {
                                       this.§96§ = null;
                                       do
                                       {
                                          this.§>!F§ = null;
                                       }
                                       while(!_loc1_);
                                       
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          return;
                                       }
                                       continue;
                                    }
                                    continue loop5;
                                 }
                                 continue loop5;
                              }
                              addr40:
                           }
                           §§goto(addr123);
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr40);
                  }
                  §§goto(addr84);
               }
               §§goto(addr128);
            }
         }
         §§goto(addr125);
      }
      
      public function §9F§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§>b§());
            §§push(360);
            §§push(param1);
            if(_loc2_)
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
      
      public function §^k§() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(360);
         §§push(this.§>b§().GetAngle());
         if(!(_loc1_ && this))
         {
            §§push(180);
            if(!(_loc1_ && _loc1_))
            {
               §§push(§§pop() * §§pop());
               if(!_loc1_)
               {
                  §§goto(addr59);
               }
            }
            §§goto(addr64);
         }
         addr59:
         §§push(§§pop() / Math.PI);
         if(_loc2_)
         {
            addr64:
            §§push(§§pop() % 360);
         }
         §§push(§§pop() - §§pop());
         if(!(_loc1_ && _loc1_))
         {
            return §§pop() % 360;
         }
      }
      
      public function §5x§(param1:b2Vec2, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            this.§>b§().SetLinearVelocity(param1);
            loop0:
            while(true)
            {
               §§push(param2);
               loop1:
               while(true)
               {
                  if(§§pop())
                  {
                     if(!_loc4_)
                     {
                        this.§;^§();
                     }
                     while(!_loc4_)
                     {
                        continue loop1;
                        if(!_loc4_)
                        {
                           this.§[i§();
                        }
                        if(_loc5_)
                        {
                           addr35:
                           return;
                           addr65:
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr65);
      }
      
      public function isInCoordinates(param1:Number, param2:Number) : Boolean
      {
         return this.§>!-§.TestPoint(new b2Vec2(param1,param2));
      }
      
      public function isInsideRectangle(param1:Number, param2:Number, param3:Number, param4:Number) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            §§push(this.§>b§());
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
                                       §§push(this.§>b§());
                                       loop8:
                                       while(!_loc5_)
                                       {
                                          §§push(§§pop().GetPosition());
                                          loop9:
                                          while(!(_loc5_ && param1))
                                          {
                                             §§push(§§pop().x);
                                             loop10:
                                             while(!_loc5_)
                                             {
                                                §§push(param4);
                                                while(!(_loc5_ && param2))
                                                {
                                                   §§push(§§pop() <= §§pop());
                                                   if(_loc6_)
                                                   {
                                                      while(true)
                                                      {
                                                         §§push(§§pop());
                                                         loop21:
                                                         while(true)
                                                         {
                                                            if(!(_loc5_ && this))
                                                            {
                                                               if(§§pop())
                                                               {
                                                                  addr153:
                                                                  loop12:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr154:
                                                                     while(_loc6_)
                                                                     {
                                                                        §§push(this.§>b§());
                                                                        loop14:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().GetPosition());
                                                                           addr90:
                                                                           addr105:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop().y);
                                                                              addr91:
                                                                              while(true)
                                                                              {
                                                                                 §§push(param1);
                                                                                 addr92:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() >= §§pop());
                                                                                    addr93:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc5_)
                                                                                       {
                                                                                          continue loop6;
                                                                                       }
                                                                                    }
                                                                                    continue loop12;
                                                                                 }
                                                                              }
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§>b§());
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop14;
                                                                              }
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              §§push(§§pop().GetPosition());
                                                                              if(!(_loc5_ && param3))
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 §§push(§§pop().y);
                                                                                 if(!(_loc5_ && param2))
                                                                                 {
                                                                                    if(!(_loc6_ || param3))
                                                                                    {
                                                                                       continue loop10;
                                                                                    }
                                                                                    §§push(param2);
                                                                                    if(!_loc5_)
                                                                                    {
                                                                                       §§goto(addr60);
                                                                                    }
                                                                                    §§goto(addr92);
                                                                                    continue loop10;
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr90);
                                                                              }
                                                                              §§goto(addr91);
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop7;
                                                                  }
                                                                  addr153:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue loop21;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     §§pop();
                                                                     if(!_loc5_)
                                                                     {
                                                                        §§goto(addr105);
                                                                     }
                                                                     §§goto(addr154);
                                                                  }
                                                                  §§goto(addr153);
                                                               }
                                                               §§goto(addr82);
                                                            }
                                                            continue loop5;
                                                         }
                                                      }
                                                      addr143:
                                                   }
                                                   §§goto(addr153);
                                                   if(!(_loc5_ && param2))
                                                   {
                                                      §§push(§§pop() <= §§pop());
                                                      if(_loc6_)
                                                      {
                                                         if(_loc5_)
                                                         {
                                                            continue loop4;
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr93);
                                                      }
                                                   }
                                                   continue;
                                                   addr82:
                                                   return §§pop();
                                                }
                                                continue loop3;
                                             }
                                             continue loop2;
                                          }
                                          continue loop1;
                                       }
                                       continue loop0;
                                    }
                                 }
                              }
                              §§goto(addr143);
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr105);
      }
      
      public function §03§(param1:b2Vec2) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            this.§96§ = param1;
         }
      }
      
      public function §"!D§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            if(this.§96§)
            {
               if(!_loc1_)
               {
                  this.§5x§(this.§96§,false);
                  do
                  {
                     this.§96§ = null;
                  }
                  while(!_loc2_);
                  
                  addr56:
               }
               §§goto(addr56);
            }
            return;
         }
         §§goto(addr56);
      }
      
      public function §;^§(param1:b2Vec2 = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(!param1)
            {
               if(_loc2_ || param1)
               {
                  §§push(this.§>b§());
                  if(!_loc3_)
                  {
                     param1 = §§pop().GetLinearVelocity();
                     addr34:
                     §§push(param1.x);
                     if(!_loc3_)
                     {
                        §§push(0);
                        if(_loc2_)
                        {
                           §§push(§§pop() == §§pop());
                           if(_loc2_ || this)
                           {
                              if(§§pop())
                              {
                                 if(!_loc3_)
                                 {
                                    §§pop();
                                    §§goto(addr120);
                                 }
                              }
                           }
                           if(§§pop())
                           {
                              if(_loc3_ && _loc3_)
                              {
                              }
                           }
                           else
                           {
                              §§push(this.§>b§());
                              if(_loc2_)
                              {
                                 §§pop().SetAngularVelocity(Math.atan2(param1.x,param1.y));
                                 if(_loc2_ || param1)
                                 {
                                 }
                              }
                           }
                           §§goto(addr120);
                        }
                     }
                     §§goto(addr111);
                  }
               }
               §§goto(addr120);
            }
            §§goto(addr34);
         }
         addr120:
         if(!(_loc3_ && param1))
         {
            addr111:
            §§push(param1.y == 0);
         }
         this.§>b§().SetAngularVelocity(0);
      }
      
      public function §[i§(param1:b2Vec2 = null) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            if(!param1)
            {
               param1 = this.§>b§().GetLinearVelocity();
               addr35:
            }
            §§push(Math.atan2(-param1.y,param1.x) * (180 / Math.PI));
            if(!_loc4_)
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            if(_loc3_ || this)
            {
               this.§9F§(_loc2_);
            }
            return;
         }
         §§goto(addr35);
      }
      
      public function §1z§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            this.§>b§().SetAngularVelocity(param1);
         }
      }
      
      public function §>b§() : b2Body
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§>!-§);
            if(!(_loc1_ && _loc1_))
            {
               if(§§pop() != null)
               {
                  if(!_loc1_)
                  {
                     §§goto(addr49);
                  }
               }
               return null;
            }
            §§goto(addr49);
         }
         addr49:
         return this.§>!-§.GetBody();
      }
      
      public function §>f§(param1:Number = -9999, param2:Number = -9999) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            if(param1 != -9999)
            {
               while(true)
               {
                  this.§-Y§ = param1;
                  addr117:
                  while(true)
                  {
                     this.§%!;§ = param2;
                     addr110:
                     while(true)
                     {
                     }
                  }
               }
               addr114:
            }
            loop3:
            while(true)
            {
               §§push(this.§>b§());
               addr92:
               loop4:
               while(true)
               {
                  §§push(§§pop().GetPosition());
                  addr93:
                  while(true)
                  {
                     §§push(this.§-Y§);
                     if(_loc4_)
                     {
                        §§push(§2^§.§,]§);
                        while(true)
                        {
                           §§push(§§pop() * §§pop());
                        }
                        addr99:
                     }
                     addr100:
                     while(true)
                     {
                        §§pop().x = §§pop();
                        addr101:
                        while(_loc4_)
                        {
                           if(_loc4_)
                           {
                              continue loop4;
                           }
                           §§goto(addr114);
                        }
                        continue loop3;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§push(this.§>b§());
            if(_loc4_ || _loc3_)
            {
               §§push(§§pop().GetPosition());
               if(_loc4_)
               {
                  §§push(this.§%!;§);
                  if(_loc4_ || param1)
                  {
                     §§push(§2^§.§,]§);
                     if(_loc4_)
                     {
                        addr61:
                        §§push(§§pop() * §§pop());
                        if(!_loc3_)
                        {
                           §§pop().y = §§pop();
                           if(!(_loc3_ && param1))
                           {
                              if(!(_loc3_ && this))
                              {
                                 break;
                              }
                              §§goto(addr117);
                           }
                           §§goto(addr101);
                        }
                        §§goto(addr100);
                     }
                     §§goto(addr99);
                  }
                  §§goto(addr61);
               }
               §§goto(addr93);
            }
            §§goto(addr92);
         }
      }
      
      public function §%1§(param1:Number, param2:Number) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:Number = NaN;
         var _loc3_:* = false;
         if(!_loc6_)
         {
            §§push(this.§%w§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  §§push(true);
                  while(true)
                  {
                     _loc3_ = §§pop();
                     addr345:
                     while(true)
                     {
                        this.§%w§ = false;
                     }
                  }
                  addr344:
               }
               while(true)
               {
                  §§push(this.updateSpecialAnimation(param2));
                  loop3:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(_loc5_)
                        {
                           _loc3_ = true;
                           while(true)
                           {
                           }
                        }
                        §§goto(addr345);
                        addr330:
                     }
                     while(true)
                     {
                        §§push(this.updateFlyingFrameAnimations(param2));
                        loop7:
                        while(true)
                        {
                           if(§§pop())
                           {
                              §§push(true);
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 addr324:
                                 while(true)
                                 {
                                 }
                              }
                              addr323:
                           }
                           while(true)
                           {
                              if(this.updateScreamingFrameAnimations(param2))
                              {
                                 continue loop0;
                              }
                              addr282:
                              if(this.updateBlinkingFrameAnimations(param2))
                              {
                                 §§push(true);
                                 if(_loc6_)
                                 {
                                    continue loop7;
                                 }
                                 _loc3_ = §§pop();
                              }
                              §§push(_loc3_);
                              if(_loc6_ && param2)
                              {
                                 break;
                              }
                              if(§§pop())
                              {
                                 §§push(this.§<p§);
                                 loop11:
                                 while(true)
                                 {
                                    §§pop().§;&§();
                                    loop12:
                                    while(!(_loc6_ && param1))
                                    {
                                       while(true)
                                       {
                                          §§push(this.§"G§);
                                          loop14:
                                          while(true)
                                          {
                                             §§push(§§pop() > 1);
                                             if(_loc5_)
                                             {
                                                if(§§pop())
                                                {
                                                   §§pop();
                                                   while(true)
                                                   {
                                                      §§push(this.§<p§);
                                                      addr198:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop().§<o§));
                                                         addr200:
                                                         while(true)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               §§goto(addr323);
                                                            }
                                                         }
                                                      }
                                                      addr124:
                                                      this.§>[§(param1);
                                                      if(!(_loc5_ || _loc3_))
                                                      {
                                                         continue;
                                                      }
                                                      loop25:
                                                      while(true)
                                                      {
                                                         §§push(this.§1-§);
                                                         loop26:
                                                         while(true)
                                                         {
                                                            §§pop().x = Math.round(this.§-Y§);
                                                            if(!_loc6_)
                                                            {
                                                               §§push(this.§1-§);
                                                               loop27:
                                                               while(_loc5_)
                                                               {
                                                                  §§pop().y = Math.round(this.§%!;§);
                                                                  while(true)
                                                                  {
                                                                     if(!(_loc6_ && param2))
                                                                     {
                                                                        if(_loc5_ || this)
                                                                        {
                                                                           §§push(this.§1-§);
                                                                           if(_loc6_ && this)
                                                                           {
                                                                              continue loop27;
                                                                           }
                                                                           §§goto(addr37);
                                                                           continue loop27;
                                                                        }
                                                                        loop29:
                                                                        while(_loc6_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              this.§-Y§ = this.§<@§;
                                                                              continue loop29;
                                                                           }
                                                                        }
                                                                        if(!_loc6_)
                                                                        {
                                                                           this.§%!;§ = this.§4T§;
                                                                           break;
                                                                        }
                                                                        §§goto(addr334);
                                                                     }
                                                                     §§push(this.§]!=§);
                                                                     addr37:
                                                                     break;
                                                                     if(_loc5_ || param2)
                                                                     {
                                                                        §§push(§§pop() / 180);
                                                                        if(_loc5_)
                                                                        {
                                                                           §§push(§§pop() * Math.PI);
                                                                        }
                                                                     }
                                                                     §§pop().rotation = §§pop();
                                                                     if(_loc5_)
                                                                     {
                                                                        return;
                                                                     }
                                                                  }
                                                                  if(_loc6_)
                                                                  {
                                                                     break loop26;
                                                                  }
                                                                  continue loop25;
                                                               }
                                                               continue;
                                                            }
                                                            addr187:
                                                            addr249:
                                                            while(_loc5_ || this)
                                                            {
                                                               §§push(this.§<p§);
                                                               continue loop11;
                                                            }
                                                            loop19:
                                                            while(true)
                                                            {
                                                               §§push(this.§<p§);
                                                               while(_loc5_)
                                                               {
                                                                  §§pop().§<o§.blurX = _loc4_;
                                                                  continue loop19;
                                                                  if(_loc6_ && _loc3_)
                                                                  {
                                                                     continue;
                                                                  }
                                                                  §§pop().§24§(param2);
                                                                  §§push(§"!B§);
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        this.§]!=§ = this.§&#§;
                                                                        §§goto(addr118);
                                                                     }
                                                                     §§goto(addr124);
                                                                  }
                                                                  §§goto(addr200);
                                                               }
                                                               §§goto(addr198);
                                                            }
                                                         }
                                                         addr178:
                                                         loop23:
                                                         while(true)
                                                         {
                                                            addr135:
                                                            while(true)
                                                            {
                                                               §§push(this.§<p§);
                                                               if(_loc6_ && param1)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               §§goto(addr145);
                                                               continue loop23;
                                                            }
                                                            §§goto(addr200);
                                                         }
                                                      }
                                                   }
                                                }
                                                while(true)
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(!_loc5_)
                                                      {
                                                         continue loop12;
                                                      }
                                                      if(_loc5_)
                                                      {
                                                         §§push(4);
                                                         §§push(this.§<p§.§<o§.blurX - 4);
                                                         if(!(_loc6_ && this))
                                                         {
                                                            §§push(param2);
                                                            if(!(_loc6_ && this))
                                                            {
                                                               §§push(§§pop() / 20);
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc6_)
                                                            {
                                                               continue loop14;
                                                            }
                                                         }
                                                         §§push(§§pop() % 28);
                                                         continue loop14;
                                                      }
                                                      §§goto(addr330);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr135);
                                                   }
                                                }
                                                continue;
                                             }
                                             §§goto(addr344);
                                             §§goto(addr345);
                                          }
                                       }
                                    }
                                    §§goto(addr324);
                                 }
                              }
                              §§goto(addr250);
                           }
                           continue loop3;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr345);
      }
      
      public function §,F§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(this.§>b§().GetPosition().x);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc1_:* = §§pop();
         §§push(this.§>b§().GetPosition().y);
         if(!_loc4_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         this.§-i§ = this.§&#§;
         while(true)
         {
            this.§+!3§ = this.§<@§;
            this.§%N§ = this.§4T§;
            §§push(this);
            §§push(this.§>b§().GetAngle());
            if(!_loc4_)
            {
               §§push(180);
               if(_loc3_ || _loc3_)
               {
                  §§push(§§pop() * (§§pop() / Math.PI));
                  if(_loc3_ || _loc3_)
                  {
                     addr106:
                     §§push(§§pop() % 360);
                  }
                  §§pop().§&#§ = §§pop();
                  while(_loc3_)
                  {
                     §§push(this);
                     §§push(_loc1_);
                     if(!_loc4_)
                     {
                        §§push(§§pop() / §2^§.§,]§);
                     }
                     §§pop().§<@§ = §§pop();
                     if(_loc3_)
                     {
                        §§push(this);
                        §§push(_loc2_);
                        if(_loc3_)
                        {
                           §§push(§§pop() / §2^§.§,]§);
                        }
                        §§pop().§4T§ = §§pop();
                        return;
                     }
                  }
                  continue;
               }
            }
            §§goto(addr106);
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
      
      public function §>[§(param1:Number, param2:Number = -1) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(param1 > 1e-9)
         {
            while(true)
            {
               §§push(§3f§);
               §§push("WARNING: LevelObject->interpolateRenderer() should not have positive timeLeft value = ");
               if(!_loc3_)
               {
                  §§push(§§pop() + param1);
                  if(!_loc3_)
                  {
                     §§push(§§pop() + " overriding to 0");
                  }
               }
               §§pop().log(§§pop());
               addr394:
               if(!(_loc4_ || param1))
               {
                  continue;
               }
               §§goto(addr18);
            }
         }
         while(true)
         {
            §§push(param2);
            §§push(0);
            while(true)
            {
               if(§§pop() < §§pop())
               {
                  §§push(this.§%C§.§1! §.§[f§.§%Q§);
                  loop3:
                  while(true)
                  {
                     §§push(1000);
                     addr757:
                     addr725:
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                        addr758:
                        while(true)
                        {
                           param2 = §§pop();
                        }
                     }
                     loop7:
                     while(true)
                     {
                        §§push(§§pop() * -1);
                        if(!(_loc4_ || param2))
                        {
                           continue loop3;
                        }
                        param1 = §§pop();
                        §§push(this.§<@§);
                        while(true)
                        {
                           §§push(this.§+!3§);
                           loop9:
                           while(true)
                           {
                              §§push(§§pop() == §§pop());
                              while(true)
                              {
                                 if(§§pop() || param1 == 0)
                                 {
                                    while(true)
                                    {
                                       this.§^d§ = 0;
                                       addr712:
                                       while(true)
                                       {
                                          this.§-Y§ = this.§<@§;
                                       }
                                    }
                                    addr709:
                                 }
                                 else
                                 {
                                    §§push(this);
                                    §§push(param1);
                                    if(!(_loc3_ && param1))
                                    {
                                       §§push(this.§+!3§);
                                       if(!_loc3_)
                                       {
                                          §§push(§§pop() - this.§<@§);
                                          if(_loc4_)
                                          {
                                             addr695:
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc3_ && param1))
                                             {
                                                §§push(param2);
                                             }
                                             §§pop().§^d§ = §§pop();
                                             §§push(this);
                                             §§push(this.§<@§);
                                             if(_loc4_ || this)
                                             {
                                                §§push(§§pop() + this.§^d§);
                                             }
                                             §§pop().§-Y§ = §§pop();
                                             while(true)
                                             {
                                                §§push(this.§4T§);
                                                while(true)
                                                {
                                                   §§push(this.§%N§);
                                                   if(!_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop() == §§pop());
                                                   if(!(§§pop() == §§pop()))
                                                   {
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         §§push(param1);
                                                         while(true)
                                                         {
                                                            if(_loc4_ || this)
                                                            {
                                                               §§push(0);
                                                               loop15:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  addr630:
                                                                  while(true)
                                                                  {
                                                                     loop17:
                                                                     while(true)
                                                                     {
                                                                        if(§§pop())
                                                                        {
                                                                           this.§+p§ = 0;
                                                                           while(true)
                                                                           {
                                                                              this.§%!;§ = this.§4T§;
                                                                              while(!(_loc3_ && _loc3_))
                                                                              {
                                                                                 loop20:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§&#§);
                                                                                    §§push(this.§-i§);
                                                                                    addr531:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() == §§pop());
                                                                                       if(!(_loc4_ || param1))
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          continue loop17;
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          if(!§§pop())
                                                                                          {
                                                                                             §§push(this.§-i§);
                                                                                             continue loop7;
                                                                                          }
                                                                                          this.§]!=§ = this.§&#§;
                                                                                          addr18:
                                                                                          return;
                                                                                          addr518:
                                                                                       }
                                                                                    }
                                                                                    addr567:
                                                                                    while(true)
                                                                                    {
                                                                                       continue loop20;
                                                                                    }
                                                                                 }
                                                                                 if(_loc3_ && _loc3_)
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr394);
                                                                              }
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§push(this);
                                                                           §§push(param1);
                                                                           if(!(_loc3_ && _loc3_))
                                                                           {
                                                                              §§push(this.§%N§);
                                                                              if(!(_loc3_ && param2))
                                                                              {
                                                                                 §§push(§§pop() - this.§4T§);
                                                                                 if(_loc4_ || param1)
                                                                                 {
                                                                                    addr604:
                                                                                    addr599:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       §§push(param2);
                                                                                    }
                                                                                    §§pop().§+p§ = §§pop();
                                                                                    §§push(this);
                                                                                    §§push(this.§4T§);
                                                                                    if(!(_loc3_ && param1))
                                                                                    {
                                                                                       §§push(§§pop() + this.§+p§);
                                                                                    }
                                                                                    §§pop().§%!;§ = §§pop();
                                                                                    §§goto(addr567);
                                                                                 }
                                                                                 §§goto(addr604);
                                                                                 §§push(§§pop() / §§pop());
                                                                              }
                                                                              §§goto(addr599);
                                                                           }
                                                                           §§goto(addr604);
                                                                        }
                                                                        §§goto(addr526);
                                                                     }
                                                                     continue loop15;
                                                                  }
                                                               }
                                                            }
                                                            §§push(this.§&#§);
                                                            break;
                                                            if(_loc3_)
                                                            {
                                                               continue;
                                                            }
                                                            §§push(this.§-i§);
                                                            if(_loc4_)
                                                            {
                                                               addr181:
                                                               if(!(_loc3_ && _loc3_))
                                                               {
                                                                  §§goto(addr189);
                                                                  §§push(§§pop() - §§pop());
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() > §§pop());
                                                                  if(!(§§pop() > §§pop()))
                                                                  {
                                                                     §§goto(addr450);
                                                                  }
                                                                  §§goto(addr504);
                                                                  §§goto(addr181);
                                                               }
                                                               addr501:
                                                            }
                                                            §§goto(addr409);
                                                         }
                                                         §§goto(addr758);
                                                         if(_loc3_ && param1)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr63);
                                                      }
                                                   }
                                                   §§goto(addr630);
                                                }
                                                continue loop9;
                                                §§goto(addr712);
                                             }
                                             addr636:
                                          }
                                       }
                                       §§push(§§pop() / §§pop());
                                    }
                                    §§goto(addr695);
                                 }
                                 §§goto(addr636);
                              }
                           }
                           while(!(_loc3_ && _loc3_))
                           {
                              §§goto(addr442);
                              §§push(180);
                           }
                        }
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr725);
               }
            }
         }
      }
      
      public function get §#u§() : Point
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(!§"!B§)
            {
            }
         }
         return null;
      }
      
      public function §!!8§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§&!E§);
            if(!_loc1_)
            {
               §§push(§9o§.§%p§);
               if(!(_loc1_ && _loc1_))
               {
                  §§push(§§pop() == §§pop());
                  if(_loc2_ || this)
                  {
                     if(!§§pop())
                     {
                        if(!(_loc1_ && this))
                        {
                           §§pop();
                           addr74:
                           return this.§&!E§ == §9o§.§%k§;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr74);
      }
      
      public function §+,§() : Boolean
      {
         return this.§&!E§ == §9o§.§2!§;
      }
      
      public function §[d§() : Boolean
      {
         return this.§&!E§ == §9o§.§1!?§;
      }
      
      public function §8i§() : Boolean
      {
         return this.§&!E§ == §9o§.§%k§;
      }
      
      public function isTexture() : Boolean
      {
         return this.§&!E§ == §9o§.§51§;
      }
      
      public function isGround() : Boolean
      {
         return this.§&!E§ == §9o§.§[H§;
      }
      
      public function §"N§() : Boolean
      {
         return this.§&!E§ == §9o§.§'!<§;
      }
      
      public function §3!>§() : Boolean
      {
         return this.§&!E§ == §9o§.§>]§;
      }
      
      public function §^!;§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §§push(this.§57§);
            loop0:
            while(true)
            {
               §§push("MISC_EXPLOSIVE_TNT");
               addr92:
               while(true)
               {
                  §§push(§§pop() == §§pop());
                  if(!_loc1_)
                  {
                     if(§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc2_)
                              {
                                 if(_loc1_)
                                 {
                                    continue loop0;
                                 }
                                 §§push(true);
                              }
                              else
                              {
                                 addr25:
                                 §§push(false);
                                 if(_loc2_ || this)
                                 {
                                    break;
                                 }
                              }
                              while(_loc1_)
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              return §§pop();
                              addr85:
                           }
                           §§goto(addr25);
                        }
                        return §§pop();
                     }
                  }
                  §§goto(addr97);
               }
            }
            addr91:
         }
         while(true)
         {
            §§push(this.§57§);
            if(_loc2_ || this)
            {
               §§push("POWERUP_BOMB");
               if(!_loc1_)
               {
                  §§goto(addr70);
               }
               else
               {
                  §§goto(addr92);
               }
            }
            else
            {
               §§goto(addr91);
            }
            §§goto(addr92);
         }
      }
      
      public function §7I§() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §§push(Boolean(this.§+,§()));
            loop0:
            while(true)
            {
               §§push(§§pop());
               loop1:
               while(true)
               {
                  if(!§§pop())
                  {
                     loop2:
                     while(true)
                     {
                        §§pop();
                        loop3:
                        while(true)
                        {
                           §§push(this.§"N§());
                           loop4:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              addr101:
                              loop10:
                              while(true)
                              {
                                 §§push(this.§3!>§());
                                 if(!_loc2_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(_loc1_ || this)
                                 {
                                    if(_loc1_)
                                    {
                                       loop8:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!_loc2_)
                                          {
                                             if(!§§pop())
                                             {
                                                return §§pop();
                                             }
                                             while(true)
                                             {
                                                if(_loc1_)
                                                {
                                                   §§pop();
                                                   if(_loc1_)
                                                   {
                                                      if(!_loc2_)
                                                      {
                                                         continue;
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop10;
                                                }
                                                addr98:
                                                while(!_loc2_)
                                                {
                                                   §§pop();
                                                   continue loop10;
                                                }
                                                continue loop0;
                                             }
                                             continue loop10;
                                          }
                                          addr95:
                                          while(_loc1_)
                                          {
                                             if(!§§pop())
                                             {
                                             }
                                             continue loop8;
                                          }
                                          continue loop1;
                                          §§goto(addr98);
                                       }
                                       continue loop4;
                                    }
                                    continue loop2;
                                 }
                                 continue loop4;
                              }
                           }
                        }
                     }
                  }
                  while(true)
                  {
                     §§goto(addr95);
                  }
               }
            }
         }
         §§goto(addr101);
      }
      
      public function isReadyToBeRemoved(param1:Number) : Boolean
      {
         return false;
      }
      
      public function §8!E§() : Number
      {
         return Number(Math.sqrt(this.§>b§().GetLinearVelocity().x * this.§>b§().GetLinearVelocity().x + this.§>b§().GetLinearVelocity().y * this.§>b§().GetLinearVelocity().y));
      }
      
      public function applyDamage(param1:Number, param2:Boolean = true, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false) : Number
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         if(!_loc10_)
         {
            §§push(this.§[d§());
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  §§push(this.§%C§);
                  loop1:
                  for(; §§pop().§+#§(); §§push(this.§%C§),if(_loc10_)
                  {
                     continue;
                  },§§push(§§pop().§1! §),§§push(_loc8_),§§push(§^;§.§!2§),if(_loc9_ || param2)
                  {
                     §§push(this.§8!'§ > param1);
                     if(_loc9_)
                     {
                        if(§§pop())
                        {
                           if(!_loc10_)
                           {
                              addr300:
                              §§pop();
                              addr301:
                              §§push(param3);
                              if(!_loc9_)
                              {
                              }
                              addr305:
                              §§pop().addScore(§§pop(),§§pop(),§§pop(),this.§>b§().GetPosition().x,this.§>b§().GetPosition().y,§'b§.§+[§(this.§57§));
                              if(!_loc10_)
                              {
                                 §§goto(addr237);
                              }
                              §§goto(addr581);
                           }
                           §§push(Boolean(§§pop()));
                        }
                        §§goto(addr305);
                     }
                     §§goto(addr300);
                  },§§goto(addr301))
                  {
                     while(true)
                     {
                        §§push(this.§+f§);
                        loop3:
                        while(true)
                        {
                           §§push(0);
                           loop4:
                           while(true)
                           {
                              §§push(§§pop() < §§pop());
                              loop5:
                              while(true)
                              {
                                 §§push(§§pop());
                                 loop6:
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       while(true)
                                       {
                                          §§pop();
                                          addr589:
                                          while(true)
                                          {
                                             §§push(!param6);
                                          }
                                       }
                                       addr588:
                                    }
                                    while(true)
                                    {
                                       loop10:
                                       while(true)
                                       {
                                          if(!§§pop())
                                          {
                                             §§push(param1);
                                             if(!(_loc10_ && this))
                                             {
                                                §§push(this.§+f§);
                                                if(!(_loc10_ && this))
                                                {
                                                   if(§§pop() <= §§pop())
                                                   {
                                                      addr502:
                                                      §§push(param1);
                                                      §§push(this.§+f§);
                                                      if(_loc9_)
                                                      {
                                                         addr509:
                                                         if(§§pop() >= §§pop() / 2)
                                                         {
                                                            this.§;v§(§7E§.§,l§);
                                                            if(!_loc10_)
                                                            {
                                                               addr479:
                                                               §§push(Boolean(this.§!!8§()));
                                                               §§push(Boolean(this.§!!8§()));
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        §§goto(addr482);
                                                                     }
                                                                     addr481:
                                                                  }
                                                                  break;
                                                                  §§goto(addr479);
                                                               }
                                                               addr461:
                                                               if(§§pop())
                                                               {
                                                                  addr462:
                                                                  §§push(this);
                                                                  §§push(this.§[!3§);
                                                                  if(_loc9_ || param2)
                                                                  {
                                                                     §§push(§§pop() - 1);
                                                                  }
                                                                  §§pop().§8!'§ = §§pop();
                                                               }
                                                               §§push(this.§8!'§);
                                                               if(!_loc10_)
                                                               {
                                                                  return §§pop();
                                                               }
                                                               addr604:
                                                               return §§pop();
                                                               addr480:
                                                            }
                                                            addr546:
                                                            §§goto(addr517);
                                                         }
                                                         §§goto(addr479);
                                                      }
                                                      §§goto(addr509);
                                                   }
                                                   else
                                                   {
                                                      §§push(param1);
                                                      while(true)
                                                      {
                                                         if(!(_loc10_ && param1))
                                                         {
                                                            §§push(this.§+f§);
                                                            if(_loc9_)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  if(!_loc10_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        param1 = §§pop();
                                                                        if(_loc9_ || this)
                                                                        {
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(param2);
                                                                                 if(!(_loc9_ || this))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 continue loop10;
                                                                              }
                                                                              §§goto(addr461);
                                                                              addr435:
                                                                           }
                                                                           else
                                                                           {
                                                                              addr602:
                                                                              §§push(this.§8!'§);
                                                                           }
                                                                           §§goto(addr604);
                                                                        }
                                                                        break;
                                                                        loop24:
                                                                        while(!(_loc10_ && param2))
                                                                        {
                                                                           §§push(1);
                                                                           while(_loc9_ || param1)
                                                                           {
                                                                              §§push(§§pop() < §§pop());
                                                                              loop26:
                                                                              while(true)
                                                                              {
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    §§push(§§pop());
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       if(_loc10_ && param1)
                                                                                       {
                                                                                          continue loop6;
                                                                                       }
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          while(§§pop())
                                                                                          {
                                                                                             if(_loc9_ || this)
                                                                                             {
                                                                                                this.§8!'§ = 1;
                                                                                                break;
                                                                                             }
                                                                                             addr239:
                                                                                             loop28:
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc9_ || this)
                                                                                                {
                                                                                                   §§push(this.§!!8§());
                                                                                                   if(_loc10_)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   if(_loc9_ || param1)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         continue loop26;
                                                                                                      }
                                                                                                      addr208:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop();
                                                                                                         continue loop28;
                                                                                                      }
                                                                                                   }
                                                                                                   addr216:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr502);
                                                                                                }
                                                                                                §§goto(addr479);
                                                                                             }
                                                                                             while(!(_loc10_ && this))
                                                                                             {
                                                                                                §§push(Boolean(§§pop()));
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   continue loop0;
                                                                                                }
                                                                                                addr260:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop();
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      break loop1;
                                                                                                   }
                                                                                                   §§push(this.§3h§);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Boolean(§§pop()));
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         break loop26;
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop())
                                                                                                         {
                                                                                                            addr225:
                                                                                                            while(true)
                                                                                                            {
                                                                                                            }
                                                                                                            addr225:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr226:
                                                                                                            §§push(this);
                                                                                                            §§push(this.§8!'§);
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               §§push(§§pop() - param1);
                                                                                                            }
                                                                                                            §§pop().§8!'§ = §§pop();
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               while(!(_loc10_ && param1))
                                                                                                               {
                                                                                                                  §§push(int(Math.min(this.§8!'§,int(param1))));
                                                                                                                  loop17:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc7_ = §§pop();
                                                                                                                     addr372:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§2^§.§<A§.getValue());
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           continue loop17;
                                                                                                                        }
                                                                                                                        addr339:
                                                                                                                        _loc8_ = §§pop();
                                                                                                                        if(_loc10_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        continue loop1;
                                                                                                                     }
                                                                                                                     §§goto(addr589);
                                                                                                                  }
                                                                                                                  §§goto(addr226);
                                                                                                               }
                                                                                                               addr482:
                                                                                                               addr446:
                                                                                                               addr520:
                                                                                                               §§push(this.§8!'§);
                                                                                                               while(_loc9_)
                                                                                                               {
                                                                                                                  if(!(_loc9_ || this))
                                                                                                                  {
                                                                                                                     continue loop3;
                                                                                                                  }
                                                                                                                  §§push(this.§[!3§);
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() == §§pop());
                                                                                                                     break loop33;
                                                                                                                  }
                                                                                                                  §§goto(addr509);
                                                                                                               }
                                                                                                               return §§pop();
                                                                                                               addr356:
                                                                                                            }
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            continue loop24;
                                                                                                            §§goto(addr225);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr216);
                                                                                             }
                                                                                             §§goto(addr588);
                                                                                          }
                                                                                          §§push(this.§8!'§);
                                                                                          continue loop12;
                                                                                          addr163:
                                                                                       }
                                                                                       §§goto(addr208);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       while(_loc9_)
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§goto(addr260);
                                                                                          }
                                                                                       }
                                                                                       while(!(_loc10_ && this))
                                                                                       {
                                                                                          if(§§pop())
                                                                                          {
                                                                                             §§pop();
                                                                                             §§push(Boolean(this.§7I§()));
                                                                                             if(!(_loc10_ && this))
                                                                                             {
                                                                                                addr354:
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr239);
                                                                                                   }
                                                                                                   addr237:
                                                                                                }
                                                                                                §§goto(addr356);
                                                                                             }
                                                                                             §§goto(addr479);
                                                                                          }
                                                                                          §§goto(addr354);
                                                                                       }
                                                                                       §§goto(addr480);
                                                                                       addr393:
                                                                                       addr257:
                                                                                    }
                                                                                    §§goto(addr223);
                                                                                 }
                                                                                 §§goto(addr220);
                                                                              }
                                                                              continue loop5;
                                                                              if(!(_loc9_ || this))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!_loc10_)
                                                                              {
                                                                                 if(§§pop() >= §§pop())
                                                                                 {
                                                                                    this.§;v§(§7E§.§2c§);
                                                                                    this.addDamageParticles(this.§%C§.§1! §.particles,param1);
                                                                                    addr94:
                                                                                    if(_loc9_ || param1)
                                                                                    {
                                                                                       if(_loc9_ || param2)
                                                                                       {
                                                                                          if(_loc9_ || param3)
                                                                                          {
                                                                                             if(_loc9_ || param2)
                                                                                             {
                                                                                                addr38:
                                                                                                this.§<p§.setDamagedFrame();
                                                                                                if(!(_loc9_ || param2))
                                                                                                {
                                                                                                   §§goto(addr94);
                                                                                                }
                                                                                                §§push(this.§8!'§);
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   if(_loc9_ || param1)
                                                                                                   {
                                                                                                      return §§pop();
                                                                                                   }
                                                                                                   continue loop24;
                                                                                                }
                                                                                                continue loop12;
                                                                                             }
                                                                                             §§goto(addr372);
                                                                                          }
                                                                                          addr133:
                                                                                          this.§8!'§ = 0;
                                                                                       }
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          if(!_loc10_)
                                                                                          {
                                                                                             §+>§.§0x§(§7E§.§&!2§,this.§>!F§.§@,§,"ChannelDestroyed");
                                                                                             §§goto(addr38);
                                                                                             addr104:
                                                                                          }
                                                                                          addr542:
                                                                                          this.§;v§(§7E§.§,l§);
                                                                                          §§goto(addr546);
                                                                                       }
                                                                                       §§goto(addr225);
                                                                                    }
                                                                                    §§goto(addr104);
                                                                                 }
                                                                                 §§goto(addr133);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr527:
                                                                                 if(_loc10_ && this)
                                                                                 {
                                                                                    break loop12;
                                                                                 }
                                                                                 if(!(_loc9_ || param2))
                                                                                 {
                                                                                    continue loop4;
                                                                                 }
                                                                                 if(§§pop() > §§pop())
                                                                                 {
                                                                                    §§goto(addr542);
                                                                                 }
                                                                              }
                                                                              §§goto(addr517);
                                                                           }
                                                                           if(§§pop() <= §§pop())
                                                                           {
                                                                              §§goto(addr527);
                                                                              §§push(param1);
                                                                              §§push(3);
                                                                           }
                                                                           this.§;v§(§7E§.§2c§);
                                                                           §§goto(addr517);
                                                                        }
                                                                     }
                                                                     §§goto(addr462);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr517);
                                                                  }
                                                               }
                                                               §§goto(addr517);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr457);
                                                            }
                                                         }
                                                         break;
                                                         if(_loc10_ && param1)
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr122);
                                                      }
                                                   }
                                                   §§goto(addr446);
                                                }
                                                §§goto(addr509);
                                             }
                                             break;
                                          }
                                          addr517:
                                          if(param1 <= 30)
                                          {
                                             §§push(param1);
                                             break;
                                          }
                                          this.§;v§(§7E§.§&!2§);
                                          §§push(this.§8!'§);
                                          §§goto(addr520);
                                       }
                                       §§goto(addr552);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  return this.§8!'§;
               }
               §§goto(addr602);
            }
         }
         §§goto(addr435);
      }
      
      public function §;v§(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            §+>§.§0x§(param1,this.§>!F§.§@,§);
         }
      }
      
      public function §]`§(param1:String) : Number
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(this.§>!F§.material.§2!&§(param1));
         if(!(_loc3_ && param1))
         {
            return §§pop() * this.§"G§;
         }
      }
      
      public function §8I§(param1:String) : Number
      {
         return this.§>!F§.material.§7N§(param1);
      }
      
      public function §&A§() : String
      {
         return this.§>!F§.material.mName;
      }
      
      public function §&!§() : Number
      {
         return this.§>!F§.§&! §();
      }
      
      public function §5w§() : int
      {
         return this.§>!F§.§#=§();
      }
      
      public function §#d§() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 30;
         if(!_loc3_)
         {
            §§push(Boolean(this.§>b§().IsAwake()));
            §§push(Boolean(this.§>b§().IsAwake()));
            loop0:
            while(§§pop())
            {
               §§pop();
               addr61:
               if(!(_loc3_ && this))
               {
                  if(!§§pop())
                  {
                     if(_loc2_ || _loc2_)
                     {
                        addr76:
                        if(!(_loc3_ && _loc2_))
                        {
                           if(_loc2_ || _loc1_)
                           {
                              §§pop();
                              if(!_loc3_)
                              {
                                 if(_loc3_)
                                 {
                                    while(true)
                                    {
                                       §§push(this.§!!8§());
                                       loop2:
                                       while(true)
                                       {
                                          §§push(Boolean(§§pop()));
                                          addr171:
                                          loop3:
                                          while(true)
                                          {
                                             §§push(§§pop());
                                             loop4:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   §§pop();
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§push(this.§8!'§ == this.§[!3§);
                                                      addr159:
                                                      while(true)
                                                      {
                                                         if(_loc2_ || _loc1_)
                                                         {
                                                            continue loop2;
                                                         }
                                                         continue loop5;
                                                      }
                                                      continue loop2;
                                                   }
                                                }
                                                while(true)
                                                {
                                                   addr139:
                                                   while(true)
                                                   {
                                                      §§push(§§pop());
                                                      loop8:
                                                      while(!(_loc3_ && _loc1_))
                                                      {
                                                         if(§§pop())
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               loop12:
                                                               while(true)
                                                               {
                                                                  if(!§§pop())
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                        addr129:
                                                                        loop14:
                                                                        while(_loc2_)
                                                                        {
                                                                           addr131:
                                                                           §§push(Math.abs(this.§>b§().GetLinearVelocity().y) > b2Settings.b2_linearSleepTolerance * _loc1_);
                                                                           if(!(_loc3_ && _loc2_))
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop());
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    continue loop12;
                                                                                 }
                                                                                 if(!_loc2_)
                                                                                 {
                                                                                    continue loop8;
                                                                                 }
                                                                                 §§goto(addr61);
                                                                              }
                                                                              continue loop3;
                                                                              addr55:
                                                                           }
                                                                           else
                                                                           {
                                                                              addr158:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§pop();
                                                                              break loop14;
                                                                              §§goto(addr131);
                                                                           }
                                                                        }
                                                                        §§goto(addr159);
                                                                     }
                                                                     addr128:
                                                                  }
                                                                  §§goto(addr55);
                                                               }
                                                               continue loop0;
                                                            }
                                                            addr125:
                                                         }
                                                         §§goto(addr158);
                                                      }
                                                      continue loop4;
                                                      §§goto(addr76);
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    addr182:
                                 }
                                 §§push(Math.abs(this.§>b§().GetAngularVelocity()) > b2Settings.b2_angularSleepTolerance * _loc1_);
                                 break;
                              }
                              §§goto(addr129);
                           }
                           §§goto(addr171);
                        }
                        §§goto(addr139);
                     }
                     §§goto(addr128);
                  }
                  break;
               }
            }
            return §§pop();
         }
         §§goto(addr182);
      }
      
      public function §2h§() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§>b§().IsAwake());
         if(!_loc1_)
         {
            return !§§pop();
         }
      }
      
      protected function isMoving() : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:int = 30;
         if(_loc2_)
         {
            §§push(Math.abs(this.§>b§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * _loc1_);
            §§push(Math.abs(this.§>b§().GetLinearVelocity().x) < b2Settings.b2_linearSleepTolerance * _loc1_);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  §§pop();
                  addr112:
                  while(true)
                  {
                     §§push(Math.abs(this.§>b§().GetLinearVelocity().y) < b2Settings.b2_linearSleepTolerance * _loc1_);
                  }
                  addr112:
               }
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(§§pop());
                     if(_loc2_)
                     {
                        if(§§pop())
                        {
                           while(true)
                           {
                              §§pop();
                              addr97:
                              do
                              {
                                 §§push(Math.abs(this.§>b§().GetAngularVelocity()) < b2Settings.b2_angularSleepTolerance * _loc1_);
                              }
                              while(!_loc3_);
                              
                              continue loop2;
                           }
                           addr96:
                        }
                        while(true)
                        {
                           if(§§pop())
                           {
                              if(_loc2_)
                              {
                                 §§push(true);
                                 break;
                              }
                              if(_loc2_)
                              {
                                 if(!_loc3_)
                                 {
                                    addr21:
                                    §§push(false);
                                    if(!(_loc2_ || _loc3_))
                                    {
                                       break;
                                    }
                                    if(!_loc3_)
                                    {
                                       return §§pop();
                                    }
                                    §§goto(addr96);
                                 }
                                 else
                                 {
                                    §§goto(addr112);
                                 }
                              }
                              §§goto(addr97);
                           }
                           §§goto(addr21);
                        }
                        return §§pop();
                     }
                     break;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr112);
      }
      
      public function § !9§(param1:Number = 3) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            this.§"G§ = param1;
         }
         while(this.§"G§ <= 1)
         {
            §§push(this.§<p§);
            if(!(_loc3_ && _loc2_))
            {
               §§pop().§<o§ = null;
               if(!_loc3_)
               {
                  if(!_loc2_)
                  {
                     break;
                  }
                  if(_loc3_)
                  {
                     continue;
                  }
                  §§goto(addr34);
                  continue;
               }
            }
            else
            {
               addr76:
               §§pop().§=O§();
            }
            return;
         }
         §§goto(addr76);
         §§push(this.§<p§);
      }
      
      public function §8@§(param1:Boolean) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = Number(0);
         if(this.§>!F§.§-7§() == §`!%§.§function§)
         {
            if(_loc4_)
            {
               §§push(this.§<p§.mW * this.§<p§.mH);
               loop0:
               while(true)
               {
                  §§push(§2^§.§,]§);
                  if(_loc4_)
                  {
                     §§push(§2^§.§,]§);
                     while(true)
                     {
                        §§push(§§pop() * §§pop());
                     }
                     addr180:
                  }
                  while(true)
                  {
                     §§push(§§pop() * §§pop());
                     loop3:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        addr183:
                        while(true)
                        {
                           _loc2_ = §§pop();
                        }
                        addr125:
                        if(!(_loc4_ || this))
                        {
                           continue;
                        }
                        _loc2_ = §§pop();
                        loop8:
                        while(true)
                        {
                           addr35:
                           while(true)
                           {
                              §§push(_loc2_);
                              if(!(_loc3_ && param1))
                              {
                                 if(_loc3_)
                                 {
                                    addr122:
                                    §§push(Number(§§pop()));
                                    while(true)
                                    {
                                       if(!_loc3_)
                                       {
                                          §§goto(addr125);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§push(this.§>!-§.GetDensity());
                                          }
                                          addr140:
                                       }
                                    }
                                    continue loop3;
                                    addr123:
                                 }
                                 §§push(this.§,&§);
                                 if(!(_loc3_ && _loc2_))
                                 {
                                    §§push(this.§,&§);
                                    if(_loc4_)
                                    {
                                       §§push(§§pop() * §§pop());
                                    }
                                    else
                                    {
                                       §§goto(addr180);
                                    }
                                 }
                                 if(_loc4_)
                                 {
                                    §§push(§§pop() / §§pop());
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       addr70:
                                       §§push(Number(§§pop()));
                                    }
                                    if(!(_loc3_ && param1))
                                    {
                                       continue loop8;
                                    }
                                    continue loop0;
                                 }
                                 while(true)
                                 {
                                    §§push(§§pop() / §§pop());
                                    addr144:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       continue loop0;
                                    }
                                 }
                              }
                              §§goto(addr70);
                           }
                        }
                     }
                  }
               }
            }
            while(true)
            {
               §§goto(addr21);
               §§goto(addr183);
            }
         }
         else
         {
            §§push(this.§>b§().GetMass());
         }
         §§goto(addr140);
      }
      
      public function §6,§() : Number
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:* = Number(1);
         if(_loc3_ || this)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               §§push(_loc1_);
               if(!_loc2_)
               {
                  §§push(2);
                  if(!(_loc2_ && _loc2_))
                  {
                     §§push(§§pop() / §§pop());
                     if(!_loc3_)
                     {
                     }
                     §§goto(addr76);
                  }
                  §§push(§§pop() / §§pop());
               }
               addr76:
               §§push(§§pop() * Math.min(10,this.§<p§.§-k§ - 1));
               if(!_loc2_)
               {
                  §§push(10);
               }
               §§push(§§pop() - §§pop());
               if(!_loc2_)
               {
                  §§push(Number(§§pop()));
                  if(!_loc2_)
                  {
                     addr82:
                     _loc1_ = §§pop();
                     return _loc1_;
                  }
               }
            }
         }
         §§goto(addr82);
      }
      
      public function §-!'§(param1:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(this.§>b§().GetLinearVelocity().x);
         if(!_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§>b§().GetLinearVelocity().y);
         if(!_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Number = Math.sqrt(_loc2_ * _loc2_ + _loc3_ * _loc3_);
         §§push(1);
         §§push(param1);
         if(!_loc7_)
         {
            §§push(§§pop() / _loc4_);
         }
         §§push(§§pop() + §§pop());
         if(!_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc6_)
         {
            §§push(_loc2_);
            if(_loc6_ || param1)
            {
               §§push(_loc5_);
               while(true)
               {
                  §§push(§§pop() * §§pop());
                  addr93:
                  §§push(_loc5_);
                  if(!(_loc6_ || param1))
                  {
                     continue;
                  }
                  §§push(§§pop() * §§pop());
                  if(_loc6_)
                  {
                     if(_loc6_)
                     {
                        addr117:
                        _loc3_ = Number(§§pop());
                        loop4:
                        while(!_loc7_)
                        {
                           while(true)
                           {
                              this.§>b§().SetLinearVelocity(new b2Vec2(_loc2_,_loc3_));
                              if(!_loc7_)
                              {
                                 break;
                              }
                              continue loop4;
                           }
                           return;
                        }
                        loop3:
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!_loc7_)
                           {
                              if(!(_loc7_ && _loc3_))
                              {
                                 §§goto(addr93);
                              }
                              while(true)
                              {
                                 _loc2_ = §§pop();
                                 continue loop3;
                              }
                              addr132:
                           }
                           §§goto(addr117);
                        }
                        continue;
                     }
                     while(true)
                     {
                        §§goto(addr132);
                     }
                     addr131:
                  }
                  §§goto(addr117);
               }
            }
            §§goto(addr131);
         }
         §§goto(addr120);
      }
      
      public function addTrail() : void
      {
      }
      
      public function update(param1:Number) : void
      {
      }
      
      public function activateSpecialPower(param1:§?!!§) : Boolean
      {
         return false;
      }
      
      public function addDestructionParticles(param1:§>=§) : void
      {
      }
      
      public function addDamageParticles(param1:§>=§, param2:int) : void
      {
      }
      
      public function explode() : Boolean
      {
         return false;
      }
      
      public function §'1§(param1:Number, param2:Point, param3:Number) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:b2Vec2 = this.§>b§().GetPosition();
         §§push(_loc4_);
         §§push(_loc4_.x);
         if(!(_loc5_ && param2))
         {
            §§push(param2.x * param1);
            if(!_loc5_)
            {
               §§push(§§pop() * param3);
            }
            §§push(§§pop() + §§pop());
         }
         §§pop().x = §§pop();
         if(!(_loc5_ && param2))
         {
            §§push(_loc4_);
            §§push(_loc4_.y);
            if(_loc6_ || param2)
            {
               §§push(param2.y * param1);
               if(!(_loc5_ && this))
               {
                  §§push(§§pop() * param3);
               }
               §§push(§§pop() + §§pop());
            }
            §§pop().y = §§pop();
            do
            {
               this.§>b§().SetPosition(_loc4_);
            }
            while(_loc5_);
            
         }
      }
      
      public function rotate(param1:Number, param2:Boolean = false) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         if(_loc6_ || param2)
         {
            if(param2)
            {
               _loc3_ = Number(this.§^k§());
               §§push(_loc3_);
               while(true)
               {
                  §§push(360);
                  if(!(_loc5_ && this))
                  {
                     §§push(§§pop() + §§pop());
                     §§push(360);
                  }
                  loop1:
                  while(true)
                  {
                     §§push(Number(§§pop() % §§pop()));
                     addr211:
                     while(true)
                     {
                        _loc3_ = §§pop();
                        §§push(Number(0));
                        addr195:
                        while(true)
                        {
                           _loc4_ = §§pop();
                           continue loop1;
                        }
                     }
                  }
                  §§push(Number(§§pop()));
                  if(!(_loc6_ || param2))
                  {
                     continue;
                  }
                  _loc3_ = §§pop();
                  §§goto(addr164);
               }
            }
            §§goto(addr33);
         }
         §§goto(addr164);
      }
      
      public function §23§(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(§,!%§(this.§>b§().GetAngle()));
         if(_loc4_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_);
            loop0:
            while(true)
            {
               §§push(param1);
               if(_loc4_ || this)
               {
                  §§push(360);
                  if(!(_loc3_ && _loc3_))
                  {
                     addr123:
                     §§push(§§pop() * §§pop());
                     if(_loc4_)
                     {
                        §§push(1000);
                     }
                     §§push(§§pop() - §§pop());
                     if(!_loc3_)
                     {
                        §§push(Number(§§pop()));
                     }
                     loop1:
                     while(true)
                     {
                        _loc2_ = §§pop();
                        while(true)
                        {
                           §§push(§78§(_loc2_));
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(Number(§§pop()));
                           }
                           if(!(_loc3_ && _loc2_))
                           {
                              if(!_loc4_)
                              {
                                 break;
                              }
                              _loc2_ = §§pop();
                              do
                              {
                                 this.§>b§().SetAngle(_loc2_);
                              }
                              while(!(_loc4_ || _loc3_));
                              
                              if(_loc4_ || this)
                              {
                                 return;
                                 addr67:
                              }
                              continue;
                           }
                           continue loop1;
                        }
                        continue loop0;
                     }
                  }
                  §§push(§§pop() / §§pop());
               }
               §§goto(addr123);
            }
         }
         §§goto(addr67);
      }
      
      public function §3`§(param1:Number, param2:Point) : void
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_)
         {
            this.rotate(param1);
         }
         var _loc3_:b2Vec2 = this.§>b§().GetPosition().Copy();
         §§push(_loc3_.x);
         if(!(_loc14_ && param1))
         {
            §§push(§§pop() - param2.x);
            if(_loc15_ || this)
            {
               addr47:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(_loc3_.y);
            if(_loc15_ || param1)
            {
               §§push(§§pop() - param2.y);
               if(_loc15_ || param1)
               {
                  addr68:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(!(_loc14_ && param1))
               {
                  §§push(_loc4_);
                  if(_loc15_ || _loc3_)
                  {
                     §§push(0);
                     if(!_loc14_)
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc15_)
                        {
                           if(§§pop())
                           {
                              if(_loc15_)
                              {
                                 §§pop();
                                 if(!_loc14_)
                                 {
                                    addr98:
                                    §§push(_loc5_);
                                    if(_loc15_)
                                    {
                                       addr103:
                                       if(§§pop() == 0)
                                       {
                                          if(_loc15_)
                                          {
                                             return;
                                          }
                                          addr107:
                                          §§push(Number(Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)));
                                       }
                                       §§goto(addr107);
                                    }
                                    var _loc6_:* = §§pop();
                                    §§push(_loc4_);
                                    if(_loc15_)
                                    {
                                       §§push(§§pop() / _loc5_);
                                       if(_loc15_)
                                       {
                                          addr135:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc7_:* = §§pop();
                                       §§push(Math.atan(_loc7_) * 180);
                                       if(!(_loc14_ && this))
                                       {
                                          §§push(§§pop() / Math.PI);
                                          if(!_loc14_)
                                          {
                                             addr154:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc8_:* = §§pop();
                                          if(_loc15_ || param1)
                                          {
                                             §§push(_loc5_);
                                             if(_loc15_)
                                             {
                                                §§push(0);
                                                if(!_loc14_)
                                                {
                                                   if(§§pop() < §§pop())
                                                   {
                                                      if(!(_loc14_ && param1))
                                                      {
                                                         addr179:
                                                         _loc8_ += 180;
                                                      }
                                                   }
                                                   addr183:
                                                   §§push(_loc8_);
                                                   §§push(param1);
                                                   if(_loc15_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc15_ || _loc3_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      §§push(§§pop());
                                                   }
                                                   var _loc9_:* = §§pop();
                                                   if(_loc15_)
                                                   {
                                                      §§push(§§pop() * Math.PI);
                                                      if(_loc15_ || this)
                                                      {
                                                         §§push(§§pop() / 180);
                                                         if(_loc15_)
                                                         {
                                                            addr213:
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
                                                         this.§>b§().SetPosition(_loc13_);
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr213);
                                                }
                                                §§goto(addr179);
                                             }
                                             §§goto(addr183);
                                          }
                                          §§goto(addr179);
                                       }
                                       §§goto(addr154);
                                    }
                                    §§goto(addr135);
                                 }
                                 §§goto(addr107);
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr103);
               }
               §§goto(addr98);
            }
            §§goto(addr68);
         }
         §§goto(addr47);
      }
   }
}
